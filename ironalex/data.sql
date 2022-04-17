insert into "event_priority" ("priority_name", "priority_description")
    values ('global', 'Общесистемные уведомления')
         , ('low', 'Уведомление низкого приоритета')
         , ('medium', 'Уведомление среднего приоритета')
         , ('high', 'Уведомление высокого приоритета')
         , ('haf', 'Уведомление самого высокого приоритета');

insert into "event" ("event_priority_id", "group_id", "event_text", "event_date")
    values ((select "id" from "event_priority" where "priority_name" = 'low' limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Сдать лабораторную работу по УД', current_timestamp)
         , ((select "id" from "event_priority" where "priority_name" = 'low' limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Сдать лабораторную работу по ТП', current_timestamp)
         , ((select "id" from "event_priority" where "priority_name" = 'low' limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Сдать лабораторную работу по МТ', current_timestamp)
         , ((select "id"
                 from "event_priority"
                 where "priority_name" = 'medium'
                 limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Сдать второй этап по УД', current_timestamp)
         , ((select "id"
                 from "event_priority"
                 where "priority_name" = 'medium'
                 limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Пройти тест по БИТ', current_timestamp)
         , ((select "id"
                 from "event_priority"
                 where "priority_name" = 'medium'
                 limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Отправить эссе по английскому', current_timestamp)
         , ((select "id"
                 from "event_priority"
                 where "priority_name" = 'high'
                 limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Подготовится к экзамену по УД', current_timestamp)
         , ((select "id"
                 from "event_priority"
                 where "priority_name" = 'high'
                 limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Подготовится к экзамену по ПНП', current_timestamp)
         , ((select "id" from "event_priority" where "priority_name" = 'haf' limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Завтра крайний срок сдачи проекта', current_timestamp)
         , ((select "id" from "event_priority" where "priority_name" = 'haf' limit 1), (select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), 'Завтра последняя пересдача по ТП', current_timestamp);

insert into "quiz" ("subject_id", "quiz_name", "quiz_description", "questions_amount")
    values ((select "id"
                 from "subject"
                 where "subject_name" = 'Тестирование программного обеспечения'
                 limit 1), 'Рейтинг1 ТПО', 'Подготовка к рейтингу 1 по тестированию ПО', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'Тестирование программного обеспечения'
                 limit 1), 'Рейтинг2 ТПО', 'Подготовка к рейтингу 2 по тестированию ПО', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'Тестирование программного обеспечения'
                 limit 1), 'Рейтинг3 ТПО', 'Подготовка к рейтингу 3 по тестированию ПО', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'CASE-технологии'
                 limit 1), 'Рейтинг1 case', 'Подготовка к рейтингу 1 по case-тухнологиям', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'CASE-технологии'
                 limit 1), 'Рейтинг2 case', 'Подготовка к рейтингу 1 по case-тухнологиям', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'CASE-технологии'
                 limit 1), 'Рейтинг3 case', 'Подготовка к рейтингу 1 по case-тухнологиям', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'Технологии программирования'
                 limit 1), 'Рейтинг1 тп', 'Подготовка к рейтингу 1 по тп', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'Технологии программирования'
                 limit 1), 'Рейтинг2 тп', 'Подготовка к рейтингу 1 по тп', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'Технологии программирования'
                 limit 1), 'Рейтинг3 тп', 'Подготовка к рейтингу 1 по тп', 10)
         , ((select "id"
                 from "subject"
                 where "subject_name" = 'Администрирование и безопасность программно-информационных систем'
                 limit 1), 'Рейтинг1', 'Подготовка к рейтингу 1 по Администрирование и безопасность программно-информационных систем', 10);

insert into "question" ("quiz_id", "question_text", "correct_answers_amount", "total_answers_amount")
    values ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое объект?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое метод?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое класс?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое полиморфизм?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое наследование?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое инкапсуляция?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое делегат?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое интерфейс?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое лямба-выражения?', 2, 10)
         , ((select "id" from "quiz" where "quiz_name" = 'Рейтинг1 тп' limit 1), 'Что такое поток?', 2, 10);

insert into "quiz_variant"("question_id", "quiz_variant_text", "is_correct")
    values ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'Экземпляр класса', true)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'класс', false)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'метод', false)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'namespace', false)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'framework', false)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'library', false)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'свойство', false)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'атрибут', false)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), 'любовь', false)
         , ((select "id" from "question" where "question_text" = 'Что такое объект?' limit 1), '42', true);

insert into "quiz_history" ("question_id", "selected_variant_id", "user_id")
    values ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1))
         , ((select "id"
                 from "question"
                 where "question_text" = 'Что такое объект?'
                 limit 1), (select "id" from "quiz_variant" order by random() limit 1), (select "id" from "user" order by random() limit 1));

insert into "quiz_result" ("quiz_id", "user_id", "result", "quiz_submit_date")
    values ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp)
         , ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp)
         , ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp)
         , ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp)
         , ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp)
         , ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp)
         , ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp)
         , ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp)
         , ((select "id" from "quiz" order by random() limit 1), (select "id" from "user" order by random() limit 1), (select random() * 10 + 1), current_timestamp);

insert into "trash"("group_id", "deleted_id", "deleted_date")
    values ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "attachment" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "user" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "quiz" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "quiz_result" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "quiz_history" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "question" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "tutor" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "employee" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "software" order by random() limit 1), current_timestamp)
         , ((select "id" from "group" where "group_name" = 'ИСТ-120' limit 1), (select "id" from "event" order by random() limit 1), current_timestamp);
