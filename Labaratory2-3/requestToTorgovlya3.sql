SELECT COUNT(*) FROM shop;
select count(*) from organization where name_org = null
SELECT SUM(cost_prod*quantity) FROM order_sup WHERE (cost_prod) > 10;
select sum(distinct cost_prod) from order_sup
SELECT UPPER(name_prod) FROM order_sup;
select lower(name_prod) from order_sup;
SELECT name_seller, birthday FROM seller wHERE extract(YEAR from birthday)>1979 
select name_prod,date_order from order_sup where extract(month from date_order) > 5;
SELECT name_prod,count(*) FROM order_sup GROUP BY name_prod ;
SELECT f.name_shop,d.name_seller,count(cost_prod) FROM shop f, seller d, order_sup s
WHERE f.id_shop = d.shop_id_shop AND
f.id_shop = s.shop_id_shop AND f.id_shop > 2
GROUP BY f.name_shop,d.name_seller
select max(cost_prod) from order_sup having sum(cost_prod) > 10
select avg(cost_prod),avg(quantity) from order_sup having avg(distinct cost_prod) > 10 and avg(distinct quantity) > 1
SELECT name_prod, cost_prod * quantity FROM order_sup ORDER BY cost_prod * quantity;
UPDATE order_sup
SET cost_prod = cost_prod * 1.1
WHERE quantity > 100
select * from order_sup
delete from order_sup where id_order = 1




