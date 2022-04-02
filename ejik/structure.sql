create table if not exists "speciality"
(
    "id"             uuid primary key default gen_random_uuid(),
    "speciality_name" text not null
);

create table if not exists "employee"
(
    "id"         uuid primary key default gen_random_uuid(),
    "first_name"  text not null,
    "last_name"   text not null,
    "patronymic" text null,
    "position"   text null,
    "email"      text null
        constraint email_pattern
            check (email ~ '^[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+$')
        unique,
    "phone"      text null
        constraint phone_pattern
            check ( phone ~ '^\+[1-9]\d{1,14}$' ),
    "link"       text null

);

create table if not exists "speciality_employee"
(
    "speciality_id" uuid references "speciality" on update cascade on delete set null,
    "employeeId"   uuid references "employee" on update cascade on delete set null,
    constraint speciality_employee_pkey primary key ("speciality_id", "employeeId")
);

create table if not exists "certificate"
(
    "id"                     uuid primary key default gen_random_uuid(),
    "employeeId"             uuid not null references "employee",
    "certificateName"        text not null,
    "certificateDescription" text not null,
    "office"                 text not null
);

create table if not exists "employee_certificate"
(
    "employeeId"    uuid references "employee" on update cascade on delete set null,
    "certificateId" uuid references "certificate" on update cascade on delete set null

);

create table if not exists "software"
(
    "id"        uuid primary key default gen_random_uuid(),
    "link"      text null



);

create table if not exists "attachmentType"
(
    "id"       uuid primary key default gen_random_uuid(),
    "typeName" text not null
);

create table if not exists "attachment"
(
    "id"     uuid primary key default gen_random_uuid(),
    "typeId" uuid not null references "attachmentType",
    "link"   text null


);

create table if not exists "page"
(
    "id"   uuid primary key default gen_random_uuid(),
    "link" text null


);

create table if not exists "page_attachment"
(
    "pageId"       uuid references "page" on update cascade on delete set null,
    "attachmentId" uuid references "attachment" on update cascade on delete set null,
    constraint page_attachment_pkey primary key ("pageId", "attachmentId")
)