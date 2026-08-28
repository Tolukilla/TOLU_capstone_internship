create or replace package body TOLU_leave_pkg AS

    Function get_balance(
        p_employee_id in varchar2,
        p_leave_type_id in varchar2,
        p_as_of_date in date
    ) return number IS

        v_leave_balance number;

    Begin

        Select balance into v_leave_balance 
        from TOLU_leave_balance
        where employee_id = p_employee_id
        and leave_type_id = p_leave_type_id;

        Return v_leave_balance;

        Exception
        When NO_DATA_FOUND then
        Return 0;

    End get_balance;

    Procedure apply_leave(
        p_employee_id in varchar2,
        p_leave_type_id in varchar2,
        p_start_date in date,
        p_end_date in date,
        p_reason in varchar2
    ) IS 
        v_emp number;
        v_overlap number;
        v_days TOLU_leave_requests.days_requested%TYPE;
        v_available_balance TOLU_leave_balance.balance%TYPE;

        e_emp_not_found exception;
        e_overlapping_date_range exception;
        e_insufficient_balance exception;

    Begin

        Select count(*) into v_emp
        from TOLU_employees
        where employee_id = p_employee_id;

        IF v_emp = 0 then
        Raise e_emp_not_found;
        END IF;

        v_days := p_end_date - p_start_date + 1;

        v_available_balance := get_balance(p_employee_id,
                                           p_leave_type_id,
                                           p_start_date
                                           );

        IF v_days > v_available_balance then
        Raise e_insufficient_balance;
        END IF;

        Select count(*) into v_overlap from TOLU_leave_requests
        Where employee_id = p_employee_id
        And status IN ('Pending', 'Approved')
        And p_start_date <= end_date
        And end_date >= p_start_date;

        IF v_overlap > 0 then
        Raise e_overlapping_date_range;
        End IF;

        Insert into 
        TOLU_leave_requests(Employee_id, Leave_type_id, Start_date, End_date, Days_requested, Status, Reason, Descision_date)
        VALUES
        (p_employee_id, p_leave_type_id, p_start_date, p_end_date, v_days, 'Pending', p_reason, Null);
        Commit;

        Exception
        When e_emp_not_found then
        Raise_application_error(-20080, 'Employee not found');

        When e_insufficient_balance then
        Raise_application_error(-20081, 'Insufficient leave balance. Available balance: ' || v_available_balance);

        When e_overlapping_date_range then
        Raise_application_error(-20082, 'Leave date overlaps with existing request');

        When others then
        Raise;

    End apply_leave;

    Procedure approve_leave(
        p_leave_request_id in varchar2
    ) IS
        v_emp_id varchar2;
        v_leave_type_id varchar2;
        v_status varchar2;
        v_days number;
        v_start_date date;
        v_available_balance number;

        e_insufficient_balance exception;
    Begin
        Select employee_id, leave_type_id, status, days_requested, start_date 
        Into v_emp_id, v_leave_type_id, v_status, v_days, v_start_date
        from TOLU_leave_requests
        where leave_request_id = p_leave_request_id;

        IF v_status <> 'Pending' then
        Raise_application_error(-20004, 'Only pending request can be approved');
        END IF;

        v_available_balance := get_balance(v_emp_id,
                                           v_leave_type_id,
                                           v_start_date
                                           );

        
        IF v_days > v_available_balance then
        Raise e_insufficient_balance;
        END IF;

        Update TOLU_leave_balance SET balance = balance - v_days
        where Employee_id = v_emp_id
        And leave_type_id = v_leave_type_id;

        Update TOLU_leave_requests
        SET Status = 'Approved', Descision_date = sysdate
        where Leave_request_id = p_leave_request_id;
        Commit;

        Exception
        When e_insufficient_balance then
        Raise_application_error(-20012, 'Insufficient leave balance');

        When NO_DATA_FOUND then
        Raise_application_error(-20006, 'Leave request_id not found.');

    End approve_leave;

    Procedure reject_leave(
        p_leave_request_id in varchar2
    ) IS
        v_status varchar2;
    Begin
        Select status into v_status from TOLU_leave_requests
        Where leave_request_id = p_leave_request_id;

        IF v_status <> 'Pending' then
        Raise_application_error(-20013, 'Only pending request can be rejected.');
        END IF;

        Update TOLU_leave_requests 
        SET Status = 'Rejected', Descision_date = sysdate
        where Leave_request_id = p_leave_request_id;
        Commit;

        Exception
        When NO_DATA_FOUND then
        Raise_application_error(-20006, 'Leave request_id not found.');
    
    End reject_leave;
    
End TOLU_leave_pkg;
/