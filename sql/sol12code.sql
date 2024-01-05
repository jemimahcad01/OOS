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
select* from  oos_user_login;

insert into oos_user_login(login_id,user_id_,password,new_password,create_on,modified_on,lastname,firstname)
values(121,1001,'Aarif','Aarif@12','2023-12-01','2023-14-01','S','Aarif'),
(122,1002,'Abdulrahman','Abdulrahman@12','2023-13-01','2023-15-01','A','Abdulrahman'),
(123,1003 ,'Abinaya','Abinaya@12','2023-18-01','2023-16-01','j','Abinaya.J'),
(124,1004,'Ahamed', 'Ahamed@12','2023-19-01','2023-16-01','j','Ahamed J'),
(125,1005,'ALEXANDAR','ALEXANDAR@12','2023-19-01','2023-16-01','A','ALEXANDAR A'), 
(126,1006,'Anand','Anand@12','2023-19-01','2023-16-01','R','Anand R'),
(127,1007,'Anjuka','Anjuka@12','2023-19-01','2023-16-01','P','Anjuka'),
(128,1008,'Aravind','Aravind@12','2023-15-01','2023-13-01','K','Aravind.K'),
(129,1009,'BasheerAhamedM','BasheerAhamed@12','2023-12-01','2023-16-01','M','BasheerAhamedM'),
(1210,1010,'Chandran','Chandran@12','2023-02-01','2023-19-01','P','Chandran P'),
(1211,1011,'Danielraj','Danielraj@12','2023-02-01','2023-10-03','A','Danielraj A'),
(1212,1012,'Dinesh','Dinesh @12','2023-02-01','2023-10-03','T','Dinesh T'),
(1213,1013,'DomenigVasanthan','DomenigVasanthan@12','2023-02-01','2023-22-03','A','DomenigVasanthan A'),
(1214,1014,'Gopal','Gopal@12','2023-06-01','2023-22-03','S','Gopal S'),
(1215,1015,'HARSH','HARSH@12','2023-07-01','2023-12-03','A','HARSH A'),
(1216,1016,'Jayapravin','Jayapravin@12','2023-06-01','2023-19-03','D','Jayapravin D'),
(1217,1017,'jemimah','jemimah@12','2023-08-01','2023-13-03','j','jemimah j'),
(1218,1018,'Manimohana','Manimohana@12','2023-08-01','2023-12-03','S','Manimohana S'),
(1219,1019,'Kiruthiga','Kiruthiga@12','2023-07-01','2023-12-03','R','Kiruthiga R'),
(1220,1020,'Nancy','Nancy@12','2023-07-01','2023-12-03','A','Nancy A'),
(1221,1021,'Natrayan','Natrayan@12','2023-05-01','2023-23-03','M','Natrayan M'),
(1222,1022,'Pavithra','Pavithra@12','2023-07-01','2023-27-03','K','Pavithra K'),
(1223,1023,'prabhaharn','prabhaharn@12','2023-04-01','2023-23-03','M','prabhaharn.M'),
(1224,1024,'RAMKI','RAMKI@12','2023-04-01','2023-23-03','S','RAMKI S'),
(1225,1025,'SahithAfridiSabibulla','SahithAfridiSabibulla@12','2023-04-01','2023-13-03','','SahithAfridiSabibulla'),
(1226,1026,'sakthivel','sakthivel@12','2023-04-01','2023-13-03','S','sakthivel.S'),
(1227,1027,'SanjayBalakrishnan','SanjayBalakrishnan@12','2023-15-01','2023-29-03','','SanjayBalakrishnan'),
(1228,1028,'SanthoshKumar','SanthoshKumar@12','2023-04-01','2023-13-03','S','SanthoshKumar S'),
(1229,1029,'Saran','Saran@12','2023-04-01','2023-13-03','S','SaranS'),
(1230,1030,'Siranjeevi','Siranjeevi@12','2023-04-01','2023-13-03','S','Siranjeevi S');


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
insert into oos_usr_order(order_id, user_id_,productname,price,ordered_on,ordered_by,delivery_on,delivery_by)
values (121,1001,'ring',45000,'2023-13-01','2023-15-01','2023-13-01','2023-15-01'),
(122,1002,'necklace',55000,'2023-13-01','2023-15-01','2023-13-01','2023-15-01'),
(123,1003 ,'bangle',65000,'2023-18-01','2023-16-01','2023-13-01','2023-15-01'),
(124,1004,'ring',50000,'2023-19-01','2023-16-01','2023-13-01','2023-15-01'),
(125,1005,'bangle',45000,'2023-19-01','2023-16-01','2023-13-01','2023-15-01'), 
(126,1006,'necklace',75000,'2023-19-01','2023-16-01','2023-13-01','2023-15-01'),
(127,1007,'necklace',95000,'2023-19-01','2023-16-01','2023-13-01','2023-15-01'),
(128,1008,'ring',85000,'2023-15-01','2023-13-01','2023-13-01','2023-15-01'),
(129,1009,'bangle',65000,'2023-12-01','2023-16-01','2023-13-01','2023-15-01'),
(1210,1010,'necklace',65000,'2023-02-01','2023-19-01','2023-13-01','2023-15-01'),
(1211,1011,'necklace',95000,'2023-02-01','2023-10-03','2023-13-01','2023-15-01'),
(1212,1012,'earing',75000,'2023-02-01','2023-10-03','2023-13-01','2023-15-01'),
(1213,1013,'necklace',55000,'2023-02-01','2023-22-03','2023-13-01','2023-15-01'),
(1214,1014,'ring',66000,'2023-06-01','2023-22-03','2023-13-01','2023-15-01'),
(1215,1015,'earing','88000','2023-07-01','2023-12-03','2023-13-01','2023-15-01'),
(1216,1016,'ring',99000,'2023-06-01','2023-19-03','2023-13-01','2023-15-01'),
(1217,1017,'necklace',75000,'2023-08-01','2023-13-03','2023-13-01','2023-15-01'),
(1218,1018,'earing',85000,'2023-08-01','2023-12-03','2023-13-01','2023-15-01'),
(1219,1019,'bangle',58000,'2023-07-01','2023-12-03','2023-13-01','2023-15-01'),
(1220,1020,'ring',98000,'2023-07-01','2023-12-03','2023-13-01','2023-15-01'),
(1221,1021,'earing',88000,'2023-05-01','2023-23-03','2023-13-01','2023-15-01'),
(1222,1022,'bangle',77000,'2023-07-01','2023-27-03','2023-13-01','2023-15-01'),
(1223,1023,'bangle',87000,'2023-04-01','2023-23-03','2023-13-01','2023-15-01'),
(1224,1024,'earing',64000,'2023-04-01','2023-23-03','2023-13-01','2023-15-01'),
(1225,1025,'earing',78000,'2023-04-01','2023-13-03','2023-13-01','2023-15-01'),
(1226,1026,'ring',46000,'2023-04-01','2023-13-03','2023-13-01','2023-15-01'),
(1227,1027,'bangle',78000,'2023-15-01','2023-29-03','2023-13-01','2023-15-01'),
(1228,1028,'bangle',87000,'2023-04-01','2023-13-03','2023-13-01','2023-15-01'),
(1229,1029,'necklace',87000,'2023-04-01','2023-13-03','2023-13-01','2023-15-01'),
(1230,1030,'ring',88000,'2023-04-01','2023-13-03','2023-13-01','2023-15-03');
  
  
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
  insert into oos_usr_promo(promo_id,_user_id,productname,size,quality,color)
