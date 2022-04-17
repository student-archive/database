create or replace procedure "invalidateInvite"("code" text, "account" uuid)
    language "plpgsql"
as
$$
begin
    update "invite_code"
    set "account_id" = "account"
        where "invite_code" = "code";

    update "invite_code"
    set "activated_date" = current_timestamp
        where "invite_code" = "code";

    update "invite_code"
    set "is_valid" = false
        where "invite_code" = "code";
    commit;
end;
$$
