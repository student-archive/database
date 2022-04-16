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

