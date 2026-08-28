create or replace package body TOLU_dashboard_pkg AS

    Function Total_active_employees
     return number
    IS
        v_count number;
    Begin 
        Select count(*) into v_count 
        from TOLU_employees
        where status = 'Active';

        Return v_count;
    End Total_active_employees;

    Function pending_leave_requests
     return number
    IS
        v_count number;
    Begin
        Select count(*) into v_count 
        from TOLU_leave_requests
        where status = 'Pending';

        return v_count;
    End pending_leave_requests;

    Function Total_payroll_cost_per_month
     return number
    IS
        v_total number;
    Begin
        Select SUM(gross_salary) into v_total
        From TOLU_payslips
        Where Lower(TRIM(payroll_month)) = Lower(TRIM(TO_CHAR(SYSDATE, 'Month')))
        And payroll_year = EXTRACT(YEAR FROM SYSDATE);

        Return v_total;
    
    Exception
        When NO_DATA_FOUND then
            Return 0;
            
    End Total_payroll_cost_per_month;

End TOLU_dashboard_pkg;
/