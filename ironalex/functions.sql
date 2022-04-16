create or replace function randomize_quiz(qid uuid)
    returns table
            (
                "q_text" text
            )
as
$$
begin
    return query (select question_text
                  from question
                  where quiz_id = qid
                  order by random()
                  limit (select questions_amount
                         from quiz
                         where id = qid
                         limit 1));
end;
$$ language plpgsql;

select randomize_quiz('ae25fdb6-c9a1-40d1-8432-d9859df31ede');

create or replace function randomize_quiz_variants(qid uuid)
    returns table
            (
                "q_text" text
            )
as
$$
begin
    return query (select quiz_variant_text
                  from quiz_variant
                  where question_id = qid
                    and is_correct = false
                  order by random()
                  limit (select (select total_answers_amount - correct_answers_amount)
                         from question
                         where id = qid
                         limit 1))
                 union
                 (select quiz_variant_text
                  from quiz_variant
                  where question_id = qid
                    and is_correct = true
                  order by random()
                  limit (select correct_answers_amount
                         from question
                         where id = qid
                         limit 1));
end;
$$ language plpgsql;

select randomize_quiz_variants('1528351a-fc0f-4753-a957-baf655396ba1');


create or replace function get_academic_performance(qid uuid)
    returns table
            (
                "f_name" text,
                "l_name" text,
                "res"    integer,
                "total"  integer
            )
as
$$
begin
    return query (select first_name, last_name, result, questions_amount
                  from "user"
                           join quiz_result qr on "user".id = qr.user_id
                           join quiz q on qr.quiz_id = q.id
                  where quiz_id = qid);
end ;
$$ language plpgsql;

select get_academic_performance('8e7d2e8b-67b9-4aa1-afc4-c6bdcf49dfc1');

create or replace function get_contact_information_of_group(gid uuid)
    returns table
            (
                "f_name" text,
                "l_name" text,
                "e_mail" text
            )
as
$$
begin
    return query (select first_name, last_name, email
                  from "user"
                           join account a on "user".account_id = a.id
                           join "group" g on "user".group_id = g.id
                  where group_id = gid);
end ;
$$ language plpgsql;

select get_contact_information_of_group('d0a1a0a3-203e-4631-bff7-42ff99d518e2');