values(122,1002,'necklace',56,'good','golden'),
(123,1003 ,'bangle',76,'good','golden'),
(124,1004,'ring',89,'good','golden'),
(125,1005,'bangle',78,'good','golden'), 
(126,1006,'necklace',67,'good','golden'),
(127,1007,'necklace',87,'good','golden'),
(128,1008,'ring',90,'good','golden'),
(129,1009,'bangle',67,'good','golden'),
(1210,1010,'necklace',65,'good','golden'),
(1211,1011,'necklace',95,'good','golden'),
(1212,1012,'earing',75,'good','golden'),
(1213,1013,'necklace',55,'good','golden'),
(1214,1014,'ring',66,'good','golden'),
(1215,1015,'earing',88,'good','golden'),
(1216,1016,'ring',99,'good','golden'),
(1217,1017,'necklace',75,'good','golden'),
(1218,1018,'earing',85,'good','golden'),
(1219,1019,'bangle',58,'good','golden'),
(1220,1020,'ring',98,'good','golden'),
(1221,1021,'earing',88,'good','golden'),
(1222,1022,'bangle',77,'good','golden'),
(1223,1023,'bangle',87,'good','golden'),
(1224,1024,'earing',64,'good','golden'),
(1225,1025,'earing',78,'good','golden'),
(1226,1026,'ring',46,'good','golden'),
(1227,1027,'bangle',78,'good','golden'),
(1228,1028,'bangle',87,'good','golden'),
(1229,1029,'necklace',87,'good','golden'),
(1230,1030,'ring',88,'good','golden');
  
  
  
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

