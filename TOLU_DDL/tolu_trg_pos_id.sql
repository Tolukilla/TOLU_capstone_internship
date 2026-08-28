create or replace trigger TOLU_trg_pos_id
Before insert on TOLU_employees_position
for each row
Begin
    :new.position_id := TOLU_pos_seq.NEXTVAL;
End;
/