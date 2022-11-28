SELECT COUNT(*) FROM teacher;

select count(*) from teacher where tel_teacher = null

select count(*) from kafedra, faculty where kafedra.facultet_kod_faculteta=faculty.kod_faculteta and name_faculteta='Математики и информатики'

SELECT count(DISTINCT dolgnost) FROM kafedra d, teacher t
WHERE d.kod_kafedry = t.kafedra_kod_kafedry AND
LOWER(d.name_kafedry) = 'Компьютерные системы и сети';

SELECT SUM(salary)
FROM teacher
WHERE (dolgnost) = 'ассистент';

select avg(salary) from teacher

select avg(distinct salary) from teacher

SELECT MAX(salary + rise)
FROM teacher;

select max(data_hire) from teacher, kafedra
where teacher.kafedra_kod_kafedry=kafedra.kod_kafedry and kafedra.name_kafedry = 'Информатики';


SELECT SUM(salary)*100/SUM(rise), SUM(rise)*100/SUM(salary)
FROM teacher;

SELECT UPPER(name_teacher)
FROM teacher;

SELECT name_teacher, birthday
FROM teacher
WHERE extract(YEAR from birthday)=1979 

SELECT name_teacher, data_hire,
data_hire + (interval '3 months')
FROM teacher
WHERE (name_teacher) LIKE 'С%';

SELECT 'Статывка проработал '|| 
date_part('month', current_date(),data_hire) ||' месяцев'
FROM teacher
WHERE name_teacher LIKE 'Статыв%';//zapros14 chast4


