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
