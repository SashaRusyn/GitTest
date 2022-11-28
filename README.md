Державний вищий навчальний заклад
Ужгородський національний університет
Факультет інформаційних технологій

ЛАБОРАТОРНА РОБОТА №1
Тема: Ознайомлення із командами терміналу Linux та командною оболонкою Bash

Виконав студент ІIІ курсу
Напрям: ІПЗ-2.1 
Русин Олександр Іванович 

Ужгород-2022
Хід роботи
1.	Проробити команди які розглядались на лекції.

![image](https://user-images.githubusercontent.com/91634354/204167421-bd35ec94-9b5d-4e87-9a65-9c968d8bcc5f.png)

Скріншоти виконання команд з 15 слайда
Змінити каталог - cd <directoryName>
До минулого каталогу - cd ..
До кореневого рівня - cd /
Перейти до домашнього каталогу користувача - cd ~
Список файлів - ls
Створіть порожній файл - touch <fileName>
Створіть новий каталог - mkdir <dirName>
Видалити файл(и) (каталог) - rm <fileName>
Запустіть від кореневого імені - sudo <command>
Вимкнення - shutdown –h зараз (тільки від кореневого імені)
Перезавантаження - shutdown –r зараз (тільки від кореневого імені)
Інформація про команду (програму) - man <command>
Змінити користувача - su <username >
Очистити вікно терміналу - clear

![image](https://user-images.githubusercontent.com/91634354/204167450-b231c33f-3a7f-4a05-b8f4-60b919afff7d.png)

Виконання команди man shutdown

![image](https://user-images.githubusercontent.com/91634354/204167472-fe0edd24-4574-4d2b-9f37-2ef890ced235.png)
![image](https://user-images.githubusercontent.com/91634354/204167477-0827f9dd-8942-40db-965c-6b4b5451f277.png)
![image](https://user-images.githubusercontent.com/91634354/204167483-7372a794-ff41-49ca-8f10-3fa7554913ce.png)
![image](https://user-images.githubusercontent.com/91634354/204167489-80868594-9dcd-4ac8-9e46-24c52ce83277.png)

Скріншоти виконання команд з 16 слайда
uname –a  - інформація про архітектуру системи та ядро.
lscpu - інформація про ЦП.
ps - інформація про запущені процеси.
top - інформація про запущені процеси в режимі реального часу.
ip addr show - інформація про налаштування мережевих адаптерів.
id - інформація про поточного користувача.

![image](https://user-images.githubusercontent.com/91634354/204167511-d7052824-bb3a-4391-8201-854a1bbc7b4c.png)
![image](https://user-images.githubusercontent.com/91634354/204167517-3e25d270-5d99-4855-8e14-a8f8a8f55d6a.png)
![image](https://user-images.githubusercontent.com/91634354/204167525-b4d8916a-2b2b-48e0-af84-5319223f5390.png)

ps aux | grep apache - відображає всі запущені потоки процесу apache.
ls –a | grep hello - показує всі файли, у назвах яких є слово hello.
groups – показує інформацію про групи, до яких належить користувач.
ssh-keygen - це програма для генерації та керування ключами аутентифікації.
usermode – використовується для зміни облікового запису користувача.

2.	Вивести через термінал список користувачів та інформацію про ваш комп’ютер та ядро лінукса.

![image](https://user-images.githubusercontent.com/91634354/204167543-f874e2f8-0482-4a09-9df2-a0fcbc19bafb.png)
![image](https://user-images.githubusercontent.com/91634354/204167553-6e0e0c67-8c53-4d76-8405-6f83a15dc74f.png)

cat /etc/passwd – виводить інформацію про користувача і його username.
compgen -u – виводить список але тільки з іменами користувачів.

![image](https://user-images.githubusercontent.com/91634354/204167569-3017f57d-4ad7-42c2-bd9f-2b23031b28b7.png)

Виконання команди lshw - переглянути ім’я хоста мережі, отримати інформацію про версію ядра, отримання інформацію про випуск ядра, вивести назву апаратного забезпечення машини та інше.
3.	Використовуючи bash створити сценарій перевірки імені користувача та наявності файлу hello.txt, якщо такий існує то вивести Hello user.name який видасть система, якщо файлу не існує тоді вивести Hello назва вашої групи та ваше ПІБ.

![image](https://user-images.githubusercontent.com/91634354/204167580-32949d6b-9e90-44f6-b2fa-39d228b24162.png)
 
echo –n “Enter your name: ”
read name 
if [ $name = $USER ]
then
  if [ -e ./hello.txt ]
  then
  echo “Hello $USER”
  else
    echo “Hello IPZ2.1 Rusyn Oleksandr Ivanovych”
  fi
fi

Код програми

![image](https://user-images.githubusercontent.com/91634354/204167588-bed1cc7a-cc39-4db4-815b-37295fcf800d.png)

Результати роботи програми
Висновки: на цій лабораторній роботі я навчився працювати з Linux, виконувати команди через термінал, а також писати та запускати bash-файли.
