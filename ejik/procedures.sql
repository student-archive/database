create or replace procedure load_attachment_example(groupid uuid)
as
$$
begin

    insert into "subject" (group_id, subject_name, semester)
    values ((select "id" from "group" where "group"."id" = groupid limit 1), 'тест', 3);
    insert into "page" (subject_id,link) values ((select "id" from "subject" where "subject"."id" = groupid limit 1),'http:/test');
    insert into "attachment" (type_id, link, author, checksum)
    values ((select "type_id" from attachment where "checksum" = 'тест' limit 1),
            (select "link" from attachment where "checksum" = 'тест' limit 1),
            (select "author" from attachment where "checksum" = 'тест' limit 1),
            (select "checksum" from attachment where "checksum" = 'тест' limit 1));


end ;


$$ language plpgsql;
call load_attachment_example(groupid := 'b9ffe76bbc2f4908b3fa3054ba396cf9');
DROP PROCEDURE load_attachment_example(uuid);



create or replace procedure createTestUser()
as
$$
declare
    aid uuid;
begin
    insert into "account" (email, password_hash) values ('test_email@mail.ru', 'test_password') returning id into aid;
    insert into "user" (account_id, role_id, sex_id, first_name, last_name)
    values (aid, 'e93babcd-3306-45f6-8634-18366ae9bc8f',
            9, 'test_name', 'test_last_name');

end ;


$$ language plpgsql;
call createTestUser();

create or replace procedure load_articles_quiz(groupid uuid)
as
$$
begin



insert into "subject" (group_id, subject_name, semester)
values ((select "id" from "group" where "group"."id" = groupid limit 1), 'Статьи', 8);
insert into "quiz" ("subject_id", "quiz_name", "quiz_description", "questions_amount")
values ((select "id" from "subject" where "subject_name" = 'Статьи' limit 1), 'Статьи это хорошо',
        'Статьи это хорошо', 1);
insert into "question" (quiz_id, question_text, correct_answers_amount, total_answers_amount)
values ((select "id" from "quiz" where "quiz_name" = 'Статьи это хорошо' limit 1), 'нужно писать статьи',
        1, 2);
insert into "quiz_variant" (question_id, quiz_variant_text, is_correct)
values ((select "id" from "question" where "question_text" ='нужно писать статьи'  limit 1), 'Пишу',
        true);
insert into "quiz_variant" (question_id, quiz_variant_text, is_correct)
values ((select "id" from "question" where "question_text" ='нужно писать статьи' limit 1), 'не Пишу',
        false);
end;





$$ language plpgsql;
call load_articles_materials('b9ffe76bbc2f4908b3fa3054ba396cf9');

create or replace procedure load_articles_materials(subjectname text)
as
$$
begin


    insert into "page" (subject_id,link) values ((select "id" from "subject" where "subject_name" = subjectname limit 1),'http:/article');
    insert into "attachment" (type_id, link, author, checksum)
    values ((select "type_id" from attachment where "checksum" = 'Статьи' limit 1),
            (select "link" from attachment where "checksum" = 'Статьи' limit 1),
            (select "author" from attachment where "checksum" = 'Статьи' limit 1),
            (select "checksum" from attachment where "checksum" = 'Статьи' limit 1));

end;


$$language plpgsql;
call load_articles_materials('Статьи')

