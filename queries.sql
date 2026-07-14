use GavinDB; 
--select
Select * from files; 
--update
update files
set sizekb = 60000
where name = 'NotAVirus.exe'
