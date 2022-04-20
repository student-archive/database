create table if not exists "temp_tutor"
(
    "first_name" text,
    "last_name"  text
);

create or replace procedure "copy_tutors_w_cursor"() as
$$
declare
    "cur" cursor for select "first_name", "last_name"
                         from "tutor";
    "row" record;
begin
    open "cur";
    loop
        fetch next from "cur" into "row";
        exit when "row" is null;

        insert into "temp_tutor" ("first_name", "last_name") values ("row"."first_name", "row"."last_name");
    end loop;
    close "cur";
end;
$$ language "plpgsql";

call "copy_tutors_w_cursor"();


create or replace procedure "copy_questions_w_cursor"() as
$$
declare
    "cur" cursor for select "question_text", "correct_answers_amount", "total_answers_amount"
                         from "question";

    "row" record;
begin
    open "cur";
    loop
        fetch next from "cur" into "row";
        exit when "row" is null;

        insert into "temp_questions" ("question_text", "correct_answers_amount", "total_answers_amount")
            values ("row"."question_text", "row"."correct_answers_amount", "row"."total_answers_amount");
    end loop;
    close "cur";
end;
$$ language "plpgsql";

call "copy_questions_w_cursor"();


create or replace procedure "copy_subjects_w_cursor"() as
$$
declare
    "cur" cursor for select "subject_name", "semester"
                         from "subject";

    "row" record;
begin
    open "cur";
    loop
        fetch next from "cur" into "row";
        exit when "row" is null;

        insert into "temp_subjects" ("subject_name", "semester")
            values ("row"."subject_name", "row"."semester");
    end loop;
    close "cur";
end;
$$ language "plpgsql";

call "copy_subjects_w_cursor"();

create table if not exists "temp_subjects"
(
    "subject_name" text,
    "semester"     int
);

