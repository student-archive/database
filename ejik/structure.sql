create table if not exists "speciality"
(
    "id"             uuid primary key default gen_random_uuid(),
    "specialityName" text not null
);

create table if not exists "employee"
(
    "id"           uuid primary key default gen_random_uuid(),
    "specialityId" uuid not null references "speciality",
    "firstName"    text not null,
    "lastName"     text not null,
    "patronymic"   text not null,
    "position"     text not null,
    "email"        text not null
        constraint email_pattern
            check (email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$')
        unique,
    "phone"        text null
        constraint phone_pattern
            check ( phone ~ '^\+[1-9]\d{1,14}$' ),
    "link"         text null
        constraint link_pattern
            check ( link ~
                    '^https?://(www\.)?[-a-zA-Z0-9@:%._+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()!@:%_+.~#?&\\/=]*)$' )
);