create or replace function load_articles_propose_test() returns trigger as
$$
begin
    call load_articles_quiz(new.id);
    return new;
end;
$$ language plpgsql;



create trigger load_articles_propose_test_trigger
    after insert
    on "group"
    for each row
execute procedure load_articles_propose_test();



create or replace function notify_male_certificate_for_militaryOffice() returns trigger as
$$
begin
    if new.sex_id = 1 then
        insert into "event"(event_priority_id, user_id, event_text, event_description,
                            event_date)
        values ((select id from event_priority where priority_name = 'high'), new.id,
                'Ребята, Вам необходимо получить справку для военкомата',
                'Получить данную справку можно с понедельника по среду в кабинете 213 в 1 корпусе. Режим работы 10:00-15:00',
                current_timestamp);
        return new;
    end if;
end;
$$ language plpgsql;

create trigger "notify_male_certificate_for_militaryOffice"
    after insert
    on "user"
    for each row
execute procedure notify_male_certificate_for_militaryOffice();
create or replace function notify_male_certificate_for_militaryOffice() returns trigger as
$$
begin
    if new.sex_id = 1 then
        insert into "event"(event_priority_id, user_id, event_text, event_description,
                            event_date)
        values ((select id from event_priority where priority_name = 'high'), new.id,
                'Ребята, Вам необходимо получить справку для военкомата',
                'Получить данную справку можно с понедельника по среду в кабинете 213 в 1 корпусе. Режим работы 10:00-15:00',
                current_timestamp);
        return new;
    end if;
end;
$$ language plpgsql;

create trigger "notify_male_certificate_for_militaryOffice"
    after insert
    on "user"
    for each row
execute procedure notify_male_certificate_for_militaryOffice();