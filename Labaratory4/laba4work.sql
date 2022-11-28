create temp table table1(id_ int, name_ varchar(50) default 'Pupa');
INSERT INTO table1(id_) VALUES (1);
INSERT INTO table1(id_, name_) VALUES (2,'Игорь Троцкий');
SELECT * FROM table1;

select fun2();
select * from students;
drop function fun2()

create function fun2() returns int AS  $$
declare
	kur_s int;
	na_me varchar(50);
	result_ int;
begin
	kur_s = (select kurs from students where student_id=1);
	na_me = (select sutname from students where student_id=1);
	if (kur_s > 5) then
	update students set kurs = kur_s +2 where  id_personnel=1;
	return result_ = (select kurs from students where student_id=1);
	else update students set kurs = 3  where  student_id=1;
	return result_ = (select kurs from students where student_id=1);
	end if;
end;
$$
language plpgsql;



select fun3(13);
select * from students;
drop function fun3(id_p integer)

create function fun3(id_p integer) returns int AS  $$
declare
	kur_s int;
	result_ int;
begin
	kur_s = (select kurs from students where student_id=id_p);
	result_ = 1;
	WHILE kur_s >= 4 LOOP
    	result_ =  5;
		kur_s = 1;
	END LOOP;
	return result_ ;
end;
$$
language plpgsql;


select fun4(12);
select * from students;
drop function fun3(id_p integer)

create function fun4(id_p integer) returns int AS  $$
declare
	
begin
	return (select kurs from students where student_id=id_p) ;
end;
$$
language plpgsql;






select get_country_city();
drop function get_country_city();

select*from supplier

CREATE FUNCTION get_country_city () 
 RETURNS TABLE (
 cit_y varchar(50),
 countr_y varchar(50) )
AS $$
BEGIN
 RETURN query 
 SELECT
 city,
 country
 FROM
 supplier;
END; 
$$ 
LANGUAGE plpgsql;


--процедурки............

drop procedure managerr_();
call managerr_();
select * from shop;

--при вызове процедуры потом поменять местами название колонок
CREATE PROCEDURE managerr_()
LANGUAGE SQL
as 
$$
  alter table shop rename column manager to  managerr;
$$;


drop procedure type_shop(int);
call type_shop(3);
select * from shop;

CREATE PROCEDURE type_shop(id_ int)
LANGUAGE SQL
as 
$$
  update shop set type_shop = 'new_type'  where id_shop = id_;
$$;



select get_man_add();
drop function get_man_add();

select*from students

CREATE procedure get_man_add() 
 RETURNS TABLE (
 cit_y varchar(50),
 countr_y varchar(50) )
AS $$
BEGIN
 RETURN query 
 SELECT
 city,
 country
 FROM
 supplier;
END; 
$$ 
LANGUAGE plpgsql;


CREATE FUNCTION Parse(string varchar(150))
RETURNS TABLE
(number_ int,
substr varchar(30))
AS
$$
DECLARE 
str1 varchar(150);
pos int;
begin
SET str1 = string;
WHILE 1>0 LOOP
SET pos = position(str1 in string);
IF pos > 0 then
INSERT INTO tabless VALUES (str1,pos);
ELSE
INSERT INTO tabless VALUE (str1);
END if;
end loop;
RETURN tabless;
END;
$$
LANGUAGE plpgsql;

select Calculator(9,5,'/');

CREATE FUNCTION Calculator
(operand int,
operand2 int,
 action_ varchar(5))
RETURNS real
AS
$$
DECLARE 
 result_ real;
begin
CASE action_
	WHEN '+' THEN result_ = operand + operand2;
	WHEN '-' THEN result_ = operand - operand2;
	WHEN '*' THEN result_ = operand * operand2;
	WHEN '/' THEN result_ = operand / operand2;
	ELSE result_ = 0;
END case;
Return result_;
END;
$$ 
LANGUAGE plpgsql;
