insert into "account" ("email", "password_hash", "last_active_date")
values ('dadyarri@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email1@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email2@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email3@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email4@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email5@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email6@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email7@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email8@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP),
       ('email9@gmail.com', 'zvtlclyfzayvunwhzzdvyk', CURRENT_TIMESTAMP);

insert into "invite_code" ("invite_code")
values ('edlvbrhfbekjc'),
       ('dsfvfdobfvlkn'),
       ('dvfbfvfbfdvvv'),
       ('bfdnbgnvgfnbb'),
       ('bfdnbgnvgfnbb');

insert into "invite_code" ("invite_code", "is_valid", "account_id", "activated_date")
values ('dfiofjvfdeccd', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('sdlvccdflskvn', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('vsvfvbfdbfbbn', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('dsvfnhmujynny', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('vsvfvbfdbfbbn', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP),
       ('dsvfnhmujynny', false, (select "id" from "account" order by random() limit 1), CURRENT_TIMESTAMP);

insert into "speciality" ("speciality_name")
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

insert into "group" ("speciality_id", "group_name", university_id)
values ((select "id" from "speciality" where "speciality_name" = 'Информационные системы и технологии' limit 1),
        'ИСТ-120', (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Программная инженерия' limit 1), 'ПРИ-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Вычислительная техника' limit 1), 'ВТ-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Прикладная информатика' limit 1), 'ПИ-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Управление системами' limit 1), 'УС-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Математика и компьютерные науки' limit 1), 'МКН-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Радиотехника' limit 1), 'Р-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Биология' limit 1), 'Б-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Приборостроение' limit 1), 'П-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1)),
       ((select "id" from "speciality" where "speciality_name" = 'Информационная безопасность' limit 1), 'ИБ-120',
        (select "id" from "university" where "university_name" = 'ВлГУ' limit 1));

insert into "role" ("role_name", "role_description")
values ('Студент', 'Чтение страниц'),
       ('Редактор', 'Предложение изменений'),
       ('Староста', 'Внесение изменений'),
       ('Модератор', 'Глобальная поддержка');

insert into "user" ("group_id", "account_id", "role_id", "sex_id", "first_name", "last_name", "avatar_link")
values ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD'),
       ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1),
        (select "id" from "account" order by random() limit 1),
        (select "id" from "role" where "role_name" = 'Студент' limit 1),
        (select "id" from "sex" where "sex_name" = 'мужчина' limit 1), 'Иван', 'Петров',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzoo.dp.ua%2Fafrikanskij-karlikovyj-ezhik-osobennosti-porody-i-soderzhaniya%2F&psig=AOvVaw2Y8bZX448BRvER0nnTF3FC&ust=1649007025458000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDG6oP09fYCFQAAAAAdAAAAABAD');


insert into "subject" ("group_id", "subject_name", semester)
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

insert into "tutor" ("first_name", "last_name", "patronymic", "is_working")
values ('Кириллова', 'Светлана', 'Юрьевна', true),
       ('Озерова', 'Марина', 'Игоревна', true),
       ('Шамышева', 'Ольга', 'Николаевна', true),
       ('Вершинин', 'Виталий', 'Васильевич', true),
       ('Курочкин', 'Сергей', 'Васильевич', true),
       ('Проскурина', 'Галина', 'Владимировна', true),
       ('Салех', 'Хади', 'Мухаммед', true),
       ('Ланская', 'Майя', 'Сергеевна', true),
       ('Данилов', 'Владислав', 'Валерьевич', true),
       ('Жигалов', 'Илья', 'Евгеньевич', true);

insert into "subject_tutor" ("subject_id", "tutor_id")
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

insert into "sex" ("id", "sex_name")
values (0, "неизвестно"),
       (1, "мужчина"),
       (2, "женщина"),
       (9, "неприменимо");

insert into "university"("university_name")
values ("ВлГУ"),
       ("РАНХиГС"),
       ("МТУСИ"),
       ("МАИ"),
       ("Финансовый университет"),
       ("МФТИ"),
       ("МИРЭА"),
       ("ИТМО"),
       ("Моссковский политех"),
       ("МГУ");