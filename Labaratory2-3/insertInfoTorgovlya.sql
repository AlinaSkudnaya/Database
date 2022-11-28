insert into "organization" (name_org,address_org,fiodirector,tax_number) values
	('Santa Bremor', 'Minsk Per street 55', 'Lola Backer', '2444141'),
	('Savushkin Product', 'Brest Gausa street 123', 'Andrew Saw', '8689755'),
	('Terra city', 'Minsk Dawn street 44', 'Brue Volkaes', '99995566'),
	('Dana mall', 'Minsk Ushod street 58', 'Vladislav kfac', '557878545'),
	('Community', 'Vitebsk Volava street 5', 'Gosha Sddes', '64544545')
select * from organization

insert into "supplier" (name_sup,type_deyat,city,country, address_sup) values
	('Bumaga','import','Belostok','Poland','Sholkav street 56'),
	('Plastikprom','resseler','Brest','Belarus','Veliki street 8'),
	('Modecom','resseler','Gomel','Belarus','Bortash street 61'),
	('TReS','resseler','Grodno','Belarus','Ropolk street 37'),
	('Tomashovo','import','Volgograd','Russia','Folki street 90'),
	('Bontre','import','Drazhn','Latvia','Froert street 5')
select * from supplier

insert into "shop" (manager,address,organization_fk,type_shop,name_shop) values 
	('Nina Fosd','Kemerovo Fol 5',1,'univermag','nanoShop'),
	('Oleg Kona','Proshko Terev 88',2,'univermag','portLev'),
	('Vasya Pupkin','Buloc Velkoj 12',2,'lotok','Kotovasya'),
	('Sergey Tkach','Moskva Gvardei 79',3,'kiosk','Pers'),
	('Andrew Bol','Minsk Orlovskaya 13',4,'magazin','Joy'),
	('Nikita Krow','Molodechno MArkova 46',5,'lotok','Clow')

insert into "seller" (shop_id_shop,surname_seller,name_seller,post,birthday,male,address,city) values
	(1,'Popov','Ivan','seller','1989-06-02','м','Tolbki street 1','Moskva'),
	(1,'Vasilina','Inna','seller','1992-01-09','ж','Veremes street 9','Kaluga'),
	(2,'Glushak','Kris','','1999-12-03','ж','Tonkol 21','Pinsk'),
	(2,'Volkova','Tonya','','1987-09-12','ж','Boled 33','Obninsk'),
	(3,'Grif','Sveta','','1968-05-11','ж','Ivanici 13','Gomel'),
	(4,'Vasuk','Inna','','1988-03-04','ж','Borovskaya 102','Molodechno'),
	(5,'Kocher','Vladislav','','1997-11-02','м','Klosdaf 22','Minsk'),
	(6,'Smirnov','Vasiliy','','1993-12-27','м','Berom 103','Grodno'),
	(6,'Gerova','Tatiana','','1996-02-01','ж','Vlakon 159','Mogilev')
	
insert into "order_sup" (date_order,shop_id_shop,sup_id_sup,name_prod,cost_prod,quantity) values
	('2022-01-22',1,1,'Milk',3,150),
	('2021-11-12',1,2,'Eggs',8,70),
	('2022-06-02',2,2,'Ikra',12,210),
	('2022-08-25',3,3,'Bread',7,100),
	('2022-01-30',1,3,'Cucumber',5,120),
	('2022-03-17',1,4,'Sweets',28,360),
	('2022-01-22',4,1,'Tomatos',6,85),
	('2022-01-22',4,4,'Potato',8,125),
	('2022-01-22',4,2,'Coffee',39,250)
	
insert into "org_has_sup" (sup_id_sup,organization_fk) values
	(1,1),(2,1),(2,3),(2,4),(1,2),(1,3),(1,4),
	(1,5),(2,2),(2,5),(3,1),(3,2),(3,3),(3,4),(3,5),
	(4,1),(4,2),(4,3),(4,4),(4,5),(5,1),(5,2),(5,3),
	(5,4),(5,5)
	
	
	
