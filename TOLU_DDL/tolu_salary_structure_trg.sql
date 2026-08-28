create or replace trigger TOLU_salary_structure_trg
Before insert on TOLU_salary_structure
for each row
Begin
    :new.salary_id := TOLU_salary_seq.NEXTVAL;
End;
/