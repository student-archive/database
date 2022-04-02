-- Переименование поля
alter table "attachment"
    rename "author_1" to "author";

-- Изменение поля
alter table "attachment"
    alter column "author" drop default;

-- Переименование поля
alter table "quiz"
    rename "amount_of_questions" to "questions_amount";

-- Изменение поля
alter table "quiz"
    alter column "quiz_description" drop not null;

-- Переименование поля
alter table "user"
    rename "image_link" to "avatar_link";

-- Изменение поля
alter table "user"
    alter column "avatar_link" drop not null;