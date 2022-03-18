create table "account"
(
    id             uuid primary key default gen_random_uuid(),
    email          text      not null
        constraint email_pattern
            check (email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$')
        unique,
    passwordHash   text      not null,
    lastActiveDate timestamp null
);

create table "inviteCode"
(
    id            uuid primary key   default gen_random_uuid(),
    accountId     uuid      null references account,
    inviteCode    text      not null,
    isValid       bool      not null default true,
    activatedDate timestamp null
);
