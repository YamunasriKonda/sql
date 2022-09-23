 # answers for world 
 use world;
 show tables;
 select * from city;
 select * from country;
 select * from countrylanguage;
 #(q1)
select count(*) from city where countrycode =  "usa";
#(q2)
select population , lifeExpectancy from country where code="ARG";
#(q3)
select city.Name from country join city on country.capital = city.id
where country.Name  =" Spain ";

#(q 10)
select * from country order by SurfaceArea desc limit 10;
#(q11)
select Name from city order by Population desc limit 5;

select * from city ;





#(q 14)
select distinct Language from countrylanguage ;
#(q 19)
select GovernmentForm, count(*) from country group by GovernmentForm order by count(*) desc limit 3;
#(q20)
select count (Name) from country  order by  IndepYear >0;
#(q5)
select c1. language from countryc left join countrylanguage c1 on c.code = c1.countrycode  where c.region="southeast Asia";
#(Q6)
select name from city where name like "F%" limit 25;
#(q8)








select * from country;
select * from countrylanguage;









 
 
 
 