create or replace Function TOLU_get_active_employees_json 
    Return CLOB 
    IS
        v_json CLOB;
Begin  
    APEX_JSON.INITIALIZE_CLOB_OUTPUT;

    APEX_JSON.OPEN_OBJECT;

    APEX_JSON.OPEN_ARRAY('employees');

    FOR emp IN (
        SELECT employee_id,
               first_name,
               last_name,
               department
        FROM TOLU_Employee_json
        WHERE status = 'Active'
        ORDER BY employee_id
    )
    LOOP
        APEX_JSON.OPEN_OBJECT;

        APEX_JSON.WRITE('employee_id', emp.employee_id);

        APEX_JSON.WRITE('Full_name', emp.first_name || ' ' || emp.last_name);

        APEX_JSON.WRITE('Department', emp.department);

        APEX_JSON.CLOSE_OBJECT;

    END LOOP;

    APEX_JSON.CLOSE_ARRAY;

    APEX_JSON.CLOSE_OBJECT;

    v_json := APEX_JSON.GET_CLOB_OUTPUT;

    APEX_JSON.FREE_OUTPUT;

    RETURN v_json;

End TOLU_get_active_employees_json;
/