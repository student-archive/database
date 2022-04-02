create table if not exists "speciality"
(
    "id"              uuid primary key default gen_random_uuid(),
    "speciality_name" text not null
);

create table if not exists "employee"
(
    "id"          uuid primary key default gen_random_uuid(),
    "firstn_name" text not null,
    "last_name"   text not null,
    "patronymic"  text null,
    "email"       text null
        constraint email_pattern
            check (email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$')
        unique,
    "phone"       text null
        constraint phone_pattern
            check ( phone ~ '^\+[1-9]\d{1,14}$' ),
    "link"        text null

);

create table if not exists "employee_position"
(
    "id"       uuid primary key default gen_random_uuid(),
    "position" text not null
);

create table if not exists "employee_employee_position"
(
    "employee_position_id" uuid references "employee_position" on update cascade on delete set null,

    "employee_id"          uuid references "employee" on update cascade on delete set null,
    constraint employee_position_employee_pkey primary key ("employee_position_id", "employee_id")
);

create table if not exists "speciality_employee"
(
    "speciality_id" uuid references "speciality" on update cascade on delete set null,
    "employee_id"   uuid references "employee" on update cascade on delete set null,
    constraint speciality_employee_pkey primary key ("speciality_id", "employee_id")
);

create table if not exists "certificate"
(
    "id"                      uuid primary key default gen_random_uuid(),
    "employee_id"             uuid not null references "employee",
    "certificate_name"        text not null,
    "certificate_description" text not null,
    "office"                  text not null
);

create table if not exists "employee_certificate"
(
    "employee_id"    uuid references "employee" on update cascade on delete set null,
    "certificate_id" uuid references "certificate" on update cascade on delete set null

);

create table if not exists "software"
(
    "id"          uuid primary key default gen_random_uuid(),
    "link"        text null,
    "description" text not null


);

create table if not exists "attachment_type"
(
    "id"        uuid primary key default gen_random_uuid(),
    "type_name" text not null
);

create table if not exists "attachment"
(
    "id"       uuid primary key default gen_random_uuid(),
    "type_id"  uuid not null references "attachment_type",
    "link"     text null,
    "author"   text null,
    "checksum" text not null

);

create table if not exists "page"
(
    "id"   uuid primary key default gen_random_uuid(),
    "link" text null


);

create table if not exists "page_attachment"

(
    "page_id"       uuid references "page" on update cascade on delete set null,
    "attachment_id" uuid references "attachment" on update cascade on delete set null,
    constraint page_attachment_pkey primary key ("page_id", "attachment_id")
);
