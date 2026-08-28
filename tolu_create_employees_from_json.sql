create or replace procedure TOLU_create_employees_from_json(
    p_json IN CLOB
) IS
    v_first_name varchar2(100);
    v_last_name varchar2(100);
    v_email varchar2(100);
    v_dept_id number;
    v_error_message varchar2(500);
    v_count number;
Begin

    APEX_JSON.PARSE(p_json);

    v_count := APEX_JSON.GET_COUNT('-');

    For i IN 1 .. v_count
    LOOP
        Begin
            v_first_name := APEX_JSON.GET_varchar2(
                p_path => '[%d].first_name',
                p0 => i - 1
            );

            v_last_name := APEX_JSON.GET_varchar2(
                p_path => '[%d].last_name',
                p0 => i - 1
            );

            v_email := APEX_JSON.GET_varchar2(
                p_path => '[%d].email',
                p0 => i - 1
            );

            v_dept_id := APEX_JSON.GET_number(
                p_path => '[%d].dept_id',
                p0 => i - 1
            );

            IF v_first_name IS NULL 
            OR v_last_name IS NULL
            OR v_email IS NULL
            OR v_dept_id IS NULL then
            Raise_application_error(-20001, 'Required field missing');
            End if;

            IF NOT REGEXP_LIKE (v_email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') then
            Raise_application_error(-20002, 'Invalid email formart.');
            END IF;

            Insert into TOLU_employee_json(First_name, Last_name, Email, Dept_id) values
            (v_first_name, v_last_name, v_email, v_dept_id);

            Exception
                When others then
                v_error_message := SQLERRM;
                Insert into TOLU_employee_json(First_name, Last_name, Email, Dept_id, Error_message) values
                (v_first_name, v_last_name, v_email, v_dept_id, v_error_message);
            
            END;
    END LOOP;

End TOLU_create_employees_from_json;
/