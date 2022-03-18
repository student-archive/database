create table if not exists "account"
(
    id             uuid primary key default gen_random_uuid(),
    email          text      not null
        constraint email_pattern
            check (email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$')
        unique,
    passwordHash   text      not null,
    lastActiveDate timestamp null
);

create table if not exists "inviteCode"
(
    id            uuid primary key   default gen_random_uuid(),
    accountId     uuid      null references "account",
    inviteCode    text      not null,
    isValid       bool      not null default true,
    activatedDate timestamp null
);

create table if not exists "speciality"
(
    id             uuid primary key default gen_random_uuid(),
    specialityName text not null
);

create table if not exists "group"
(
    id           uuid primary key default gen_random_uuid(),
    specialityId uuid not null references "speciality",
    groupName    text not null
);

create table if not exists "role"
(
    id              uuid primary key default gen_random_uuid(),
    roleName        text not null,
    roleDescription text not null
);

create table if not exists "user"
(
    id        uuid primary key default gen_random_uuid(),
    groupId   uuid null references "group",
    accountId uuid not null references "account",
    roleId    uuid not null references "role",
    firstName text not null,
    lastNae   text not null
);

create table if not exists "subject"
(
    id          uuid primary key default gen_random_uuid(),
    groupId     uuid not null references "group",
    subjectName text not null,
    semester    int  not null
);

create table if not exists "tutor"
(
    id         uuid primary key default gen_random_uuid(),
    firstName  text not null,
    lastName   text not null,
    patronymic text null,
    email      text null
        constraint email_pattern
            check (email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$'),
    phone      text null
        constraint phone_pattern
            check ( phone ~ '^\+[1-9]\d{1,14}$' ),
    link       text null
        constraint link_pattern
            check ( link ~
                    'https?://(www\.)?[-a-zA-Z0-9@:%._+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()!@:%_+.~#?&\\/=]*)' )
);

create table if not exists "subject_tutor"
(
    subjectId uuid references "subject" on update cascade on delete set null,
    tutorId uuid references "tutor" on update cascade on delete set null,
    constraint subject_tutor_pkey primary key (subjectId, tutorId)
);
