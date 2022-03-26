insert into "eventPriority" ("priorityName", "priorityDescription")
VALUES ('global', 'Общесистемные уведомления');
insert into "eventPriority" ("priorityName", "priorityDescription")
VALUES ('low', 'Уведомление низкого приоритета');
insert into "eventPriority" ("priorityName", "priorityDescription")
VALUES ('medium', 'Уведомление среднего приоритета');
insert into "eventPriority" ("priorityName", "priorityDescription")
VALUES ('high', 'Уведомление высокого приоритета');
insert into "eventPriority" ("priorityName", "priorityDescription")
VALUES ('haf', 'Уведомление самого высокого приоритета');

insert into "speciality" ("specialityName")
values ('Прикладная математика и информатика');
insert into "speciality" ("specialityName")
values ('Математика и компьютерные науки');
insert into "speciality" ("specialityName")
values ('Биология');
insert into "speciality" ("specialityName")
values ('Почвоведение');
insert into "speciality" ("specialityName")
values ('Радиотехника');
insert into "speciality" ("specialityName")
values ('Приборостроение');
insert into "speciality" ("specialityName")
values ('Программная инженерия');
insert into "speciality" ("specialityName")
values ('Информационная безопасность');
insert into "speciality" ("specialityName")
values ('Информационные системы и технологии');
insert into "speciality" ("specialityName")
values ('Биотехнические системы и технологии');

insert into "group" ("specialityId", "groupName")
VALUES ('bb3899a7-0918-4359-b4fd-95a3aec0ee19', 'ИСТ-120'),
       ('bb3899a7-0918-4359-b4fd-95a3aec0ee19', 'ИСТ-220'),
       ('bb3899a7-0918-4359-b4fd-95a3aec0ee19', 'ИСТ-121'),
       ('bb3899a7-0918-4359-b4fd-95a3aec0ee19', 'ИСТ-221'),
       ('bb3899a7-0918-4359-b4fd-95a3aec0ee19', 'ИСТ-118'),
       ('bb3899a7-0918-4359-b4fd-95a3aec0ee19', 'ИСТ-218'),
       ('bb3899a7-0918-4359-b4fd-95a3aec0ee19', 'ИСТ-119'),
       ('bb3899a7-0918-4359-b4fd-95a3aec0ee19', 'ИСТ-219'),
       ('0c5341e4-a224-417d-a4b2-18c0f426e241', 'ПРИ-120'),
       ('0c5341e4-a224-417d-a4b2-18c0f426e241', 'ПРИ-220');