insert into oos_usr_inrest(inrest_id, _user_id_,productname,size,quality,color)
values(122,1002,'necklace',56,'good','golden'),
(123,1003 ,'bangle',76,'good','golden'),
(124,1004,'ring',89,'good','golden'),
(125,1005,'bangle',78,'good','golden'), 
(126,1006,'necklace',67,'good','golden'),
(127,1007,'necklace',87,'good','golden'),
(128,1008,'ring',90,'good','golden'),
(129,1009,'bangle',67,'good','golden'),
(1210,1010,'necklace',65,'good','golden'),
(1211,1011,'necklace',95,'good','golden'),
(1212,1012,'earing',75,'good','golden'),
(1213,1013,'necklace',55,'good','golden'),
(1214,1014,'ring',66,'good','golden'),
(1215,1015,'earing',88,'good','golden'),
(1216,1016,'ring',99,'good','golden'),
(1217,1017,'necklace',75,'good','golden'),
(1218,1018,'earing',85,'good','golden'),
(1219,1019,'bangle',58,'good','golden'),
(1220,1020,'ring',98,'good','golden'),
(1221,1021,'earing',88,'good','golden'),
(1222,1022,'bangle',77,'good','golden'),
(1223,1023,'bangle',87,'good','golden'),
(1224,1024,'earing',64,'good','golden'),
(1225,1025,'earing',78,'good','golden'),
(1226,1026,'ring',46,'good','golden'),
(1227,1027,'bangle',78,'good','golden'),
(1228,1028,'bangle',87,'good','golden'),
(1229,1029,'necklace',87,'good','golden'),
(1230,1030,'ring',88,'good','golden');
    
   
   
   
   
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

insert into oos_usr_shop(shop_id,_usr_id,necklace,earing,bangle,ring)
values(122,1002,'yes','no','yes','no'),
(123,1003 ,'yes','no','yes','no'),
(124,1004,'no','no','yes','yes'),
(125,1005,'no','yes','no','yes'), 
(126,1006,'no','yes','no','yes'),
(127,1007,'yes','no','yes','no'),
(128,1008,'no','yes','no','yes'),
(129,1009,'no','yes','no','yes'),
(1210,1010,'no','yes','no','yes'),
(1211,1011,'yes','no','no','yes'),
(1212,1012,'no','yes','no','yes'),
(1213,1013,'yes','no','yes','no'),
(1214,1014,'yes','yes','no','yes'),
(1215,1015,'yes','no','no','yes'),
(1216,1016,'yes','no','yes','no'),
(1217,1017,'yes','no','yes','no'),
(1218,1018,'yes','no','yes','no'),
(1219,1019,'no','yes','no','yes'),
(1220,1020,'yes','yes','no','yes'),
(1221,1021,'yes','no','yes','no'),
(1222,1022,'no','yes','yes','no'),
(1223,1023,'no','yes','no','yes'),
(1224,1024,'yes','no','no','yes'),
(1225,1025,'yes','no','yes','no'),
(1226,1026,'no','no','yes','no'),
(1227,1027,'no','yes','no','yes'),
(1228,1028,'yes','no','no','yes'),
(1229,1029,'yes','no','yes','no'),
(1230,1030,'yes','no','no','yes');
 

 


  
 
  
  
  