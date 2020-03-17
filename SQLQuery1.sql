create database products 
on primary
(name='productdb',
filename='D:\sql\products.mdf',
size=3mb,
maxsize=15mb,
filegrowth=2%)


log on 
(name='productlogs',
filename='D:\sql\products.ldf',
size=3mb,
maxsize=15mb,
filegrowth=2%);

use products;
create table category
(category_id  int primary key,
category_name varchar(50) not null);

create table productmaster
(prd_code   int primary key,
prd_name  varchar(50) not null,
category_id  int,
prd_measure  varchar(5) not null,
prd_price  float not null,
constraint fk_prd_category foreign key (category_id)
references category (category_id));

