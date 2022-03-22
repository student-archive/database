insert into "account" ("email", "passwordHash")
values ('dadyarri@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email1@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email2@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email3@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email4@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email5@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email6@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email7@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email8@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "account" ("email", "passwordHash")
values ('email9@gmail.com', 'zvtlclyfzayvunwhzzdvyk');

insert into "inviteCode" ("inviteCode")
values ('edlvbrhfbekjc');

insert into "inviteCode" ("inviteCode", "isValid", "accountId", "activatedDate")
values ('dfiofjvfdeccd', false, 'c2ab05b4-ccae-4eb0-a428-fcc902085e08', CURRENT_TIMESTAMP);

insert into "inviteCode" ("inviteCode")
values ('dsfvfdobfvlkn');

insert into "inviteCode" ("inviteCode", "isValid", "accountId", "activatedDate")
values ('sdlvccdflskvn', false, 'ed0ffffb-0c7a-4993-8686-887eb4320a76', CURRENT_TIMESTAMP);

insert into "inviteCode" ("inviteCode")
values ('dvfbfvfbfdvvv');

insert into "inviteCode" ("inviteCode", "isValid", "accountId", "activatedDate")
values ('vsvfvbfdbfbbn', false, '1b5bde5d-29ae-4a15-8f43-6d593437ab31', CURRENT_TIMESTAMP);

insert into "inviteCode" ("inviteCode")
values ('bfdnbgnvgfnbb');

insert into "inviteCode" ("inviteCode", "isValid", "accountId", "activatedDate")
values ('dsvfnhmujynny', false, '70431080-6734-49f3-8ac3-b536c506aefe', CURRENT_TIMESTAMP);

insert into "inviteCode" ("inviteCode", "isValid", "accountId", "activatedDate")
values ('vsvfvbfdbfbbn', false, '1b5bde5d-29ae-4a15-8f43-6d593437ab31', CURRENT_TIMESTAMP);

insert into "inviteCode" ("inviteCode")
values ('bfdnbgnvgfnbb');

insert into "inviteCode" ("inviteCode", "isValid", "accountId", "activatedDate")
values ('dsvfnhmujynny', false, '70431080-6734-49f3-8ac3-b536c506aefe', CURRENT_TIMESTAMP);

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
values ('f425e307-5ebe-4678-830f-7182300cfd24', 'ИСТ-120'),
       ('26a1f92b-6f5f-43da-9ca4-d7a2fa955d0c', 'ПРИ-120'),
       ('0f041f87-0750-4be8-b29b-136de3a05c7c', 'ВТ-120'),
       ('11374edf-e9cf-4e13-b8af-8d7e2f9718a0', 'ПИ-120'),
       ('16336444-e6ab-4dd8-ba81-17d8c14146f4', 'УС-120'),
       ('9824324c-4560-487e-83a3-d0bd2374fda6', 'МКН-120'),
       ('7665a992-98dc-4d48-a26d-73e500d5ebe0', 'Р-120'),
       ('7ff85aec-60e3-40f8-8e79-1cb690817c09', 'Б-120'),
       ('73cc18af-8d3a-4a32-9bbf-97042a9a75c3', 'П-120'),
       ('1f98166a-9877-4a79-aaf8-04304f48cd8c', 'ИБ-120');

insert into "role" ("roleName", "roleDescription")
values ('Студент', 'Чтение страниц'),
       ('Редактор', 'Предложение изменений'),
       ('Староста', 'Внесение изменений'),
       ('Модератор', 'Глобальная поддержка');

insert into "user" ("groupId", "accountId", "roleId", "firstName", "lastName")
values ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров'),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', '70431080-6734-49f3-8ac3-b536c506aefe',
        'e3c68900-cc4a-4456-890e-339a534aa9d9', 'Иван', 'Петров');

insert into "subject" ("groupId", "subjectName", semester)
values ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Интерактивные графические системы', 5),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Моделирование систем', 5),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Распределенные программные системы', 5),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Теория информационных процессов и систем', 5),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Технологии программирования', 5),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Тестирование программного обеспечения', 5),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Экономика', 5),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Элективные занятия по физической культуре', 5),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Элективные занятия по физической культуре', 6),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'CASE-технологии', 6),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Администрирование и безопасность программно-информационных систем', 6),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Геоинформационные технологии', 6),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Основы разработки веб-приложений', 6),
       ('db0e3cc0-b1a6-4af4-84cb-e8273eef7506', 'Распределенные программные системы', 6);

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

insert into "subject_tutor" ("subjectId", "tutorId")
values ('282dd893-c98e-42cf-b05b-3d8388710ad8', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('c5347498-52be-43b9-b367-063ff04ccd11', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('e8f428d2-12d8-449f-8fbd-55d6baaad66a', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('255d11ac-3a16-4d8d-9c07-7c39b8aa2d50', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('347e08a9-c1c0-4204-b59c-e380d5fa9e25', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('de339851-f17d-47e6-982e-ffb33892e71c', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('e5ca6cc5-d6ec-4676-b3a5-51e96736f3c2', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('f3a07270-0040-4c3f-b663-b6b1aac61473', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('6d460d05-15ad-4a76-8995-8e24965d212a', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509'),
       ('90e5974a-41a5-414c-b0e6-2eab9e91f7d8', '04d2fbcf-68ee-4d77-9bcc-dae0d3cb8509');

