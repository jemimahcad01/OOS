create database CAD_OOS;
use CAD_OOS;
truncate CAD_OOS_tabl1;
drop table oos_user_reg;


create table oos_user_reg (
user_id int not null primary key,
lastname varchar(255) not null,
firstname varchar(255) not null,
username varchar(255) not null
);
select * from oos_user_reg;
alter table oos_user_reg add column ph_no varchar(50);
alter table oos_user_reg add column gender varchar(50);
insert into oos_user_reg (user_id,lastname,firstname,username,ph_no)
values(1001,'S','Aarif','Aarif S',9025171297),
(1002,'A','Abdulrahman','Abdulrahman A',9042116396),
(1003 ,'j','Abinaya.J','Abinaya.J',8124568273),
(1004,'j','Ahamed J', 'Ahamed J',9659021407),
(1005,'A','ALEXANDAR A','ALEXANDAR A',9360415014), 
(1006,'R','Anand R','Anand R',8489903993),
(1007,'P','Anjuka','Anjuka P',6379944693),
(1008,'K','Aravind.K','Aravind.K', 8778624466),
(1009,'M','BasheerAhamedM','BasheerAhamedM',9514690405),
(1010,'P','Chandran P','Chandran P',9361313775),
(1011,'A','Danielraj A','Danielraj A',9092838116),
(1012,'T','Dinesh T','Dinesh T', 9629724889),
(1013,'A','DomenigVasanthan A','DomenigVasanthan A',8220904749),
(1014,'S','Gopal S','Gopal S',9361448297),
(1015,'A','HARSH A','HARSH A',9025664587),
(1016,'D','Jayapravin D','Jayapravin D',7094937902),
(1017,'j','jemimah j','jemimah j',9489189043),
(1018,'S','Manimohana S','Manimohana S',9994987424),
(1019,'R','Kiruthiga R','Kiruthiga R',7339220870 ),
(1020,'A','Nancy A','Nancy A', 8428267221),
(1021,'M','Natrayan M','Natrayan M' , 8825684098),
(1022,'K','Pavithra K','Pavithra K' ,9025862493),
(1023,'M','prabhaharn.M','prabhaharn.M',9043792705),
(1024,'S','RAMKI S','RAMKI S',6383693933),
(1025,'','SahithAfridiSabibulla','SahithAfridiSabibulla',9042314497),
(1026,'S','sakthivel.S','sakthivel.S', 9514605031),
(1027,'','SanjayBalakrishnan','SanjayBalakrishnan',7708407173),
(1028,'S','SanthoshKumar S','SanthoshKumar S',9344560546),
(1029,'S','SaranS','SaranS',6380026784),
(1030,'S','Siranjeevi S','Siranjeevi S',6383685553);


create table oos_user_login
(
login_id int not null primary key,
user_id_ int not null,
password varchar(255) not null,
 new_password varchar(255) not null,
 create_on varchar(255)not null,
 modified_on varchar(255) not null,
 lastname varchar(255) not null,
 firstname varchar(255) not null,
 foreign key(user_id_) references oos_user_reg(user_id)
 );
select* from  oos_userlogin;


 create table oos_usr_order( 
  order_id int not null primary key,
  user_id_ int not null,
  productname varchar(255),
  price double not null,
  ordered_on varchar(255) not null,
  ordered_by varchar(255) not null,
  delivery_on varchar(255) not null,
  delivery_by varchar(255) not null,
  foreign key(user_id_ ) references oos_user_reg (user_id)
  );
  select * from  oos_usr_order;
  
  
  create table oos_usr_promo
  ( 
  promo_id int not null primary key,
  _user_id int not null,
  productname varchar(255),
  size double not null,
  quality varchar(255) not null,
  color varchar(255) null,
  foreign key(_user_id) references oos_user_reg(user_id)
  );
  select * from oos_usr_promo;
  
  create table oos_usr_inrest
  (
  inrest_id int not null primary key,
  _user_id_ int not null,
   productname varchar(255),
  size double not null,
  quality varchar(255) not null,
  color varchar(255) null,
   foreign key(_user_id_) references oos_user_reg(user_id)
   );
   select * from oos_usr_inrest;
   
create table oos_usr_shop (
shop_id int not null primary key,
_usr_id int not null,
necklace varchar(255),
earing varchar(255),
bangle varchar(255),
ring varchar(50),
foreign key(_usr_id) references oos_user_reg(user_id)
   );
select * from oos_usr_shop;
 

 


  
 
  
  
  