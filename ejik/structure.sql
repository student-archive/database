create table if not exists "speciality"
(
    "id"             uuid primary key default gen_random_uuid(),
    "specialityName" text not null
);