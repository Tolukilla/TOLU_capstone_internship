create or replace function TOLU_authenticate_user(
    p_username IN varchar2,
    p_password IN varchar2
) Return boolean
IS
    v_password_hash TOLU_users.password_hash%type;
    v_hash varchar2;
Begin
    Select password_hash into v_password_hash
    From TOLU_users
    where upper(username) = upper(p_username)
    and account_status = 'Active';

    Select RAWTOHEX (STANDARD_HASH(p_password, 'SHA256'))
    Into v_hash
    from dual;

    RETURN v_password_hash = v_hash;

    Exception
        When NO_DATA_FOUND then
            Return False;
    End;
/