alter table "quiz_history"
    add column "attempt" integer not null default 1;

alter table "quiz_result"
    add column "attempt" integer not null default 1;