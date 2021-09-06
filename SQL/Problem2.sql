create database Food;
use Food;
create table Items(Code int,Name varchar(20),Category varchar(20),Rate int);
insert into Items(Code,Name,Category,Rate) Values(101,'Masala Dosa','South Indian',30);
insert into Items(Code,Name,Category,Rate) Values(102,'Rava Dosa','South Indian',60);
insert into Items(Code,Name,Category,Rate) Values(103,'Pizza','Italian ',130);
insert into Items(Code,Name,Category,Rate) Values(104,'Soup','Chinese',80);
insert into Items(Code,Name,Category,Rate) Values(105,'Chow mein','Chinese ',30);

create table Bills(BillNo int,Date varchar(20),Code int,Qty int);
insert into Bills(BillNo,Date,Code,Qty) values(1,'2010-04-01',101,3);
insert into Bills(BillNo,Date,Code,Qty) values(2,'2010-04-02',102,5);
insert into Bills(BillNo,Date,Code,Qty) values(3,'2010-04-03',103,8);
insert into Bills(BillNo,Date,Code,Qty) values(4,'2010-04-04',104,2);
insert into Bills(BillNo,Date,Code,Qty) values(5,'2010-04-05',105,1);

select avg(Rate) from Items where Category="South Indian";
select Category,count(Name) from Items group by Category;
select Code,sum(Qty) from Bills group by Code having sum(Qty)>=3;
select BillNo,Date,Bills.Code,Qty from Items,Bills where Items.Code=Bills.Code and Name like '%Dosa';
select BillNo,sum(Qty) from Bills group by Billno;

show tables;
select * from Items;
select * from Bills;