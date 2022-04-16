create or replace procedure impeachment_captain (gid uuid)

as

$$

begin
    update "user"
    set role_id = (select "id" from "role" where "role_name" = 'Студент')
    where id = (select "user"."id"
                from "user"
                         join "role" "r" on "r"."id" = "user"."role_id"
                where "r"."role_name" = 'Староста'
                  and "user"."group_id" = gid);
    update "user"
    set role_id = (select "id" from "role" where "role_name" = 'Староста')
    where id = (select "user"."id"
                from "user"
                         join "role" "r" on "r"."id" = "user"."role_id"
                where "r"."role_name" = 'Редактор'
                  and "user"."group_id" = gid
                order by "user"."last_name"
                limit 1);
end;
$$ language plpgsql;

call impeachment_captain('d0a1a0a3-203e-4631-bff7-42ff99d518e2');