insert into "event" ("eventPriorityId", "groupId", "eventText", "eventDate")
VALUES ('26c3f6c3-464f-4fdb-8e94-e34c4fed1b87', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Сдать лабораторную работу по УД', CURRENT_TIMESTAMP),
       ('26c3f6c3-464f-4fdb-8e94-e34c4fed1b87', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Сдать лабораторную работу по ТП', CURRENT_TIMESTAMP),
       ('26c3f6c3-464f-4fdb-8e94-e34c4fed1b87', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Сдать лабораторную работу по МТ', CURRENT_TIMESTAMP),
       ('f76d8b21-f41c-43c7-826c-3d8d56188e49', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Сдать второй этап по УД', CURRENT_TIMESTAMP),
       ('f76d8b21-f41c-43c7-826c-3d8d56188e49', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Пройти тест по БИТ', CURRENT_TIMESTAMP),
       ('f76d8b21-f41c-43c7-826c-3d8d56188e49', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Отправить эссе по английскому', CURRENT_TIMESTAMP),
       ('5ac0573a-a5a6-4446-af02-e454c4d31f9a', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Подготовится к экзамену по УД', CURRENT_TIMESTAMP),
       ('5ac0573a-a5a6-4446-af02-e454c4d31f9a', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Подготовится к экзамену по ПНП', CURRENT_TIMESTAMP),
       ('5ac0573a-a5a6-4446-af02-e454c4d31f9a', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Завтра крайний срок сдачи проекта', CURRENT_TIMESTAMP),
       ('0724b361-72c8-478a-8255-8146bbacdbf4', '955391a5-5988-4ab4-9284-fcd7938f8525',
        'Завтра последняя пересдача по ТП', CURRENT_TIMESTAMP);

insert into "subject" ("groupId", "subjectName", semester)
values ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Интерактивные графические системы', 5),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Моделирование систем', 5),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Распределенные программные системы', 5),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Теория информационных процессов и систем', 5),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Технологии программирования', 5),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Тестирование программного обеспечения', 5),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Экономика', 5),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Элективные занятия по физической культуре', 5),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Элективные занятия по физической культуре', 6),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'CASE-технологии', 6),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Администрирование и безопасность программно-информационных систем', 6),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Геоинформационные технологии', 6),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Основы разработки веб-приложений', 6),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', 'Распределенные программные системы', 6);

insert into "quiz" ("subjectId", "quizName", "quizDescription")
VALUES ('e498f712-ec0e-4482-b206-566b14c5ce8c', 'Рейтинг1 ТПО', 'Подготовка к рейтингу 1 по тестированию ПО'),
       ('e498f712-ec0e-4482-b206-566b14c5ce8c', 'Рейтинг2 ТПО', 'Подготовка к рейтингу 2 по тестированию ПО'),
       ('e498f712-ec0e-4482-b206-566b14c5ce8c', 'Рейтинг3 ТПО', 'Подготовка к рейтингу 3 по тестированию ПО'),
       ('c31fa542-a129-4cf5-a154-2c067cb3f135', 'Рейтинг1 case', 'Подготовка к рейтингу 1 по case-тухнологиям'),
       ('c31fa542-a129-4cf5-a154-2c067cb3f135', 'Рейтинг2 case', 'Подготовка к рейтингу 1 по case-тухнологиям'),
       ('c31fa542-a129-4cf5-a154-2c067cb3f135', 'Рейтинг3 case', 'Подготовка к рейтингу 1 по case-тухнологиям'),
       ('7d72d556-b9d9-461e-8935-a82fa3c958aa', 'Рейтинг1 тп', 'Подготовка к рейтингу 1 по тп'),
       ('7d72d556-b9d9-461e-8935-a82fa3c958aa', 'Рейтинг2 тп', 'Подготовка к рейтингу 1 по тп'),
       ('7d72d556-b9d9-461e-8935-a82fa3c958aa', 'Рейтинг3 тп', 'Подготовка к рейтингу 1 по тп'),
       ('e3eccebf-332c-4df1-bd25-d4381a5e17f4', 'Рейтинг1',
        'Подготовка к рейтингу 1 по Администрирование и безопасность программно-информационных систем');

insert into "question" ("quizId", "questionText")
values ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое объект?'),
       ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое метод?'),
       ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое класс?'),
       ('bb17e9d3-0c75-4ee2-a8193e897a79cb2c', 'Что такое полиморфизм?'),
       ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое наследование?'),
       ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое инкапсуляция?'),
       ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое делегат?'),
       ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое интерфейс?'),
       ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое лямба-выражения?'),
       ('bb17e9d3-0c75-4ee2-a819-3e897a79cb2c', 'Что такое поток?');

insert into "quizVariant"("questionId", "quizVariantText", "isCorrect")
VALUES ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'Экземпляр класса', true),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'класс', false),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'метод', false),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'namespace', false),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'framework', false),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'library', false),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'свойство', false),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'атрибут', false),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'любовь', false),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', '42', true);
insert into "user" ("groupId", "accountId", "roleId", "firstName", "lastName")
values ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров'),
       ('955391a5-5988-4ab4-9284-fcd7938f8525', '5f1f1655-0198-44fd-9adc-7d1ed4ae2c99',
        '1168bd3e-2706-488e-82d0-a086f6ee2e47', 'Иван', 'Петров');

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

insert into "role" ("roleName", "roleDescription")
values ('Студент', 'Чтение страниц'),
       ('Редактор', 'Предложение изменений'),
       ('Староста', 'Внесение изменений'),
       ('Модератор', 'Глобальная поддержка');

insert into "quizHistory" ("questionId", "selectedVariantId", "userId", "quizSubmitDate")
VALUES ('aa391ea4-7076-4812-8aac-c4fc82da63d2', '723f1d3c-562b-4c78-9f39-645df6f17058',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', '9abe98eb-5089-49ae-8117-cccaaa9f4201',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', '8e045dff-79a4-411e-a808-598bcb64cf7d',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'b8a35801-b32d-4880-af45-82439a694f2a',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'c3c942d2-7f95-41a3-b906-81c802fa124b',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'dcfcd7fe-5f53-4839-8237-b8a3a2aadf6a',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', '63fb15a8-30a5-42f7-9158-cefdf81e2ead',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'e6485083-9080-43ef-871a-7e73da38c2da',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', 'e385a894-22b0-4d8c-bb68-ed25ca42e778',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP),
       ('aa391ea4-7076-4812-8aac-c4fc82da63d2', '37ccda4a-b7e8-49ec-92b2-e59796dc4392',
        'd5951d41-d487-441d-b579-b2cd1e837bad', CURRENT_TIMESTAMP);




