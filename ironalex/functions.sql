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


create or replace function search_attachments_by_tutor(tid uuid)
    returns table
            (
                "a_name" text,
                "a_link" text
            )
as
$$
begin
    return query (select attachment_name, attachment_link
                  from "attachment"
                           join tutor t on attachment.author = t.first_name
                  where t.id = tid);
end ;
$$ language plpgsql;

select search_attachments_by_tutor('2344e605-b565-4090-a1c1-b90969ef170d');

create or replace function search_groups_by_tutor(tid uuid)
    returns table
            (
                "g_name" text
            )
as
$$
begin
    return query (select group_name
                  from "group"
                           join subject s on "group".id = s.group_id
                           join subject_tutor st on s.id = st.subject_id
                           join tutor t on st.tutor_id = t.id
                  where t.id = tid);
end;
$$ language plpgsql;

select search_groups_by_tutor('b7cd5c14-98ff-4a93-b36b-fdf35bfc7bd9');


create or replace function sex_ratio(sex integer)
    returns table
            (
                "m_percent" numeric
            )
as
$$
declare
    users integer;
    male  integer;
begin
    select count(*) into male from "user" where sex_id = sex;
    select count(*) into users from "user";
    return query (select (male * 100.0) / users);

end;
$$ language plpgsql;

select sex_ratio(1);


create or replace function how_much_better_am_i(uid uuid, qid uuid)
    returns table
            (

                "percent" bigint
            )
as
$$
declare
    my_result numeric;
begin
    select round((select (result * 100.0) / q.questions_amount))
    into my_result
    from quiz_result
             join quiz q on quiz_result.quiz_id = q.id
    where quiz_id = qid
      and user_id = uid;

    return query (select count(*)
                  from (select user_id, (select (result * 100.0) / q.questions_amount as res)
                        from "quiz_result"
                                 join quiz q on quiz_result.quiz_id = q.id
                        where quiz_id = qid) as q
                  where res < my_result);
end;
$$ language plpgsql;

select how_much_better_am_i('077f814d-ffe9-41d5-aa97-1f5f6b50c325', '5f55b595-a81b-4e5b-bfd0-1883b3196f8d');

drop function how_much_better_am_i












