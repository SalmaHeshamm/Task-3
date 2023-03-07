create database if not exists market 
 
create table if not exists customers (
customerID int not null,
name varchar (200),
city varchar (200),
primary key ( customerID) 
)

create table if not exists products (
productNumber int not null,
productName varchar (200),

primary key ( productNumber) 
)

create table if not exists orders (
orderNumber int not null,
ordertDate date,
status_ varchar (200),
primary key ( orderNumber) 
)

alter table products 
add column customerID int,
add foreign key (customerID) references customers(customerID)

alter table orders 
add column customerID int,
add foreign key (customerID) references customers(customerID)

insert into customers ()
values (1, 'salma', 'egypt')
