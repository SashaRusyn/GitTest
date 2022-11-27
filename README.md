Державний вищий навчальний заклад
Ужгородський національний університет
Факультет інформаційних технологій

ЛАБОРАТОРНА РОБОТА №3
Тема: Docker

Виконав студент ІIІ курсу
Напрям: ІПЗ-2.1 
Русин Олександр Іванович

Ужгород-2022
Хід роботи
1.	Використання готових Docker Images.
Спочатку я створив папку Docker з файлом docker-compose.yml 

![image](https://user-images.githubusercontent.com/91634354/204165914-86f8caff-bddc-4f08-a914-12dd9b43ac38.png)
![image](https://user-images.githubusercontent.com/91634354/204165926-17fe0537-7b9f-4c2e-a639-948ffc12bcbe.png)
![image](https://user-images.githubusercontent.com/91634354/204165935-4be14f23-a079-44d4-8d3f-4bce4e82e29d.png)
![image](https://user-images.githubusercontent.com/91634354/204165941-f818f1ad-3a92-43a6-978e-b80f994d2668.png)

2.	Використання Docker Compose.
Docker Compose — інструментальний засіб, що входить до складу Docker. Він призначений для вирішення завдань, пов'язаних із розгортанням проектів: Docker Compose використовується для одночасного керування кількома контейнерами, що входять до складу програми. Цей інструмент пропонує ті ж можливості, що й Docker, але дозволяє працювати з більш складними програмами.
Для налаштування служб програми у Docker Compose використовується конфігураційний файл з розширенням .yml. Тобто спочатку створюється файл YAML, де будуть прописані налаштування служб, а після цього за допомогою команди docker compose -d створюються та запускаються всі служби з нього.
YAML — зручний для читання людиною формат серіалізації даних, концептуально близький до мов розмітки; у Docker Compose використовується для налаштування служб програм.
Переваги YAML:
•	YAML короткий і зрозумілий, легко читається та пишеться;
•	YAML використовує структури даних, характерні для мов програмування;
•	Синтаксис YAML мінімальний у порівнянні з XML;
•	Підтримує коментарі на відмінно від JSON;
•	Підтримує рядки без лапок.

Недоліки YAML:
•	Строгість у відступах: якщо ви неправильно вставите один пробіл під час відступу, код може перестати працювати.
•	Легше знайти підтримку XML, JSON замість YAML.
•	JSON і XML мають кращу продуктивність, ніж YAML.
Приклад створення та збирання образа за допомогою Docker Compose - виконання завдання 1.
3.	Створення HTML сторінки та занесення її в Docker Image. Залити даний Docker Image на Docker Hub.
Спочатку ми залогінилися до DockerHub

![image](https://user-images.githubusercontent.com/91634354/204165970-cbef1993-b6ee-4480-b973-6f4603a428e0.png)

Потім я за допомогою build створив docker image і за допомогою docker run перевірив на працездатність мій контейнер

![image](https://user-images.githubusercontent.com/91634354/204166004-af0c763e-1458-4687-8725-7cf3fd00d31c.png)
![image](https://user-images.githubusercontent.com/91634354/204166015-21f95fe6-2c47-4888-9bd7-b5e10c68a9fd.png)
![image](https://user-images.githubusercontent.com/91634354/204166021-57404347-172b-437f-bdc3-36da3c1156c4.png)


Я перейменував свій локальний репозиторій за допомогою docker tag docker_lab3:latest sasharusyn/docker_lab3:latest і запушив за допомогою docker push sasharusyn/docker_lab3:latest

![image](https://user-images.githubusercontent.com/91634354/204166034-7c935ffd-b88a-47b8-824e-8b0c5606b736.png)

Бачимо залитий репозиторій на DockerHub (https://hub.docker.com/repository/docker/sasharusyn/docker_lab3)
4.	Скачати Docker Image когось із групи і розвернути в себе контейнер з HTML сторінкою на порті 8086 ззовні.
Для виконання цього завдання я скачаю Docker Image мого однокурсника Сергія Миколайовича Оліярника(https://hub.docker.com/r/sergoliarnik/my_page).

![image](https://user-images.githubusercontent.com/91634354/204166051-6783bffb-604a-4529-8b2f-dbd69fe629f7.png)

Стягую його з DockerHub і розгортаю його на порті 8086 

![image](https://user-images.githubusercontent.com/91634354/204166062-63d04743-9518-4e50-8d58-aca46874a374.png)
![image](https://user-images.githubusercontent.com/91634354/204166079-384f5fbc-3a8e-4fa8-a6ae-d1243fc5a7af.png)

Висновки: на цій лабораторній роботі я навчився працювати з Docker, використовувати готові DockerImage та працювати з DockerCompose, створювати теги, робити push та стягувати готові DockerImage.
