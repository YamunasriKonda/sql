create database qarestaurant;
use qarestaurant;
 
create table customers (c_id int  unique not null auto_increment,
 c_name varchar(100) not null, c_phno varchar(11) not null, 
 c_addrs varchar(200) not null, c_email varchar(50) not null);
 
 describe customers;
 
 insert into customers (c_name, c_phno, c_addrs,c_email) values ("Jishwa", "7894561237", "christchurchroad", "jishwa.konda@gmail.com");
  insert into customers (c_name, c_phno, c_addrs,c_email) values ("phani", "8945612378", "Bournmouth", "phani.konda@gmail.com");
   insert into customers (c_name, c_phno, c_addrs,c_email) values ("yamuna", "9456123788", "southampton", "yamuna.jakkam@gmail.com");
 insert into customers (c_name, c_phno, c_addrs,c_email) values ("sri", "561234789", "london", "sri.konda@gmail.com");
 insert into customers (c_name, c_phno, c_addrs,c_email) values ("skhanda", "1234567897", "central london", "skhanda.konda@gmail.com");
select * from customers;

create table menu(m_id int unique not null auto_increment, m_item varchar(200) not null, m_price decimal(5,2) not null, m_stock boolean not null, m_desc varchar(100) not null);
insert into menu (m_item, m_price, m_stock, m_desc) values ("dosa", 2.63, true, "crispy"), ("pasta", 3.56, true, "mild spice"), ("ice cream", 1.03, true, "venilla"), ("jamum", 2.42, true, "dessert"), ("pizza", 2.34, true, "vegan");
select * from menu;



create table orders(o_id int unique not null auto_increment, 0_date date not null, c_id int not null, o_total decimal(7,2),
 primary key(o_id),
 foreign key(c_id) references customers(c_id) on delete cascade);
 
 insert into orders(0_date, c_id) values("2022:09:21",1 );
  insert into orders(0_date, c_id,o_total ) values("2022:09:21",2, 6.19);
  insert  into orders(0_date, c_id, o_total) values("2022:09:21",3, 4.59);
  insert into orders(0_date, c_id,o_total) values("2022:09:21",2, 2.63);
  insert into orders(0_date, c_id,o_total) values("2022:09:21",2, 1.03);
 describe orders;
 
 delete from  customers where c_id=2;
 
 select * from orders;
 
 create table order_item( od_id int unique not null auto_increment,
 odi_id int not null, om_id int not null,
 primary key(od_id),
 foreign key(odi_id) references orders(o_id) on delete cascade,
 foreign key(om_id) references menu(m_id) on delete cascade);
 
 insert into order_item(odi_id, om_id) values (1,1), (2,2), (3,3), (4,4), (5,5);
 
select * from customers where c_id=4;



 
 
select * from order_item;
select * from orders;
 

 describe order_item;
 
 drop table orders;
 show tables;
 
 
drop table order_item;
drop table orders;
drop table menu;
drop table customers;

show tables;

 

create table ncustomers (c_id int  unique not null auto_increment,
 c_name varchar(100) not null, c_phno varchar(11) not null, 
 c_addrs varchar(200) not null, c_email varchar(50) not null);
 
  insert into ncustomers (c_name, c_phno, c_addrs,c_email) values ("Jishwa", "7894561237", "christchurchroad", "jishwa.konda@gmail.com");
  insert into ncustomers (c_name, c_phno, c_addrs,c_email) values ("phani", "8945612378", "Bournmouth", "phani.konda@gmail.com");
   insert into ncustomers (c_name, c_phno, c_addrs,c_email) values ("yamuna", "9456123788", "southampton", "yamuna.jakkam@gmail.com");
 insert into ncustomers (c_name, c_phno, c_addrs,c_email) values ("sri", "561234789", "london", "sri.konda@gmail.com");
 insert into ncustomers (c_name, c_phno, c_addrs,c_email) values ("skhanda", "1234567897", "central london", "skhanda.konda@gmail.com");
 
 select * from ncustomers;
 
 create table nmenu(m_id int unique not null auto_increment, m_item varchar(200) not null, m_price decimal(5,2) not null, m_stock boolean not null, m_desc varchar(100) not null);
insert into nmenu (m_item, m_price, m_stock, m_desc) values ("dosa", 2.63, true, "crispy"), ("pasta", 3.56, true, "mild spice"), ("ice cream", 1.03, true, "venilla"), ("jamum", 2.42, true, "dessert"), ("pizza", 2.34, true, "vegan");
select * from nmenu;

create table norders(o_id int unique not null auto_increment, 0_date date not null, c_id int not null, o_total decimal(7,2),
 primary key(o_id),
 foreign key(c_id) references ncustomers(c_id) on delete cascade);
 
 insert into norders(0_date, c_id) values("2022:09:21",1 );
  insert into norders(0_date, c_id,o_total ) values("2022:09:21",2, 6.19);
  insert  into norders(0_date, c_id, o_total) values("2022:09:21",3, 4.59);
  insert into norders(0_date, c_id,o_total) values("2022:09:21",2, 2.63);
  insert into norders(0_date, c_id,o_total) values("2022:09:21",2, 1.03);
select * from norders;

create table norder_item( od_id int unique not null auto_increment,
 odi_id int not null, om_id int not null,
 primary key(od_id),
 foreign key(odi_id) references norders(o_id) on delete cascade,
 foreign key(om_id) references nmenu(m_id) on delete cascade);
 
 insert into norder_item(odi_id, om_id) values (1,1), (2,2), (3,3), (4,4), (5,5);
 
select * from norder_item;

select * from nmenu  where m_price>=3.00;
 
 select * from nmenu  where m_price between 1.00 and 5.00;
 
 select * from nmenu where m_price >1.00 and m_price <3.00;

select * from ncustomers where c_name like "%J";

select distinct c_name from ncustomers;
select* from nmenu order by m_price;
select * from norders order by o_total asc;
select * from norders order by o_total desc limit 3;
select * from nmenu order by m_item asc limit 3;
select * from nmenu limit 2;
select * from nmenu order by m_price desc limit 3;
select * from nmenu order by m_price asc limit 2;
select * from ncustomers order by c_name desc limit 3;
select avg(m_price) from nmenu;
select max(m_price) from nmenu;
select min(m_price) from nmenu;
select sum(m_price) from nmenu order by m_price desc limit 3;
select sum(m_price) from nmenu order by m_price asc limit 2;
select c_id from norders where o_id=2;
select 0_date from norders where o_id=2;
select * from ncustomers where c_id=(select c_id from norders where o_id=4);
select * from nmenu where m_id=(select od_id from norder_item where odi_id=3);
select m_item name from nmenu where m_id=(select od_id from norder_item where odi_id=2);

select * from ncustomers join norders on ncustomers.c_id=norders.c_id;
select * from ncustomers c left outer join norders o on c.c_id=o.c_id;




select * from norders;



























 




 
 
 
 
 