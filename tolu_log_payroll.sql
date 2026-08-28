create or replace procedure TOLU_log_payroll (
        p_json IN CLOB
    ) Is 
        v_trx_Inserted varchar2(5000);
        v_trx_Not_inserted varchar2(5000);
        v_transaction_id APEX_T_varchar2;
    Begin

        APEX_JSON.PARSE(p_json);

        v_trx_inserted := APEX_JSON.GET_varchar2(
            p_path => 'trxInserted'
        );

        v_transaction_id := APEX_STRING.SPLIT(v_trx_inserted, ',');

        FOR i IN 1 .. v_transaction_id.COUNT
        LOOP
            Insert into TOLU_payroll_log(
                trx_id,
                Status
            ) VALUES
            (
                TO_NUMBER(v_transaction_id(i)),
                'Inserted'
            );

        END LOOP;

        v_trx_not_inserted := APEX_JSON.GET_varchar2(
            p_path => 'trxnotinserted'
        );

        v_transaction_id := APEX_STRING.SPLIT(v_trx_not_inserted, ',');

        FOR i IN 1 .. v_transaction_id.COUNT
        LOOP
            Insert into TOLU_payroll_log(
                trx_id,
                Status
            ) VALUES
            (
                TO_NUMBER(v_transaction_id(i)),
                'Not Inserted'
            );

        END LOOP;

    Commit;
 
End TOLU_log_payroll;
/