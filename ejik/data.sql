insert into "attachment_type" ("type_name")
values ('Методички'),
       ('Видео'),
       ('Учебники'),
       ('Статьи');

insert into "employee_position" ("position")
values ('Директор'),
       ('Проректор'),
       ('Секретарь'),
       ('Работник');

insert into "attachment" ("type_id", "link","checksum")
values ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/s/v1/doc/I7ytkYPa88wOSnYH0DuNqjqbaYf4wTPItcodzv36n67sRkDyQ7I','E60F4D895ADAC6961E1C95560F174394238D6A01'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/s/v1/doc/uSiHAquVX5pi_Z9ZgX5Hmuwtn1KDXTRu6fxFt5s7CG3i9cktNWY','E60F4D895ADAC6961E1C95560F174394238D6A02'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/s/v1/doc/u1xvnpF85jfbtPP9ZuIAgBiaZg0zoZHDTVWYLDF-RUK-Z5QC2hs','E60F4D895ADAC6961E1C95560F174394238D6A03'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/doc452041075_588289056','E60F4D895ADAC6961E1C95560F174394238D6A04'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/doc452041075_590431890','E60F4D895ADAC6961E1C95560F174394238D6A05'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/doc452041075_580849301','E60F4D895ADAC6961E1C95560F174394238D6A06'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/doc452041075_578284991','E60F4D895ADAC6961E1C95560F174394238D6A07'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/s/v1/doc/3LPOqEUh-z-KBV1SN2oI2lF_SS89Szs5azgjklZZL4G3SrN2RHY','E60F4D895ADAC6961E1C95560F174394238D6A08'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/s/v1/doc/_rJ5Lur_rYDnZ4j-6Q0OWsryAKLJS5p24KtpIov1Nsd-DXGQzOI','E60F4D895ADAC6961E1C95560F174394238D6A09'),
       ((select "id" from "attachment_type" order by random() limit 1),
        'https://vk.com/s/v1/doc/yEA81_7cif89xkAu8gb_SCMFuY327YAHV3gIh__K6cyCW3nNF6Y','E60F4D895ADAC6961E1C95560F174394238D6A10');

insert into "software" ("subject_id", "link","description")
values ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/rutracker','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное'),
       ((select "id" from "subject" order by random() limit 1),
        'https://torrentnote.ru/torrent-site/torrentino','нечто странное');

insert into "page" ("link")
values ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c48'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c49'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c50'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c51'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c52'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c53'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c54'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c55'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c56'),
       ('https://vk.com/im?peers=229126128_c18_c31_189321936&sel=c57');

insert into "page_attachment" ("page_id", "attachment_id")
values ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1)),
       ((select "id" from "page" order by random() limit 1), (select "id" from "attachment" order by random() limit 1));

insert into "employee" ("first_name", "last_name", patronymic)
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

insert into "certificate" ("employee_id", "certificate_name", "certificate_description", office)
values ((select "id" from "employee" order by random() limit 1), 'Справка №789545', 'справка не твое дело1', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №786545', 'справка не твое дело2', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №785545', 'справка не твое дело3', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №784545', 'справка не твое дело4', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №78955', 'справка не твое дело5', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №78954', 'справка не твое дело6', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №78945', 'справка не твое дело7', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №78545', 'справка не твое дело8', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №89545', 'справка не твое дело9', '402-2'),
       ((select "id" from "employee" order by random() limit 1), 'Справка №78545', 'справка не твое дело10', '402-2');

insert into "employee_certificate" ("employee_id", "certificate_id")
values ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1)),
       ((select "id" from "employee" order by random() limit 1),
        (select "id" from "certificate" order by random() limit 1));

insert into "speciality_employee" ("speciality_id", "employee_id")
values ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "speciality" order by random() limit 1),
        (select "id" from "employee" order by random() limit 1));

insert into "employee_employee_position" ("employee_position_id", "employee_id")
values ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1)),
       ((select "id" from "employee_position" order by random() limit 1), (select "id" from "employee" order by random() limit 1));
