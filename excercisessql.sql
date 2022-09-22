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
#(q 14)
select distinct Language from countrylanguage ;
#(q 19)
select GovernmentForm, count(*) from country group by GovernmentForm order by count(*) desc limit 3;










select * from city;
select * from country;
select * from countrylanguage;









 
 
 
 