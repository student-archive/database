create or replace procedure "createTestGroup"(name text , speciality uuid)
    language plpgsql
as
$$
begin
    insert into "group"
    set "specialityId" = speciality
    where "groupName" = name;
    commit;
end;
$$

create or replace procedure "createTestUser"(name text, lastname text, account uuid ,role uuid)
    language plpgsql
as
$$
begin
    insert into "user"
    set "accountId" = account
    where "firstName" = name;

    insert into "user"
    set "roleId" = role
    where "lastName" = lastname;
end;
$$

create or replace procedure "createTestSpeciality"(name text )
    language plpgsql
as
$$
begin
    insert into "speciality"
    set "specialityName" = name;
    commit;
end;
$$

create or replace procedure "createTestEvent"(priority uuid, "group" uuid ,eventtext text)
    language plpgsql
as
$$
begin
    insert into "event"
    set "eventPriorityId" = priority
    where "groupId" = "group"

    insert into "event"
    set "eventDate" = CURRENT_TIMESTAMP
     where "groupId" = "group"

     insert into "event"
    set "eventText" = eventtext
    where "groupId" = "group"

end;

$$
