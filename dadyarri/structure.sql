create table if not exists "account"
(
    "id"             uuid primary key default gen_random_uuid(),
    "email"          text      not null
        constraint email_pattern
            check (email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$')
        unique,
    "password_hash"   text      not null,
    "lastActiveDate" timestamp null
);

create table if not exists "invite_code"
(
    "id"            uuid primary key   default gen_random_uuid(),
    "account_id"     uuid      null references "account",
    "invite_code"    text      not null,
    "is_valid"       bool      not null default true,
    "activated_date" timestamp null
);

create table if not exists "speciality"
(
    "id"             uuid primary key default gen_random_uuid(),
    "speciality_name" text not null
);

create table if not exists "group"
(
    "id"           uuid primary key default gen_random_uuid(),
    "speciality_id" uuid not null references "speciality",
    "group_name"    text not null
);

create table if not exists "role"
(
    "id"              uuid primary key default gen_random_uuid(),
    "role_name"        text not null,
    "role_description" text not null
);

create table if not exists "user"
(
    "id"        uuid primary key default gen_random_uuid(),
    "group_id"   uuid null references "group",
    "account_id" uuid not null references "account",
    "role_id"    uuid not null references "role",
    "first_name" text not null,
    "last_name"  text not null
);

create table if not exists "subject"
(
    "id"          uuid primary key default gen_random_uuid(),
    "group_id"     uuid not null references "group",
    "subject_name" text not null,
    "semester"    int  not null
);

create table if not exists "tutor"
(
    "id"         uuid primary key default gen_random_uuid(),
    "first_name"  text not null,
    "last_name"   text not null,
    "patronymic" text null,
    "email"      text null
        constraint email_pattern
            check (email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$'),
    "phone"      text null
        constraint phone_pattern
            check ( phone ~ '^\+[1-9]\d{1,14}$' ),
    "link"       text null
);

create table if not exists "subject_tutor"
(
    "subject_id" uuid references "subject" on update cascade on delete set null,
    "tutor_id"   uuid references "tutor" on update cascade on delete set null,
    constraint subject_tutor_pkey primary key ("subject_id", "tutor_id")
);
