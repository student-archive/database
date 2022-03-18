create table account (
    id uuid primary key default gen_random_uuid(),
    email text not null
        constraint email_pattern
            check(email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$')
        unique,
    passwordHash text not null,
    lastActiveDate timestamp null
);