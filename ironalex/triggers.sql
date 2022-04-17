create or replace function "load_articles_propose_test"() returns trigger as
$$
begin
    call "load_articles_quiz"("new"."id");
    return "new";
end;
$$ language "plpgsql";



create trigger "load_articles_propose_test_trigger"
    after insert
    on "group"
    for each row
execute procedure "load_articles_propose_test"();



create or replace function "notify_male_certificate_for_militaryOffice"() returns trigger as
$$
begin
    if "new"."sex_id" = 1 then
        insert into "event"("event_priority_id", "user_id", "event_text", "event_description", "event_date")
            values ((select "id" from "event_priority" where "priority_name" = 'high'), "new"."id", 'Ребята, Вам необходимо получить справку для военкомата', 'Получить данную справку можно с понедельника по среду в кабинете 213 в 1 корпусе. Режим работы 10:00-15:00', current_timestamp);
        return "new";
    end if;
end;
$$ language "plpgsql";

create trigger "notify_male_certificate_for_militaryOffice"
    after insert
    on "user"
    for each row
execute procedure "notify_male_certificate_for_militaryOffice"();


create or replace function "notify_material_deletion"() returns trigger as
$$
begin
    insert into "event"("event_priority_id", "user_id", "event_text", "event_description", "event_date")
        values ((select "id" from "event_priority" where "priority_name" = 'medium'), (select "user"."id"
                                                                                           from "user"
                                                                                                    join "role" "r"
                                                                                                    on "r"."id" = "user"."role_id"
                                                                                           where "role_name" = 'Староста'), 'Удаление ссовсем через 20 дней', 'В корзину было добавлено вложение. Оно будет удалено через 20 дней', current_timestamp + interval '20' day);
    return "new";
end;
$$ language "plpgsql";

create trigger "notify_material_deletion()"
    after insert
    on "trash"
    for each row
execute procedure "notify_material_deletion"();


create or replace function "notify_motivation"() returns trigger as
$$
begin
    insert into "event"("event_priority_id", "user_id", "event_text", "event_description", "event_date")
        values ((select "id" from "event_priority" where "priority_name" = 'low'), (select "user_id"
                                                                                        from "quiz_result"
                                                                                        where "user_id" = "new"."user_id"
                                                                                        limit 1), 'ВЫ МОЛОДЕЦ!', '))0)', current_timestamp);
    return "new";
end;
$$ language "plpgsql";

create trigger "notify_material_deletion()"
    after insert
    on "quiz_result"
    for each row
execute procedure "notify_motivation"();

create or replace function "notify_new_quiz"() returns trigger as
$$
begin
    insert into "event"("event_priority_id", "group_id", "event_text", "event_description", "event_date")
        values ((select "id" from "event_priority" where "priority_name" = 'medium'), (select "g"."id"
                                                                                           from "subject"
                                                                                                    join "group" "g"
                                                                                                    on "g"."id" = "subject"."group_id"
                                                                                           where "subject"."id" = "new"."subject_id"), 'Появился новый тест', '))0)', current_timestamp);
    return "new";
end;
$$ language "plpgsql";

create trigger "notify_new_quiz()"
    after insert
    on "quiz"
    for each row
execute procedure "notify_new_quiz"();


create or replace function "notify_new_software"() returns trigger as
$$
begin
    insert into "event"("event_priority_id", "group_id", "event_text", "event_description", "event_date")
        values ((select "id" from "event_priority" where "priority_name" = 'medium'), (select "g"."id"
                                                                                           from "subject"
                                                                                                    join "group" "g"
                                                                                                    on "g"."id" = "subject"."group_id"
                                                                                           where "subject"."id" = "new"."subject_id"), 'Появился новый soft', '))0)', current_timestamp);
    return "new";
end;
$$ language "plpgsql";

create trigger "notify_new_software()"
    after insert
    on "software"
    for each row
execute procedure "notify_new_software"();



create or replace function "notify_new_attachment"() returns trigger as
$$
begin
    insert into "event"("event_priority_id", "group_id", "event_text", "event_description", "event_date")
        values ((select "id" from "event_priority" where "priority_name" = 'medium'), (select "g"."id"
                                                                                           from "attachment"
                                                                                                    join "page_attachment" "pa"
                                                                                                    on "attachment"."id" = "pa"."attachment_id"
                                                                                                    join "page" "p"
                                                                                                    on "p"."id" = "pa"."page_id"
                                                                                                    join "subject" "s"
                                                                                                    on "s"."id" = "p"."subject_id"
                                                                                                    join "group" "g"
                                                                                                    on "g"."id" = "s"."group_id"
                                                                                           where "attachment_id" = "new"."id"), 'Появилось новое вложение', '))0)', current_timestamp);
    return "new";
end;
$$ language "plpgsql";

create trigger "notify_new_attachment()"
    after insert
    on "attachment"
    for each row
execute procedure "notify_new_attachment"();