alter table "tutor" add column "isWorking" boolean not null default true;
alter table "event" add column "userId" uuid references "user";
alter table "event" alter column "groupId" drop not null;