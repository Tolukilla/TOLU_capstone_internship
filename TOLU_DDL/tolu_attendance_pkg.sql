create or replace package body TOLU_attendance_pkg AS

    Procedure Clock_in(
        p_employee_id IN varchar2
    ) IS
        v_employee_id number;
        v_emp number;
        v_start_time varchar2(20);
        v_attendance_date date := Trunc(sysdate);
        v_clock_in timestamp := current_timestamp;
        v_cutoff timestamp;
    Begin
        Select count(*) into v_employee_id 
        From TOLU_employees
        Where employee_id = p_employee_id;

        If v_employee_id = 0 then
        Raise_application_error(-20033, 'Employee does not exist.');
        End if;

        Select count(*) into v_emp
        From TOLU_attendance
        Where employee_id = p_employee_id
        And attendance_date = v_attendance_date;

        If v_emp > 0 then
        Raise_application_error(-20035, 'Employee already clocked in.');
        End if;

        Select setting_value into v_start_time
        From TOLU_attendance_settings
        Where setting_name = 'Attendance_start_time';

        v_cutoff := TO_TIMESTAMP(
                        TO_CHAR(SYSDATE, 'YYYY-MM-DD') || ' ' || v_start_time,
                        'YYYY-MM-DD HH24:MI'
        );

        Insert into TOLU_attendance(
            employee_id,
            attendance_date,
            Clock_in,
            Status
        ) VALUES(
            p_employee_id,
            v_attendance_date,
            v_clock_in,
            CASE
                When v_clock_in <= v_cutoff
                    Then 'Present'
                Else  'Late'
            End    
        );

        Exception
            When NO_DATA_FOUND then
                Raise_application_error(-20039, 'Attendance start time is yet to be configured.');

            When others then
                Raise;
         
    End clock_in;

    Procedure Clock_out(
        p_employee_id IN varchar2
    ) IS
        v_count number;
    Begin
        Select count(*) into v_count 
        From TOLU_attendance
        Where employee_id = p_employee_id
        AND attendance_date = trunc(sysdate);

        IF v_count = 0 then
        Raise_application_error(-20040, 'Employee has not clocked in today.');
        END IF;

        Select count(*) into v_count
        From TOLU_attendance
        Where employee_id = p_employee_id
        And attendance_date = trunc(sysdate)
        And clock_out IS NOT NULL;

        IF v_count > 0 then
        Raise_application_error(-20041, 'Employee already clocked out today.');
        END IF;

        Update TOLU_attendance
        Set clock_out = current_timestamp
        Where employee_id = p_employee_id 
        AND attendance_date = trunc(sysdate);

    End clock_out;

END TOLU_attendance_pkg;
/