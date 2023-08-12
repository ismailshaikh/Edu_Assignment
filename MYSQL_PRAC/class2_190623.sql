/* WildCard
Constrains
Concat */

use ismail;

create table customers(
c_id int not null auto_increment primary key,
c_name varchar(50),
c_add varchar(255) ,
c_age int check(c_age > 18),
c_email varchar(150) unique
);
-- ------------------------------------------------------------------------

create table orders(
oid int not null auto_increment primary key,
c_id int not null,
order_date datetime not null default current_timestamp,
constraint orders foreign key(c_id) references customers(c_id)
);
-- ------------------------------------------------------------------------
desc customers;

desc orders;
-- ------------------------------------------------------------------------

insert into customers values (1,"ismail","Mumbai",27,"ismail123@gmail.com"),
							(2,"ravi","Mumbai",29,"ravi123@gmail.com"),
                            (3,"shyam","Mumbai",28,"shyam123@gmail.com");

insert into customers (c_name,c_add,c_age,c_email) values ("ismaddil","Mumbai",28,"ismaiddddl123@gmail.com");
-- ------------------------------------------------------------------------
select * from customers;

-- ------------------------------------------------------------------------
insert into orders (oid,c_id) values (1,2);

select * from orders;
-- ------------------------------------------------------------------------

								

-- ------------------------------------------------------------------------------------------------------------------------
-- DDL, DML,TCL,DCL,

-- ------------------------------------------------------------------------------------------------------------------------
-- DDL -> CREATE, ALTER, DROP, TRUNCATE
USE ismailshaikh;
CREATE TABLE customer (
c_id INT NOT NULL PRIMARY KEY,
c_name VARCHAR(50),
c_add VARCHAR(255),
c_age INT,
c_email VARCHAR(200) UNIQUE
);

ALTER TABLE customer 
DROP COLUMN c_age;

SELECT * FROM customer;

ALTER TABLE customer
ADD COLUMN c_age INT NOT NULL AFTER c_name ;

ALTER TABLE customer 
RENAME COLUMN c_name TO customer_name;

ALTER TABLE customer
RENAME COLUMN customer_name TO  c_name;

ALTER TABLE customer
MODIFY c_id INT NOT NULL AUTO_INCREMENT; 

ALTER TABLE customer
MODIFY c_email VARCHAR(200) NOT NULL UNIQUE;

DESC customer;
-- ------------------------------------------------------------------------------------------------------------------------
-- DML -> INSERT, UPDATE, DELETE, | DRL -> SELECT

INSERT INTO customer VALUES (1,"ISMAIL",28,"MUMBAI","ISMAIL@GAMIL.COM"),
							(2,"RAVI",25,"BANGLORE","RAVISALV@GAMIL.COM"),
                            (3,"OM",29,"DELHI","OMKAR@GAMIL.COM"),
                            (4,"BHAVESH",27,"BARODA","BHAVA@GAMIL.COM");

SELECT * FROM customer;

INSERT INTO customer (c_name,c_age,c_add,c_email) VALUES ("HARDIK",26,"AHMADABAD","HARDIK@GAMIL.COM");

-- ------------------------------------------------------------------------------------------------------------------------
-- DCL -> GRANT, REVOKE



-- ------------------------------------------------------------------------------------------------------------------------
-- TCL -> COMMIT, SAVEPOINT, ROLLBACK

-- ------------------------------------------------------------------------------------------------------------------------

