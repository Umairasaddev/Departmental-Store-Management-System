create database my_project

use my_project;

create table Customer --											   Customer
(cid int primary key,
cname nvarchar(25),
ph_no int,
);

create table Customer_Product--                                       Customer_Product
(cid int foreign key references Customer,
pid int foreign key references Product);--customer product

create table Product--												  Product	
(pid int primary key,
price int,
product_name nvarchar(25),
pcid int foreign key references Product_Category);

create table Stock_Product--                                        Stock_Product
(stid int foreign key references supplier_type,
pid int foreign key references Product);

create table Stock--													Stock
(stockid int primary key,
inward_date date,
outward_date date,
quantity int);


create table Product_Supplier--                                       Product_Supplier
(pid int foreign key references Product,
spid int foreign key references Supplier);

										 
create table Supplier--												   Supplier
(spid int primary key,
sname nvarchar(25),
sph_no int,
stid int foreign key references Supplier_type); 



select * from Supplier


--{
ALTER TABLE Bill--												Alter Tables column
ADD price int;
--}

--{
--ALTER TABLE Bill--											Alter Tables foreign key
--ADD FOREIGN KEY () REFERENCES product_category;
--}
select *from  Product
--{
Select * from Supplier;--												  Select key
--}
	
create table Bill--												  Bill
(bid int primary key,
bill_date date,
btime int,
cid int foreign key references Customer,
eid int foreign key references Employee);


create table Employee--											 Employee 
(eid int primary key,
ename nvarchar(25),
salary int,
cnic int,
eph_no int);

 	

create table Bill_details--											 Bill_details
(bdid int primary key,
product_price int,
product_quantity int,
total_bill int,
pid int foreign key references product,
bid int foreign key references Bill);

select * from Bill_details

create table Product_category--                                       Product_category
(pcid int primary key,
ptype_name nvarchar(25));

create table Supplier_type--										  Supplier Type
(
stid int primary key,
ptype_name nvarchar(25));

insert into Product_category values--								insert Product Category
(1,'Groceries'),
(2,'Crockery'),
(3,'Dairy');

insert into Product values--										 insert Product
(1,150,' Oil',1),
(2,180,'Ghee',1),
(3,750,'Dinner set',2),
(4,889,'Soup set',2),
(5,2000,'Milk',3),
(6,1700,'Butter',3);

select * from Product_supplier


select * from Product

insert into supplier_type values--										 insert Supplier type
(1,'Groceries'),
(2,'Crockery'),
(3,'Dairy');

insert into supplier values
(1,'Dalda',090,1),
(2,'National',070,2),
(3,'Nestle',010,3);

select * from Stock
--update stock
--set stockid=3 where quantity=350;

insert into Stock values
('2019-11-3','2019-12-3',500,1),
('2018-1-22','2018-2-18',800,2),
('2017-6-6','2017-10-13',350,3);

insert into stock_product values  
(1,1),(1,2),(1,6),(2,5),(2,4),(2,2),(2,6),(3,1),(3,4);


insert into Product_Supplier values--first pid and second spid
(1,1),(1,3),(1,2),(2,1),(2,3),(3,1),(4,1),(5,3),(5,1),(6,1),(6,2),(6,3);

select * from Employee
insert into Employee values
(1,'awais',8000,000,111),(2,'farhan',7000,111,222),(3,'usama',12000,444,555),(4,'hamid',17000,999,666);

insert into Customer values
(1,'Umzay',111),(2,'Roxen',222),(3,'Hassan',365);

insert into Customer_Product values
(1,5),(1,1),(2,1),(2,3),(2,6),(3,1),(3,5),(3,2),(3,4);


select * from Bill_details

insert into Bill_details values
(1,100,1,100,1,1),
(2,300,3,300,3,2);
 select * from Bill

insert into Bill values
(1,'2020-11-11',6,1,1,500),
(2,'2020-11-12',7,2,1,600),
(3,'2020-11-13',2,3,3,700);

--{															update
update customer
set cname='Umair'where cid=3;
--}

select * from Customer order by cid

--{														alter drop
--alter table Bill_detail
--drop column amount_payable
--}

-- for unique values use distinct 
--{															DISTINCT
--SELECT DISTINCT cname FROM Customer;
--SELECT COUNT(DISTINCT cid) FROM Customer;
--}

--{	Order by is used to sort result in ascending and descending order
SELECT * FROM Customer				--					ORDER BY
ORDER BY cname ;
--}
-- order by is automatically in ascending in order to get in descending use 
--"desc" keyword
--{
--SELECT * FROM Customer
--ORDER BY cname , cid ;
--}
--{
--UPDATE Customer
--SET cname = 'Alfred Schmidt' WHERE cid = 1;
--}

--delete from customer where cid=1

--select top 2 * from Customer			first  rows use "top"
--{
--SELECT MIN(Price) AS SmallestPrice				Min
--FROM Product;
--}
delete from customer where cid=1;
--{
--SELECT COUNT(cid)								count
--FROM customer;
--}

--{between ranges in values						between 
--SELECT * FROM Product
--WHERE Price BETWEEN 150 AND 200;
--}
select * from Product

SELECT COUNT(pid)
FROM Product
GROUP BY product_name;

select * from customer,employee

select * from Customer
select * from Employee

select * from Customer_Product
