create view "get_subjects_of_first_three_years" as
select "subject_name", "semester"
    from "subject"
    group by "subject_name", "semester"
    having "semester" < 7;

select *
    from "get_subjects_of_first_three_years";

create or replace view "get_average_positive_quiz_result" as
select "quiz_name", avg("result")
    from "quiz_result" join "quiz" "q" on "q"."id" = "quiz_result"."quiz_id"
    group by "result", "quiz_name"
    having "result" > 5;

select *
    from "get_average_positive_quiz_result";

drop view "get_average_positive_quiz_result";

create view "get_certificate_name_by_office" as
select "certificate_name"
    from "certificate"
    group by "certificate_name", "office"
    having "office" = '403-2';

select *
    from "get_certificate_name_by_office";