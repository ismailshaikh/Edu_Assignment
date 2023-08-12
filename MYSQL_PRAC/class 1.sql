SHOW DATABASES;

CREATE DATABASE demo_band;
use demo_band;


CREATE TABLE bands(
id int not null auto_increment,
name varchar(255) not null,
primary key (id)
);

-- ---------------------------------------------------------------------------

alter table bands
add column (new int not null);

-- ---------------------------------------------------------------------------

alter table bands
add column new1 int not null;
-- -------------------------------------------------------------------------------

select * from bands;

-- ----------------------------------------------------------------------------------
insert into bands values (1,"ismail",400102,400102);

-- -----------------------------------------------------------------------------------
-- CREATE 

create table participant ( 
id int not null auto_increment primary key,
name varchar(30)
);


-- -----------------------------------------------------------------------------------
-- ALTER
alter table bands
add column city varchar(50);

-- -----------------------------------------------------------------------------------
-- TRUNCATE
truncate table bands;

-- -------------------------------------------------------------------------------------
-- DROP
drop table bands;

-- --------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------

-- DML ( Data Manipulation Language )- SELECT , INSERT , UPDATE, DELETE

-- UPDATE
UPDATE bands 
set name ="META"
where id = 2;
-- --------------------------------------------------------------------
select * from bands;
-- --------------------------------------------------------------------
insert into bands values (1,"Ravi",400102,400102,"mumbai"),
(2,"Ismail",400102,400102,"mumbai"),
(3,"sam",42522,4012,"Delhi");

-- --------------------------------------------------------------------
delete	from bands
where id = 2;


-- --------------------------------------------------------------------