select name_prod from order_sup where cost_prod = 8;
select name_prod,cost_prod from order_sup where cost_prod > 10;
select name_prod,cost_prod from order_sup where date_order > '01/01/2022';
select name_prod,cost_prod,quantity from order_sup where upper(name_prod) >'Eggs';
select name_prod,cost_prod,quantity from order_sup where quantity > 120 and cost_prod > 5;
select name_prod,cost_prod,quantity from order_sup where quantity = 120 or cost_prod = 8;
select name_prod,cost_prod,quantity from order_sup where not lower(name_prod) = 'Potato';
select name_prod,cost_prod,quantity from order_sup where (name_prod = 'Potato') and (quantity > 100 or cost_prod > 5);
select name_prod from order_sup where quantity * cost_prod > 10000;
select name_prod,cost_prod,quantity from order_sup where quantity in (125, 120,150);
select name_seller,surname_seller from seller where upper(surname_seller) between 'g' and 'p';
SELECT name_seller,surname_seller FROM seller WHERE birthday BETWEEN '01/01/1980' AND '12/12/1989';
SELECT name_prod FROM order_sup WHERE name_prod LIKE 'M%';
SELECT name_seller FROM seller WHERE LOWER(name_seller) LIKE '%a%';
SELECT name_seller,surname_seller FROM seller
WHERE city IS NULL OR male IS null;


