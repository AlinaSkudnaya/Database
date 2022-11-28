select shop_id_shop,surname_seller,name_seller,name_shop from seller,shop;//decart
select id_shop,name_org,tax_number from shop,organization;
select shop_id_shop,surname_seller,name_seller,name_shop from seller,shop where shop_id_shop=id_shop;//ravenstvo
select id_shop,name_org,tax_number from shop,organization where organization_fk=id_organization;
select name_prod,cost_prod,name_shop from shop,order_sup where id_shop=shop_id_shop;
select shop_id_shop,surname_seller,name_seller,name_shop from seller,shop where shop_id_shop=id_shop and id_shop=4;//rav i usl
select id_shop,name_org,tax_number from shop,organization where organization_fk=id_organization and id_shop>2;
select shop_id_shop,surname_seller,name_seller,name_shop,name_org from seller,shop,organization;//3tabless
select id_shop,name_org,tax_number,name_prod from shop,organization,order_sup;
SELECT shop_id_shop,surname_seller,name_seller,name_shop FROM seller full OUTER JOIN shop ON shop_id_shop=id_shop
select id_shop,name_org,tax_number from shop full outer join organization on organization_fk=id_organization
select shop_id_shop,surname_seller,name_seller,name_shop from shop left outer join seller on id_shop=shop_id_shop;
select id_shop,name_org,tax_number from organization left join shop on id_organization=organization_fk
select shop_id_shop,surname_seller,name_seller,name_shop from seller right  join shop on shop_id_shop=id_shop;
select id_shop,name_org,tax_number from shop right join organization on organization_fk=id_organization;




