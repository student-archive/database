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

