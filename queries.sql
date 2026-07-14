use GavinDB; 
--select
Select * from files; 
--update
update files
set sizekb = 60000
where name = 'NotAVirus.exe';

--delete 
delete from files
where name = 'DefinitelyVirus.exe'; 

-- and 
select *
from files
where sizekb > 1000
and virus = false; 

--or
select *
from files 
where virus = true
or sizekb > 50000;

--like 
select * 
from files
where name like '%Virus%';

--order by 
select * 
from files 
order by sizekb desc; 

--group by 
select Virus, count(*)
from files
group by Virus;

-- inner join 
select files.name, owners.ownername
from files
inner join owners
on files.name = owners.filename; 

-- left join
select files.name, owners.ownername
from files
left join owners
on files.name = owners.filename; 

-- right join 
select files.name, owners.ownername
from files
right join owners
on files.name = owners.filename; 

--union
select name 
from files
union 
select ownername
from owners; 

--subquery 
select * 
from files 
where sizekb > 
(
  select avg(sizekb)
  from files
);
