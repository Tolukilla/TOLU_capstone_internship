create or replace package body TOLU_payroll_pkg AS

    Function calculate_net_salary(
        p_basic IN number,
        p_transport IN number,
        p_housing IN number
    )Return number IS
        v_gross number;
        v_pension number;
    Begin
        v_gross := p_basic + p_transport + p_housing;
        v_pension := p_basic * 0.08;

        Return v_gross - v_pension;

    End calculate_net_salary;

    Procedure run_payroll(
        p_month IN varchar2,
        p_year IN number
    ) IS
        v_payroll number;
        v_payroll_run_id number;

        TYPE t_emp_id IS TABLE OF TOLU_employees.employee_id%type;
        TYPE t_basic IS TABLE OF TOLU_salary_structure.basic%type;
        TYPE t_housing IS TABLE OF TOLU_salary_structure.housing_allowance%type;
        TYPE t_transport IS TABLE OF TOLU_salary_structure.transport_allowance%type;
        TYPE t_amount IS TABLE OF number;

        v_emp_id t_emp_id;
        v_basic t_basic;
        v_housing t_housing;
        v_transport t_transport;

        v_gross t_amount := t_amount();
        v_pension t_amount := t_amount();
        v_net t_amount := t_amount();
    Begin
        Select count(*) into v_payroll
        From TOLU_payroll_runs
        where payroll_month = p_month
        And payroll_year = p_year;

        IF v_payroll > 0 then
        Raise_application_error(-20031, 'Payroll has already been run for this period.');
        END IF;

        Insert into TOLU_payroll_runs(Payroll_month, Payroll_year, Run_date) VALUES
        (p_month, p_year, sysdate) Returning payroll_id into v_payroll_run_id;

        IF v_payroll_run_id is null then
        Raise_application_error(-20055, 'v_payroll_id is not found');
        END IF;

        Select e.employee_id,
               s.basic,
               s.housing_allowance,
               s.transport_allowance 
               BULK COLLECT INTO
               v_emp_id,
               v_basic,
               v_housing,
               v_transport
               From TOLU_employees e
               JOIN TOLU_salary_structure s ON e.employee_id = s.employee_id
               Where e.status = 'Active';

            v_gross.EXTEND(v_emp_id.count);
            v_pension.EXTEND(v_emp_id.count);
            v_net.EXTEND(v_emp_id.count);

            For i IN 1 .. v_emp_id.count LOOP

                v_gross(i) := v_basic(i) + v_housing(i) + v_transport(i);

                v_pension(i) := v_basic(i) * 0.08;

                v_net(i) := calculate_net_salary(v_basic(i),
                                                 v_transport(i),
                                                 v_housing(i));
                     
            END LOOP;

            FORALL i IN 1 .. v_emp_id.count
                Insert into TOLU_payslips (
                    payroll_id,
                    employee_id,
                    payroll_month,
                    payroll_year,
                    Basic,
                    Housing_allowance,
                    Transport_allowance,
                    Gross_salary,
                    Pension,
                    Net_salary
                )VALUES (
                    v_payroll_run_id,
                    v_emp_id(i),
                    p_month,
                    p_year,
                    v_basic(i),
                    v_housing(i),
                    v_transport(i),
                    v_gross(i),
                    v_pension(i),
                    v_net(i)
                );
                Commit;

            Exception
            When others then
            rollback;
            raise;

        End run_payroll;

End TOLU_payroll_pkg;
/