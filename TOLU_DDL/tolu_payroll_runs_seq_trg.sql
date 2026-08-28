create or replace trigger TOLU_payroll_runs_seq_trg
Before insert on TOLU_payroll_runs
for each row
Begin
    :new.payroll_id := TOLU_payroll_runs_seq.NEXTVAL;
End;
/