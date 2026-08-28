create or replace trigger TOLU_attendance_trg
Before insert on TOLU_attendance
for each row
Begin
    :new.attendance_id := TOLU_attendance_seq.NEXTVAL;
End;
/