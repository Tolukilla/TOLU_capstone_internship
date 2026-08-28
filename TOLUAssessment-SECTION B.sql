Create or replace procedure TOLU_adjust_leave_balance(                      --B1
    p_emp_id IN number,
    p_leave_type IN varchar2,
    p_days IN number
) IS 
    v_emp_count number;
    v_type_count number;
    v_leave_balance number;
    v_new_balance number;
    
    e_emp_not_found exception;
    e_invalid_leave_type exception;
    e_negative_balance exception;
    
Begin
    SAVEPOINT start_adjustment;
    
    Select count(*) into v_emp
    from TOLU_employees 
    where emp_id = p_emp_id;
    
    IF v_emp = 0 then
    Raise e_emp_not_found;
    END IF;
    
    Select count(*) into v_type
    from TOLU_employee_leave
    where UPPER(leave_type) = UPPER(p_leave_type);
    
    IF v_type = 0
    Raise_e_invalid_leave_type;
    END IF;
    
    Select balance into v_leave_balance
    from Tolu_employee_leave
    where emp_id = p_emp_id and leave_type = p_leave_type;
    
    v_new_balance := v_leave_balance - p_days;
    
    IF v_new_balance < 0 then
    Raise e_negative_balance
    END IF;
    
    Update TOLU_employee_leave SET balance = v_new_balance 
    where emp_id = p_emp_id and leave_type = p_leave_type;
    
    Commit;
    
    Exception
    When e_emp_not_found then
    Raise_application_error(-20001, 'Employee ID ' || p_emp_id || ' does not exist');
    Rollback to start_adjustment;
    
    When e_invalid_leave_type then
    Raise_application_error(-20002, 'Leave type ' || p_leave_type || ' is invalid');
    Rollback to start_adjustment;
    
    When e_negative_balance then
    Raise_application_error(-20003, 'Balance would be negative. Available_leave: ' || v_leave_balance || );
    Rollback to start_adjustment;
    
    When other then
    Rollback to start_adjustment;
    
    End TOLU_adjust_leave_balance;
    

Create or replace function TOLU_get_employee_summary(                       --B2
    p_emp_id in number
) return varchar2 is 
    v_emp TOLU_employee%ROWTYPE;
    v_dept TOLU_department%ROWTYPE;
    v_leave_balance number;
    v_summary varchar2(500);
Begin
    Select * into v_emp 
    from TOLU_employee
    where emp_id = p_emp_id;
    
    Select * into v_dept
    from TOLU_employee
    where dept_id = v_emp.dept_id;
    
    Select leave_balance into v_leave_balance
    from TOLU_leave_balance
    where emp_id = p_emp_id;
    
    v_summary := 'Name: ' || v_emp.first_name || ' ' || v_emp.last_name ||
            ', Department: ' || v_dept.dept_name || ', Leave balance: ' || v_emp.leave_balance;
            
    Return v_summary;
    Exception
    When no_data_found then
    Raise_application_error(-20001, 'Employee not found');
End TOLU_get_employee_summary;

Declare                                                                     --B3
    cursor c_TOLU_employee(p_dept_id number) is
    select emp_id 
    from TOLU_employee
    where dept_id = p_dept_id;
Begin
    For TOLU_emp IN c_TOLU_employee(101)
    LOOP
        Update TOLU_employee_leave 
        set annual_leave = annual_leave + 2
        where emp_id = TOLU_emp.emp_id;
    END LOOP;
    
    Commit;
End;

Declare 
    TYPE t_employee_ids is table of TOLU_employee.emp_id%type;
    v_employee_ids t_employee_ids;
Begin
    select * emp_id 
    BULK COLLECT
    into v_employee_ids from TOLU_employee
    where dept_id = 101;
    
    FORALL i IN 1..v_employee_ids.count
        update TOLU_employee_leave
        set annual_leave = annual_leave + 2
        where emp_id = v_employee_ids(i);
        
    Commit;
End;

Create or replace trigger TOLU_trg_audit_salary_change
after update of basic on salary_structure
for each row
Begin
    Insert into TOLU_salary_audit_log (Employee_id, Old_salary, New_salary, Timestamp) VALUES
    (:Old.employee_id, :Old.basic, :New.basic, Systimestamp);
End;

Create or replace procedure TOLU_request_leave(
    p_emp_id in number,
    p_days in number
) IS
    v_emp_count number;
    v_leave_balance number;
    
    e_empID_not_found exception;
    e_days_exceeds_available_balance exception;
Begin
    Select count(*) into v_emp_count
    from TOLU_employee
    where emp_id = p_emp_id;
    
    IF v_emp_count = 0 then
    Raise e_empID_not_found;
    END IF;
    
    Select balance into v_leave_balance
    from Tolu_employee_leave
    where emp_id = p_emp_id;
    
    IF v_leave_balance < p_days then
    Raise e_days_exceeds_available_balance;
    END IF; 
    
    Insert into TOLU_leave_requests(emp_id, days_requested, status)
    VALUES (p_emp_id, p_days, 'Pending');
    
    Exception
    When e_empID_not_found then
    Rollback;
    Raise_application_error('Employee not found. Emp_id: ' || p_emp_id);
    
    When e_days_exceeds_available_balance then
    Rollback;
    Raise_application_error(
    'Requested days exceeds available leave balance. Available balance: ' || v_leave_balance ||' ' ||
    'Requested day: ' || p_days);
    
End TOLU_request_leave;
    
    
    
    


    
    
    
    
    
    
    
    
    
    