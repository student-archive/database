create table if not exists "event_priority"
(
    "id"                  uuid primary key default gen_random_uuid(),
    "priority_name"        text not null,
    "priority_description" text not null
);

create table if not exists "event"
(
    "id"               uuid primary key default gen_random_uuid(),
    "event_priority_id"  uuid      not null references "event_priority",
    "group_id"          uuid      not null references "group",
    "event_text"        text      not null,
    "eventDescription" text      null,
    "event_date"        timestamp not null
);
create table if not exists "trash"
(
    "id"          uuid primary key default gen_random_uuid(),
    "group_id"     uuid      not null references "group",
    "deleted_id"   uuid      not null,
    "deleted_date" timestamp not null
);

create table if not exists "quiz"
(
    "id"              uuid primary key default gen_random_uuid(),
    "subject_id"       uuid not null references "subject",
    "quiz_name"        text not null,
    "quiz_description" text not null
);

create table if not exists "question"
(
    "id"           uuid primary key default gen_random_uuid(),
    "quiz_id"       uuid not null references "quiz",
    "question_text" text not null
);

create table if not exists "quiz_variant"
(
    "id"              uuid primary key default gen_random_uuid(),
    "question_id"      uuid    not null references "question",
    "quiz_variant_text" text    not null,
    "is_correct"       boolean not null
);

create table if not exists "quiz_result"
(
    "id"     uuid primary key default gen_random_uuid(),
    "quiz_id" uuid not null references "quiz",
    "user_id" uuid not null references "user",
    "result" int  not null
);

create table if not exists "quiz_history"
(
    "id"                uuid primary key default gen_random_uuid(),
    "question_id"        uuid      not null references "question",
    "selected_variant_id" uuid      not null references "quiz_variant",
    "user_id"            uuid      not null references "user",
    "quiz_submit_date"    timestamp not null
);

