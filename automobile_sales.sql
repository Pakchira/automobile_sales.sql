Create table products( 
product_line varchar(100) unique not null primary key,
msrp int,
product_code varchar(100)
);

create table location(
address varchar(100) not null unique primary key,
city varchar(100),
country varchar(100)
);

create table customers(
customer_name varchar(100) not null primary key,
lastname varchar(100),
firstname varchar(100),
deal_size varchar(100)
);

create table orders(
order_number int not null primary key,
quantity_ordered int,
price_each int,
sales int,
order_date date
);

alter table orders
add product_code varchar(100);

alter table location
add customer_name varchar(100);

alter table location
add foreign key (customer_name) references customers(customer_name);

alter table orders 
add customer_name varchar(100);

alter table orders 
add foreign key (customer_name) references customers(customer_name);

alter table location
add postalcode varchar(100);

-- insert values products table
insert into products (product_line, msrp, product_code)
values ('Motorcycles',95,'S10_1678');

insert into products (product_line, msrp, product_code)
values ('Classic Cars',214,'S10_1949');

insert into products (product_line,msrp, product_code)
values ('Trucks and Buses',136,'S12_1666');

insert into products (product_line, msrp, product_code)
values ('Vintage Cars',102,'S18_1342');

insert into products (product_line, msrp, product_code)
values ('Planes',157,'S18_1662');

insert into products (product_line, msrp, product_code)
values ('Ships',86,'S18_3029');

insert into products (product_line, msrp, product_code)
values ('Trains',100,'S18_3259');

-- insert values customers
insert into customers(customer_name,lastname,firstname,deal_size)
values ('Land of Toys Inc.','Yu','Kwai','small');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Reims Collectables','Henriot','Paul','small');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Lyon Souveniers','Da Cunha','Daniel','small');

update customers
set deal_size = 'medium'
where customer_name = 'Lyon Souveniers';

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Toys4GrownUps.com','Young','Julie','medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Technics Stores Inc.','Hirano','Juri','medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Daedalus Designs Imports','Rance','Martine','small');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Herkku Gifts','Oeztan','Veysel','medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Auto Canal Petit','Perrier','Dominique','medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Australian Collectors, Co.','Ferguson','Peter','medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Vitachrome Inc.','Frick','Michael','small');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Tekni Collectables Inc.','Brown','William','medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Gift Depot Inc.','King','Julie','medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('La Rochelle Gifts','Labrune','Janine','Medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Martas Replicas Co.','Hernandez','Marta','Medium');

insert into customers(customer_name,lastname,firstname,deal_size)
values ('Toys of Finland, Co.','Karttunen','Matti','Small');

-- insert into location
insert into location(customer_name,address,city,postalcode,country)
values ('Land of Toys Inc.','897 Long Airport Avenue','NYC','10022','USA');

insert into location(customer_name,address,city,postalcode,country)
values ('Reims Collectables','59 rue de l Abbaye','Reims','51100','France');

insert into location(customer_name,address,city,postalcode,country)
values ('Lyon Souveniers','27 rue du Colonel Pierre Avia','Paris','75508','France');

insert into location(customer_name,address,city,postalcode,country)
values ('Toys4GrownUps.com','78934 Hillside Dr.','Pasadena','90003','USA');

insert into location(customer_name,address,city,postalcode,country)
values ('Technics Stores Inc.','9408 Furth Circle','Burlingame','94217','USA');

insert into location(customer_name,address,city,postalcode,country)
values ('Daedalus Designs Imports','184, chausse de Tournai','Lille','59000','France');

insert into location(customer_name,address,city,postalcode,country)
values ('Herkku Gifts','Drammen 121, PR 744 Sentrum','Bergen','N 5804','Norway');

insert into location(customer_name,address,city,postalcode,country)
values ('Auto Canal Petit','Geislweg 14','Salzburg','5020','Austria');

insert into location(customer_name,address,city,postalcode,country)
values ('Australian Collectors, Co.','636 St Kilda Road','Melbourne','3004','Australia');

insert into location(customer_name,address,city,postalcode,country)
values ('Vitachrome Inc.','Berkeley Gardens 12 Brewery','Liverpool','WX1 6LT','UK');

insert into location(customer_name,address,city,postalcode,country)
values ('Tekni Collectables Inc.','7476 Moss Rd.','Newark','94019','USA');

insert into location(customer_name,address,city,postalcode,country)
values ('Gift Depot Inc.','25593 South Bay Ln.','Bridgewater','97562','USA');

insert into location(customer_name,address,city,postalcode,country)
values ('La Rochelle Gifts','67, rue des Cinquante Otages','Nantes','44000','France');

insert into location(customer_name,address,city,postalcode,country)
values ('Martas Replicas Co.','39323 Spinnaker Dr.','Cambridge','51247','USA');

insert into location(customer_name,address,city,postalcode,country)
values ('Toys of Finland, Co.','Keskuskatu 45','Helsinki','21240','Finland');

-- inserty into orders
insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (107,30,95.70,2871,'2018-02-24','S10_1678','Land of Toys Inc.');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (121,34,81.35,2765.9,'2018-05-07','S10_1678','Reims Collectables');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (134,41,94.74,3884.34,'2018-07-01','S10_1678','Lyon Souveniers');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (145,45,83.26,3746.7,'2018-08-25','S10_1678','Toys4GrownUps.com');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (168,36,96.66,3479.76,'2018-10-28','S10_1678','Technics Stores Inc.');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (180,29,86.13,2497.77,'18-11-11','S10_1678','Daedalus Designs Imports');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (188,26,207.87,5404.62,'2018-01-29','S10_1949','Herkku Gifts');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (103,27,125.74,3394.98,'2018-01-29','S12_1666','Auto Canal Petit');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (101,26,207.87,5404.62,'2018-02-24','S10_1949','Australian Collectors, Co.');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (102,39,123.29,4808.31,'2018-01-10','S18_1342','Vitachrome Inc.');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (106,36,146.65,5279.4,'2018-02-17','S18_1342','Tekni Collectables Inc.');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (166,43,160.84,6916.12,'2018-04-28','S18_1662','Gift Depot Inc.');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (198,41,83.44,3421.04,'2018-02-17','S18_3029','La Rochelle Gifts');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (105,38,113.95,4330.1,'2018-02-11','S18_3259','Martas Replicas Co.');

insert into orders (order_number,quantity_ordered,price_each,sales,order_date,product_code,customer_name)
values (117,21,95.8,2011.8,'2018-04-16','S18_3259','Toys of Finland, Co.');








