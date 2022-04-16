create or replace procedure impeachment_captain(gid uuid)
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


create or replace procedure load_articles_test(gid uuid)
as

$$
BEGIN
end;
$$ language plpgsql;


create or replace procedure notify_losers(qid uuid)
as
$$
declare
    loser uuid;
BEGIN
    foreach loser in array (select array(select user_id
                                         from quiz_result
                                         where (select result / (select questions_amount from quiz where "quiz"."id" = qid)) <
                                               0.61
                                         order by quiz_submit_date) as losers)
        loop
            insert into event (event_priority_id, user_id, event_text, event_description, event_date)
            values ((select "id" from "event_priority" where "priority_name" = 'high' limit 1), loser,
                    'Пройдитетест заново', 'Вы завалили тестирование, пройдите тест заново', current_timestamp);
        end loop;
end;
$$ language plpgsql;

call notify_losers('4df9416e-a741-4698-83eb-efba61097143');



create or replace procedure delete_element(element_id uuid, delete_permanently boolean)
as

$$
declare
    is_exist boolean;
    found    boolean;
BEGIN
    found = false;

    select into is_exist exists((select 1 from software where id = element_id));
    if is_exist is true then
        found = true;
    end if;
    if found is false then raise exception 'Элемент не найден'; end if;
    if delete_permanently is true then
        delete from software where id = element_id;
    else
        insert into trash(group_id, deleted_id, deleted_date)
        values ((select group_id
                 from software
                          join subject on software.subject_id = subject.id
                 where software.id = element_id
                 limit 1), element_id, current_timestamp);
    end if;

end;
$$ language plpgsql;

call delete_element('8cb220cd-4efa-4afc-bc1e-8c62036cd439', false);
call delete_element('d591920b-e500-466c-b59f-6f133966b338', true);


create or replace procedure calculate_result(uid uuid, qid uuid, attempt integer)
as

$$
BEGIN

end;
$$ language plpgsql;



