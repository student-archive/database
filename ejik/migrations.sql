-- Добавление поля
alter table "attachment"
    add column "checksum1" text;

-- Удаление поля
alter table "attachment"
    drop column "checksum1";

-- Переименование поля
alter table "attachment"
    rename "author" to "author_1";

-- Изменение поля
alter table "attachment"
    alter column "author_1" set default 'Вершинин';

update "attachment" set "author_1" = 'Вершинин' where "author_1" is null;

alter table "attachment"
    alter column "author_1" set not null;

-- Добавление поля
alter table "quiz"
    add column "some_col" text;

-- Удаление поля
alter table "quiz"
    drop column "some_col";

-- Переименование поля
alter table "quiz"
    rename "questions_amount" to "amount_of_questions";

-- Изменение поля
alter table "quiz"
    alter column "quiz_description" drop not null;

-- Добавление поля
alter table "user"
    add column "collect_telemetry" boolean;

-- Удаление поля
alter table "user"
    drop column "collect_telemetry";

-- Переименование поля
alter table "user"
    rename "avatar_link" to "image_link";

-- Изменение поля
alter table "user"
    alter column "image_link" drop not null;