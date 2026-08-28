create or replace trigger TOLU_payslips_trg
Before insert on TOLU_payslips
for each row
Begin
    :new.payslip_id := TOLU_payslips_seq.NEXTVAL;
End;
/