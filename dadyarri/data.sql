insert into "account" ("email", "passwordHash")
values ('dadyarri@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email1@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email2@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email3@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email4@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email5@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email6@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email7@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email8@gmail.com', 'zvtlclyfzayvunwhzzdvyk'),
       ('email9@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "inviteCode" ("inviteCode")
values ('edlvbrhfbekjc'),
       ('dsfvfdobfvlkn'),
       ('dvfbfvfbfdvvv'),
       ('bfdnbgnvgfnbb'),
       ('bfdnbgnvgfnbb');

insert into "inviteCode" ("inviteCode", "isValid", "accountId", "activatedDate")
values ('dfiofjvfdeccd', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('sdlvccdflskvn', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('vsvfvbfdbfbbn', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('dsvfnhmujynny', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('vsvfvbfdbfbbn', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('dsvfnhmujynny', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP);

insert into "speciality" ("specialityName")
values ('Информационные системы и технологии'),
       ('Программная инженерия'),
       ('Вычислительная техника'),
       ('Прикладная информатика'),
       ('Управление системами'),
       ('Математика и компьютерные науки'),
       ('Радиотехника'),
       ('Биология'),
       ('Приборостроение'),
       ('Информационная безопасность');

insert into "group" ("specialityId", "groupName")
values ((select "id" from "speciality" where "specialityName" = 'Информационные системы и технологии' limit 1),
        'ИСТ-120'),
       ((select "id" from "speciality" where "specialityName" = 'Программная инженерия' limit 1), 'ПРИ-120'),
       ((select "id" from "speciality" where "specialityName" = 'Вычислительная техника' limit 1), 'ВТ-120'),
       ((select "id" from "speciality" where "specialityName" = 'Прикладная информатика' limit 1), 'ПИ-120'),
       ((select "id" from "speciality" where "specialityName" = 'Управление системами' limit 1), 'УС-120'),
       ((select "id" from "speciality" where "specialityName" = 'Математика и компьютерные науки' limit 1), 'МКН-120'),
       ((select "id" from "speciality" where "specialityName" = 'Радиотехника' limit 1), 'Р-120'),
       ((select "id" from "speciality" where "specialityName" = 'Биология' limit 1), 'Б-120'),
       ((select "id" from "speciality" where "specialityName" = 'Приборостроение' limit 1), 'П-120'),
       ((select "id" from "speciality" where "specialityName" = 'Информационная безопасность' limit 1), 'ИБ-120');

insert into "role" ("roleName", "roleDescription")
values ('Студент', 'Чтение страниц'),
       ('Редактор', 'Предложение изменений'),
       ('Староста', 'Внесение изменений'),
       ('Модератор', 'Глобальная поддержка');

insert into "user" ("groupId", "accountId", "roleId", "firstName", "lastName")
values ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров'),
       ((select "id" from "group" where "groupName" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "roleName" = 'Студент' limit 1), 'Иван', 'Петров');

insert into "subject" ("groupId", "subjectName", semester)
values ((select "id" from "group" order by random() limit 1), 'Интерактивные графические системы', 5),
       ((select "id" from "group" order by random() limit 1), 'Моделирование систем', 5),
       ((select "id" from "group" order by random() limit 1), 'Распределенные программные системы', 5),
       ((select "id" from "group" order by random() limit 1), 'Теория информационных процессов и систем', 5),
       ((select "id" from "group" order by random() limit 1), 'Технологии программирования', 5),
       ((select "id" from "group" order by random() limit 1), 'Тестирование программного обеспечения', 5),
       ((select "id" from "group" order by random() limit 1), 'Экономика', 5),
       ((select "id" from "group" order by random() limit 1), 'Элективные занятия по физической культуре', 5),
       ((select "id" from "group" order by random() limit 1), 'Элективные занятия по физической культуре', 6),
       ((select "id" from "group" order by random() limit 1), 'CASE-технологии', 6),
       ((select "id" from "group" order by random() limit 1),
        'Администрирование и безопасность программно-информационных систем', 6),
       ((select "id" from "group" order by random() limit 1), 'Геоинформационные технологии', 6),
       ((select "id" from "group" order by random() limit 1), 'Основы разработки веб-приложений', 6),
       ((select "id" from "group" order by random() limit 1), 'Распределенные программные системы', 6);

insert into "tutor" ("firstName", "lastName", patronymic)
values ('Кириллова', 'Светлана', 'Юрьевна'),
       ('Озерова', 'Марина', 'Игоревна'),
       ('Шамышева', 'Ольга', 'Николаевна'),
       ('Вершинин', 'Виталий', 'Васильевич'),
       ('Курочкин', 'Сергей', 'Васильевич'),
       ('Проскурина', 'Галина', 'Владимировна'),
       ('Салех', 'Хади', 'Мухаммед'),
       ('Ланская', 'Майя', 'Сергеевна'),
       ('Данилов', 'Владислав', 'Валерьевич'),
       ('Жигалов', 'Илья', 'Евгеньевич');

insert into "subject_tutor" ("subject_id", "tutorId")
values ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1)),
       ((select "id" from "subject" order by random() limit 1), (select "id" from "tutor" order by random() limit 1));

