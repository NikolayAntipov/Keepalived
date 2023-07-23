# Домашнее задание к занятию "`Disaster recovery и Keepalived`" - `Антипов Николай`

### Задание 1

Дана схема для Cisco Packet Tracer, рассматриваемая в лекции.
На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.


Ответ:

Схема в фрмате pkt во вложении

Скриншот настройки маршрутизатора

![скриншот настройки](https://github.com/NikolayAntipov/Keepalived/blob/main/img/1.JPG)

---

### Задание 2

Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного файла.
Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал inde>
На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

Ответ:

bash-скрипт и файл keepalived во вложении

Скриншот до смены имен файла index.html
 ![до смены](https://github.com/NikolayAntipov/Keepalived/blob/main/img/2_%D0%B4%D0%BE%20%D1%81%D0%BC%D0%B5%D0%BD%D1%8B%20%D0%B8%D0%BC%D0%B5%D0%BD%D0%B8%20%D1%84%D0%B0%D0%B9%D0%BB%D0%B0.JPG)

Скриншот после смены имени файла index.html на index2.html. Видно что IP поменялся
 ![после смены](https://github.com/NikolayAntipov/Keepalived/blob/main/img/2_%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D1%81%D0%BC%D0%B5%D0%BD%D1%8B%20%D0%B8%D0%BC%D0%B5%D0%BD%D0%B8%20%D1%84%D0%B0%D0%B9%D0%BB%D0%B0.JPG)

Скриншот после смены имени файла обрратно. Видно что IP вернулся обратно

![после смены обратно](https://github.com/NikolayAntipov/Keepalived/blob/main/img/2_%D0%BF%D0%BE%D1%81%D0%BB%D0%B5%20%D1%81%D0%BC%D0%B5%D0%BD%D1%8B%20%D0%B8%D0%BC%D0%B5%D0%BD%D0%B8%20%D0%BE%D0%B1%D1%80%D0%B0%D1%82%D0%BD%D0%BE.JPG)

