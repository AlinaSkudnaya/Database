create table seller(
	id_seller serial not null primary key references shop(id_shop),
	surname_seller varchar(50) not null,
	name_seller varchar(50) not null,
	post varchar(50),
	birthday date,
	male varchar(50),
	address varchar(100),
	city varchar(50)
)
create table organization(
	id_organization serial primary key not null,
	name_org varchar(100) not null,
	address_org varchar(150) not null,
	fioDirector varchar(100) not null,
	tax_number varchar(75) not null
)
create table supplier(
	id_sup serial primary key not null,
	name_sup varchar(50) not null,
	type_deyat varchar(75),
	city varchar(50),
	country varchar(50),
	address_sup varchar(150)
)
create table order_sup(
	id_order serial primary key not null,
	date_order date,
	shop_id_shop int not null,
	sup_id_sup int not null,
	name_prod varchar(75),
	cost_prod int,
	quantity int not null,
	constraint fk_order_sup_shop foreign key (shop_id_shop) references "shop"(id_shop),
	constraint fk_sup_id_sup_order foreign key (sup_id_sup) references "supplier"(id_sup)
)
create table shop(
	id_shop serial not null primary key,
	manager varchar(50),
	address varchar(100),
	organization_fk int not null,
	type_shop varchar(75) not null,
	name_shop varchar(75) not null,
	constraint fk_organization_shop foreign key (organization_fk) references "organization"(id_organization)
)
create table org_has_sup(
	sup_id_sup int not null,
	organization_fk int not null,
	constraint fk_sup_id_sup foreign key (sup_id_sup) references "supplier"(id_sup),
	constraint fk_organization foreign key (organization_fk) references "organization"(id_organization)
)