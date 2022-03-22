create or replace procedure "invalidateInvite"(code text, account uuid)
    language plpgsql
as
$$
begin
    update "inviteCode"
    set "accountId" = account
    where "inviteCode" = code;

    update "inviteCode"
    set "activatedDate" = CURRENT_TIMESTAMP
    where "inviteCode" = code;

    update "inviteCode"
    set "isValid" = false
    where "inviteCode" = code;
    commit;
end;
$$
