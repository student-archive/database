create table account (
    id uuid primary key,
    email text not null
        constraint email_pattern
            check(email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$'),
    passwordHash text not null,
    lastActiveDate timestamp null
);