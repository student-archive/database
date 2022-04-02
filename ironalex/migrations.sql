alter table "tutor" add column "isWorking" boolean not null default true;
alter table "event" add column "user_id" uuid references "user";
alter table "event" alter column "group_id" drop not null;