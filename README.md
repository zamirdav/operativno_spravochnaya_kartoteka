программа "Оперативно справочная картотека" создана 28.05.2020 года, язык программирования ASP Classic, СУБД MYSQL. 
База данных о лицах совершивших преступления. 
Поиск осуществляется по фамилии имени отчеству дате рождения или по номеру уголовного дела. 
Ввод информации(отключено) осуществляется вводом фамилии имени отчества и даты рождения после чего проходит проверка на двойников
по результатам которого осуществлется уже сам ввод или корректировка записи. 
В программе можно получить статистическую информацию:
-по 2023 год по месяцам и дате корректировки
-2023 год по месяцам и дате записи
-по 2022 год по месяцам и дате корректировки
-по 2021 год по месяцам и дате корректировки
-по 2020 год по месяцам и дате корректировки.
некоторые статистические отчеты составлены с помошью SQL, а другие без его применения, используя математические средства.
Ведется протоколирование запросов; с какого компьютера когда и какой запрос был осушествлен
можно делать сложные SQL запросы и статистические отчеты 
Содержание E:\запросы\[родительский каталог]
Название	Размер	Последнее изменение
введено за опред день.sql 55 B	30.06.2022, 14:43:23
год_месяц.sql 287 B	24.12.2024, 14:32:58
для удаления двойников.sql 504 B	01.09.2023, 10:06:48
дубликаты.sql142 B	03.08.2022, 17:44:38
Задачи по 12 месяцам.sql 12.6 kB	17.01.2025, 16:56:28
месяц_год.sql 301 B	24.12.2024, 14:37:39
нах удал записи по id и измен фио в ОСК.sql 1.0 kB	03.02.2025, 17:48:30
НАХОДИТ ДВОЙНИКОВ ПО УСЛОВИЮ.sql 298 B	01.03.2024, 11:20:25
поис кпо фабуле середина слова.sql 56 B	27.07.2022, 16:51:00
поиск двойников ПО NUD lдля печати.sql 266 B	30.08.2023, 11:43:18
поиск по фамилии имя отчеству.sql84 B	24.10.2023, 11:32:19
поиск уд и изм-х записей из первой табл n1 n7.sql 392 B	04.02.2025, 09:36:01
поиск уд и изм-х записей из n1 n7.sql 392 B	04.02.2025, 09:35:17
поиск удал и изм из О2 и О4 табл 1.sql 454 B	04.02.2025, 14:08:49
попытка обьединения двух поисков.sql 118 B	28.07.2022, 15:22:20
посик двойников с помощью временной таблицы.sql 551 B	28.02.2024, 09:38:20
прекращв ста но нет в архиве.sql 292 B	30.06.2022, 16:45:45
прекращенн с путыми арх номерами — копия.sql 48 B	30.06.2022, 14:42:50
проверка есть ли удал или двойники среди фото.sql 233 B	27.07.2023, 14:35:33
создает структуру таблицы а потом клонирует один к одному таблицу.sql 311 B	25.06.2024, 16:13:56
создает таблицу клон.sql 180 B	25.06.2024, 16:25:14
создает dubl_1 находя двойников по условию.sql 354 B	01.03.2024, 16:12:52
СТАТИСТИКА КОЛИЧЕСТВА ЗАПРОСОВ ПО ГОДАМ И ЗАДАЧАМ.sql 5.8 kB	20.02.2025, 17:22:39
удаление двойник по мин дате.sql 340 B	22.02.2024, 11:30:39
D_distinct_поиск без двойников.sql 301 B	07.03.2024, 10:06:26
join для ош.sql 213 B	29.01.2024, 10:16:49
join находит из двух таблиц удаленные записи по id.sql 119 B	20.06.2024, 16:20:02
jon для джалал абад.sql 189 B	27.01.2024, 14:53:15

