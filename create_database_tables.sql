CREATE DATABASE GavinDB; 

USE GavinDB; 

create table files ( 
  name varchar(50) primary key, 
  sizekb int,
  virus boolean
  ); 

create table owners ( 
  ownerid int primary key, 
  filename varchar(50), 
  ownername varchar(50)
  ); 
