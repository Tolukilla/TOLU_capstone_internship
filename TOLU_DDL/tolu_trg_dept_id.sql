create or replace trigger TOLU_trg_dept_id
Before insert on TOLU_employees_department
for each row
Begin
    :new.department_id := TOLU_dept_seq.NEXTVAL;
End;
/