Например отчет о количестве запросов за январь февраль месяцы с 2020-по 2025 годы по задачам
DROP TABLE IF EXISTS pr2_0; /* копирует в новую таблицу pr2 */
/*CREATE TABLE pr2(bok VARCHAR(11),shap int);/*"  'создаем табл*/
CREATE TEMPORARY TABLE pr2_0(bok VARCHAR(11),shap int) ENGINE=MEMORY;/*"  'создаем табл*/
insert into pr2_0(bok,shap) 
SELECT zad,count(id) FROM zoma.stat_ip where zad="o2" and year(Dat)='2025' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="o4" and year(Dat)='2025' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n1" and year(Dat)='2025'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n2" and year(Dat)='2025'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="pr" and year(Dat)='2025'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="rz" and year(Dat)='2025'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="ai" and year(Dat)='2025'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="sp" and year(Dat)='2025';
DROP TABLE IF EXISTS pr2; /* копирует в новую таблицу pr2 */
/*CREATE TABLE pr2(bok VARCHAR(11),shap int);/*"  'создаем табл*/
CREATE TEMPORARY TABLE pr2(bok VARCHAR(11),shap int) ENGINE=MEMORY;/*"  'создаем табл*/
insert into pr2(bok,shap) 
SELECT zad,count(id) FROM zoma.stat_ip where zad="o2" and year(Dat)='2024' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="o4" and year(Dat)='2024' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n1" and year(Dat)='2024'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n2" and year(Dat)='2024'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="pr" and year(Dat)='2024'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="rz" and year(Dat)='2024'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="ai" and year(Dat)='2024'union
SELECT zad,count(id) FROM zoma.stat_ip where zad="sp" and year(Dat)='2024';
DROP TABLE IF EXISTS pr2_1; /* копирует в новую таблицу pr2 */
CREATE  TABLE pr2_1(bok VARCHAR(11),shap int) ENGINE=MEMORY;/*"  'создаем табл*/
insert into pr2_1(bok,shap) 
SELECT zad,count(id) FROM zoma.stat_ip where zad="o2" and year(Dat)='2023' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="o4" and year(Dat)='2023' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n1" and year(Dat)='2023' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n2" and year(Dat)='2023' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="pr" and year(Dat)='2023' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="rz" and year(Dat)='2023' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="ai" and year(Dat)='2023' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="sp" and year(Dat)='2023';
DROP TABLE IF EXISTS pr2_2; /* копирует в новую таблицу pr2 */
CREATE  TABLE pr2_2(bok VARCHAR(11),shap int) ENGINE=MEMORY;/*"  'создаем табл*/
insert into pr2_2(bok,shap) 
SELECT zad,count(id) FROM zoma.stat_ip where zad="o2" and year(Dat)='2022' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="o4" and year(Dat)='2022' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n1" and year(Dat)='2022' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n2" and year(Dat)='2022' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="pr" and year(Dat)='2022' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="rz" and year(Dat)='2022' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="ai" and year(Dat)='2022' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="sp" and year(Dat)='2022';
DROP TABLE IF EXISTS pr2_3; /* копирует в новую таблицу pr2 */
CREATE TEMPORARY TABLE pr2_3(bok VARCHAR(11),shap int) ENGINE=MEMORY;/*"  'создаем табл*/
insert into pr2_3(bok,shap) 
SELECT zad,count(id) FROM zoma.stat_ip where zad="o2" and year(Dat)='2021' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="o4" and year(Dat)='2021' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n1" and year(Dat)='2021' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n2" and year(Dat)='2021' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="pr" and year(Dat)='2021' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="rz" and year(Dat)='2021' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="ai" and year(Dat)='2021' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="sp" and year(Dat)='2021';
DROP TABLE IF EXISTS pr2_4; /* копирует в новую таблицу pr2 */
CREATE TEMPORARY TABLE pr2_4(bok VARCHAR(11),shap int) ENGINE=MEMORY;/*"  'создаем табл*/
insert into pr2_4(bok,shap) 
SELECT zad,count(id) FROM zoma.stat_ip where zad="o2" and year(Dat)='2020' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="o4" and year(Dat)='2020' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n1" and year(Dat)='2020' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="n2" and year(Dat)='2020' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="pr" and year(Dat)='2020' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="rz" and year(Dat)='2020' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="ai" and year(Dat)='2020' union
SELECT zad,count(id) FROM zoma.stat_ip where zad="sp" and year(Dat)='2020';

DROP TABLE IF EXISTS pr2_pr; /* копирует в новую таблицу pr2 */
CREATE TEMPORARY TABLE pr2_pr(bok VARCHAR(11), год25 int, год24 int,год23 int,год22 int,год21 int,год20 int) ENGINE=MEMORY;/*"  'создаем табл*/
insert into pr2_pr(bok,год25,год24,год23,год22,год21,год20)
SELECT pr2_0.bok,pr2_0.shap,pr2.shap,pr2_1.shap,pr2_2.shap,pr2_3.shap,pr2_4.shap FROM pr2_0
    left JOIN pr2   ON pr2.bok=pr2_0.bok
    left JOIN pr2_1 ON pr2_1.bok=pr2.bok
    left JOIN pr2_2 ON pr2_2.bok=pr2_1.bok
    left JOIN pr2_3 ON pr2_3.bok=pr2_2.bok
    left JOIN pr2_4 ON pr2_4.bok=pr2_3.bok;
    SELECT * FROM pr2_pr;

