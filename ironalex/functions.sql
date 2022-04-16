create or replace function randomize_quiz(qid uuid)
    returns table("q_text" text)
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
    returns table("q_text" text)
as
$$
begin
    return query (select quiz_variant_text
            from quiz_variant
            where question_id = qid
            order by random()
            limit (select total_answers_amount
                   from question
                   where id = qid
                   limit 1));
end;
$$ language plpgsql;

select randomize_quiz_variants('');

