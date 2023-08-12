show databases;
USE classicmodels;

-- ---------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE g_d1()
BEGIN
	SELECT * FROM customers;
    SELECT * FROM employees;
END //
DELIMITER ;
-- ----------------------------------------------------------------------

CALL g_d();
CALL g_d1();
 
 -- --------------------------------------------------------------------- 
DELIMITER // 
CREATE PROCEDURE city_c (in @city varchar(30))
BEGIN
	SELECT * FROM customers where customer.city=@city;
END //
DELIMITER ;


CALL C_COUNT_CITY();

DROP PROCEDURE C_COUNT_CITY;

-- --------------------------------------------------------------------------
select * from customers
union 
select * from employees;
 
-- --------------------------------------------------------------------------
select concat(firstName," ",lastname) from employees
union all
select concat(contactFirstName," ",contactLastName) from customers;

-- ---------------------------------------------------------------------------

DELIMITER // 
CREATE PROCEDURE city_c @'city' varchar(30)
BEGIN
	SELECT * FROM customers where customer.city= @'city';
END //
DELIMITER ;

call city_c();
-- -----------------------------------------------------------------
create index idx_pname on employees (firstName, lastname);

select * from employees limit 10 ;

desc employees;

alter table employees
drop index idx_pname;

-- ------------------------------------------------------------------

DELIMITER //
CREATE PROCEDURE city_c (in `city` VARCHAR(30))
BEGIN
	select * from customers ;
    SELECT * FROM customers WHERE city = city;
END //
DELIMITER ;

drop procedure city_c;

DELIMITER //
CREATE PROCEDURE g_c_name()
BEGIN
	select * from customers ;
    SELECT * FROM customers where contactFirstName like "%D";
END //
DELIMITER ;

drop procedure g_c_name;
-- ----------------------------------------------------------------------
USE classicmodels;
DELIMITER $$
CREATE PROCEDURE TEST1()
BEGIN
	SELECT * FROM customers;
END $$
DELIMITER ;

CALL TEST1;

DROP PROCEDURE TEST1;
-- -----------------------------------------------------------------------
DELIMITER $$
CREATE PROCEDURE TEST1()
BEGIN
	DECLARE c_id INT DEFAULT 103;
	SELECT * FROM customers where customerNumber = c_id;
END $$
DELIMITER ;

CALL TEST1;
SELECT * FROM customers;

DROP PROCEDURE TEST1;
-- -----------------------------------------------------------------------
select * from orders;

select c.customerNumber, count(o.orderNumber) from customers c 
join orders o using(customerNumber)
group by 1
order by 2 desc;

-- --------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE CUST_ORDER( IN c_id INT, OUT  OrderCount INT)
BEGIN
	select count(o.orderNumber) INTO OrderCount
    from customers c 
	join orders o using(customerNumber)
	where customerNumber = c_id
    group by 1;
    SET OrderCount = OrderCount;
END //
DELIMITER ;

set @c_id = 103;
call CUST_ORDER(@c_id,@OrderCount);