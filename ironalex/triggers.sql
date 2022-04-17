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

