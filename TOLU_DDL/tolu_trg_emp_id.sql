create or replace trigger TOLU_trg_emp_id
Before insert on TOLU_employees
for each row
Begin
    :new.employee_id := TOLU_emp_seq.NEXTVAL;
End;
/