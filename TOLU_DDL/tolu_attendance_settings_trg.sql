create or replace trigger TOLU_attendance_settings_trg
Before insert on TOLU_attendance_settings
for each row
Begin
    :new.setting_id := TOLU_attendance_settings_seq.NEXTVAL;
End;
/