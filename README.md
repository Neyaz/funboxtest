#Level 1

##Q1

Capistrano - удобный гем для деплоя, в отличии от Jenkins, нет необходимости устанвливать его на сервер.
При инициализации можно указывать ветку и сервер для деплоя.

Factory girl и ffaker - удобное создание фикстур. Фикстуры часто пригождаются для создания тестовых данных.

Rspec - как стандартный гем для тестирования

Pry - гем для дебагга. Дает возможность раставлять брейкпоинты и проходить по коду, что бывает часто удобней, чем выводить в консоль.

Puma - application web server. Быстро устанавливается, умеет многопоточность, легкая.

Rubocop - для проверки код стайла, но по факту я скорее использую сторонние сервисы такие как Codeclimat или HoundCI, но в Codeclimat так же проверяют code style рубокопом

Nokogiri - для парсинга html и xml

##Q2

Я бы уделил внимание Code Review т.к. это помогает избегать опечаток и помогает быстрее расти менее опытным программистам,
которые ревьювят код более опытных коллег. В следствии чего мне бы очень помогли соглашения по типу: подключенного сервиса для проверки code style в pull request и перед мерджем pull request должен апрувнуть хотя бы один коллега.

##Q3

На ruby нет, немного писал на erlang. Вообще плюс функционального стиля - это меньшее количество кода т.к. функианальный подход более выразительный за счет
функций высшего порядка, каррирования, паттерн матчинга и т.д., отсутствие побочных эффектов в функциях за счет иммутабельности
и готовность к распаралелеванию.

##Q4

Symfony2 - вобрал в себя все удачные решения Django и Rails и добавил свои особенности. К примеру внедрение зависимостей,
что делает код менее связанным между друг друга и использвание doctine2 как ORM.

Asp.Net - плюсы свзяаны с плюсами языка C#. Например, очень удобен linq to sql.

Rails - плюсы в экосистеме во круг языка. Т.к. с помощью гемов и некоторых фич языка достигается возможность легко добавлять функционал в проект. В других языках часто требуется очень много добавлять в конфиг файлы чтобы сторонняя библиотека заработала.

Если пишется библиотека, скрипт, утилита или проект, который помогает создавать конечный продукт, то это разумнее писать
без фреймворка. На фреймворках пишут уже конечный продукт, который предназначен будет для взаимодействия с пользователем.

##Q5

Конкретно в своей работе, то breakpoints, а когда пишу на ruby, то гем pry, либо вывод значения переменной в консоль с помощью puts.

MySQL, PostgreSQL.

##Q6
нет ответа

##Q7

PHP, C#, Golang


#Level 2

##Q1

Так происходит т.к. числа с плавющей точкой состоят включают в себя 32 бита, где 1 бит приходится на знак, 8 на экспоненту и 23 на мантису. И при операциях мантиса одного числа может отличаться от мантисы второго, что собственно делает два этих числа не равными.

##Q2

Я бы использовал json т.к. он сочетает в себе удобство и легковестность. Можно, конечно, использовать просто байткод или строку, но это будет значительно менее удобно, а плюсы от скорости будут минимальны. Так же для всех языков программирования есть библиотеки для работы с этим форматом, что значительно ускоряет разработку.
Из технологий я бы использовал golang т.к. компилируемый и втроенные сопрограммы или Elixir, который является языком на erlang vm и сочетает в себе плюсы erlang (а erlang как один из лучших языков для создания бекенда, который часто принимает\отправляет запрос\ответ) и синтаксис ruby. Так же postgreSQL и Redis. Redis для создания очереди отправки и после отправки уже сохранять их в postrge для выдачи во фронтенд.

##Q3

Треды имеют меньший оверхед, могут расшаривать участки памяти, эффективно работают в мультипроцессинговых или мультиядерных системах, но имеют трудности с дебагом, в следствии чего можно получить race condition или неожиданное поведение кода.
Форк - это клонированый родительский или какой-либо другой процесс. Для каждого форка выделяется свой участок виртуальной памяти. Их проще создавать и дебажить, чем треды, но они тяжелей и медленней.
Соотвественно форки имеет смысл создавать для маленьких задач, которые не занимают много памяти и не требуют какой-то большой скорости исполнения.

##Q4

Есть класс treads с помощью которого можно организовать ассинхронную работу, либо использовать EventMachine.

##Q5

см. код

без Nokogiri не осилил, т.к. xpath прям совсем не очень, а больше в стандартной библиотеке нет ничего, а регэкспами как-то не правильно парсить html помоему.

#Level 3

##Q1

1. Создаем массив values, куда будет складывать найденые 2 числа
2. Создаем переменную isFisrtValueFounded = false, которая будет сообщать нам, нашли ли мы первое число
3. Проходим по массиву разбивая результат на ключ и значение
4. Если первое значение не найдено
4. а) Сравниеваем key и value
4. б) Если значение равно, то идем дальше
4. с) Если значение не равно, то добавляем в массив value и ставим перменной isFisrtValueFounded значение true
5. Если первое значение найдено
5. a) Сравниваем key+1 и value
5. б) Если значение равно, то идем дальше
5. с) Если значение не равно, то добавляем в массив value и выходим из цикла
6. Выводи массив со значениями

Худщий случай - O(n)

##Q2

нет ответа

##Q3

не сталкивался с big data еще


