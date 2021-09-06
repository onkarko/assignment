CREATE DATABASE Information;
use information;
create table Student( AdmNo int ,Name varchar(20),Class varchar(10),Sec varchar(10),RNo int,Address varchar(20),Phone varchar(10));
insert into Student(AdmNO,Name ,class,Sec,RNo,Address,Phone) values (121,'Utkarsh Madaan','12','A',1,'Punjabi Bagh','9584752');
insert into Student(AdmNO,Name ,class,Sec,RNo,Address,Phone) values (122,' Utkarsh Madaan','12','B',2,'mohan nagar','458478');
insert into Student(AdmNO,Name ,class,Sec,RNo,Address,Phone) values (123,' Rakesh Gupta','12','c',3,'Oja nagar','7878545');
insert into Student(AdmNO,Name ,class,Sec,RNo,Address,Phone) values (122,' Sohan Sharma','10','B',4,'Sakti nagar','87478');
insert into Student(AdmNO,Name ,class,Sec,RNo,Address,Phone) values (1245,' Mohan Sharma','9','B',5,'janki nagar','78478');
select max(class) as "highest", min(class) as "lowest" from Student;
select class,count(class) as "No.of Students" from Student group by class;
select count(class) from Student where class = 10;

create table Sport( AdmNo int ,Game varchar(20),CoachName varchar(20),Grade varchar(10));
insert into Sport(AdmNo,Game,CoachName,Grade) values(121,'Football','Rana Mohan','A');
insert into Sport(AdmNo,Game,CoachName,Grade) values(122,'Cricket','Virat','B');
insert into Sport(AdmNo,Game,CoachName,Grade) values(123,'BaseBall','Ravikant','C');
insert into Sport(AdmNo,Game,CoachName,Grade) values(124,'BasketBall','Jordan','A');
insert into Sport(AdmNo,Game,CoachName,Grade) values(125,'Football','Rana Mohan','A');
select Student.* from Student,Sport where Student.AdmNo=Sport.AdmNo and Game='Cricket';
select Student.AdmNo,name,class,Sec,RNo from Student,Sport where Student.AdmNo=Sport.AdmNo and Grade='A';
select Name,Phone from Student,Sport where Student.AdmNo=Sport.AdmNo and class=12 and Game is not null;
select CoachName,count(AdmNo) from Sport group by CoachName;
select Name,Phone from Student,Sport where Student.AdmNo=Sport.AdmNo and Grade='A'and CoachName='Rana Mohan';


select * from Student;
select * from Sport;
