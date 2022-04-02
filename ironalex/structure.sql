create table if not exists "eventPriority"
(
    "id"                  uuid primary key default gen_random_uuid(),
    "priorityName"        text not null,
    "priorityDescription" text not null
);

create table if not exists "event"
(
    "id"               uuid primary key default gen_random_uuid(),
    "eventPriorityId"  uuid      not null references "eventPriority",
    "groupId"          uuid      not null references "group",
    "eventText"        text      not null,
    "eventDescription" text      null,
    "eventDate"        timestamp not null
);
create table if not exists "trash"
(
    "id"          uuid primary key default gen_random_uuid(),
    "groupId"     uuid      not null references "group",
    "deletedId"   uuid      not null,
    "deletedDate" timestamp not null
);

create table if not exists "quiz"
(
    "id"              uuid primary key default gen_random_uuid(),
    "subject_id"       uuid not null references "subject",
    "quizName"        text not null,
    "quizDescription" text not null
);

create table if not exists "question"
(
    "id"           uuid primary key default gen_random_uuid(),
    "quizId"       uuid not null references "quiz",
    "questionText" text not null
);

create table if not exists "quizVariant"
(
    "id"              uuid primary key default gen_random_uuid(),
    "questionId"      uuid    not null references "question",
    "quizVariantText" text    not null,
    "isCorrect"       boolean not null
);

create table if not exists "quizResult"
(
    "id"     uuid primary key default gen_random_uuid(),
    "quizId" uuid not null references "quiz",
    "userId" uuid not null references "user",
    "result" int  not null
);

create table if not exists "quizHistory"
(
    "id"                uuid primary key default gen_random_uuid(),
    "questionId"        uuid      not null references "question",
    "selectedVariantId" uuid      not null references "quizVariant",
    "userId"            uuid      not null references "user",
    "quizSubmitDate"    timestamp not null
);

