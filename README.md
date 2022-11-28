Державний вищий навчальний заклад
Ужгородський національний університет
Факультет інформаційних технологій

ЛАБОРАТОРНА РОБОТА №5
Тема: Деплой проекту на AWS EC2

Виконав студент ІIІ курсу
Напрям: ІПЗ-2.1 
Русин Олександр Іванович

Ужгород-2022
Хід роботи
Спочатку ми зареєструвалися на AWS. Після чого створюємо інстанс EC2

![image](https://user-images.githubusercontent.com/91634354/204167102-7d755407-8fe8-4561-a1c6-2eb39e4a367f.png)
![image](https://user-images.githubusercontent.com/91634354/204167106-38faf7e1-e420-4204-9c1e-e6e63098b0fe.png)
![image](https://user-images.githubusercontent.com/91634354/204167120-843e3083-9328-48b8-a88b-3fb3ec63aa23.png)

Натиснувши на кнопку Connect бачу інструкцію для деплою проекту

![image](https://user-images.githubusercontent.com/91634354/204167140-0b723aa1-b332-41d9-9d7b-7098190f7f47.png)

Виконуємо команду chmod 400 maskerano.pem для того щоб запевнитися що наш ключ не є загально доступним
Підключаємося до EC2 за допомогою ssh -i "maskerano.pem" ec2-user@ec2-34-207-160-88.compute-1.amazonaws.com

![image](https://user-images.githubusercontent.com/91634354/204167154-b73cd81c-16fb-4601-8c5c-c2dea633d4b5.png)

Запускаємо сервіс systemctl start httpd.service

![image](https://user-images.githubusercontent.com/91634354/204167164-bbe4104d-db1a-4cb8-b083-37ed32c275dc.png)
![image](https://user-images.githubusercontent.com/91634354/204167172-04dd60d2-654b-474a-8616-15f020d7d573.png)

Бачимо результат по ip-адресі 34.207.160.88
Висновки: на цій лабораторній роботі я навчився створювати інтанси у EC2 , і деплоїти свій проект на AWS EC2.
