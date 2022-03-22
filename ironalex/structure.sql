create table if not exists "event"
(
    "id"               uuid primary key default gen_random_uuid(),
    "eventPriorityId"  uuid      not null references "eventPriority",
    "groupId"          uuid      not null references "group",
    "eventText"        text      not null,
    "eventDescription" text      null,
    "eventDate"        timestamp not null
);

create table if not exists "eventPriority"
(
    "id"                  uuid primary key default gen_random_uuid(),
    "priorityName"        text not null,
    "priorityDescription" text not null
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
    "id"          uuid primary key default gen_random_uuid(),
    "subjectId" uuid not null references "subject",
    "quizName" text not null,
    "quizDescription" text not null
)
