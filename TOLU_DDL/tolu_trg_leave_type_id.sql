create or replace trigger TOLU_trg_leave_type_id
Before insert on TOLU_leave_type
for each row
Begin
    :new.Leave_type_id := TOLU_leave_type_seq.NEXTVAL;
End;
/