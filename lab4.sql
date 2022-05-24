-- create tables

DROP TABLE supplier; 
CREATE TABLE supplier
(
SUPP_ID int PK,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50) NOT NULL,
SUPP_PHONE varchar(50) NOT NULL
);

DROP TABLE customer; 
CREATE TABLE customer
(
CUS_ID int PK,
CUS_NAME varchar(20) NOT NULL,
CUS_PHONE varchar(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER char
);

DROP TABLE category; 
CREATE TABLE category
(
CAT_ID int PK,
CAT_NAME varchar(20) NOT NULL
);

DROP TABLE product; 
CREATE TABLE product
(
PRO_ID int PK,
PRO_NAME varchar(20) NOT NULL DEFAULT "Dummy",
PRO_DESC VARCHAR(60),
CAT_ID int FK
);

DROP TABLE supplier_pricing; 
CREATE TABLE supplier_pricing
(
PRICING_ID int PK,
PRO_ID int FK,
SUPP_ID int FK,
SUPP_PRICE int DEFAULT 0
);

DROP TABLE order; 
CREATE TABLE order
(
ORD_ID int PK,
ORD_AMOUNT int NOT NULL,
ORD_DATE DATE NOT NULL,
CUS_ID int FK,
PRICING_ID int FK
);

DROP TABLE rating; 
CREATE TABLE rating
(
RAT_ID int PK,
ORD_ID int FK,
RAT_RATSTARS int NOT NULL
);


-- insert data to the tables

INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (1, "Rajesh Retails", "Delhi", "1234567890");
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (2, "Appario Ltd.", "Mumbai", "2589631470");
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (3, "Knome products", "Banglore", "9785462315");
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (4, "Bansal Retails", "Kochi", "8975463285");
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (5, "Mittal Ltd.", "Lucknow", "7898456532");

INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER ) VALUES (1, "AAKASH", "9999999999", "DELHI", "M");
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER ) VALUES (2, "AMAN", "9785463215", "NOIDA", "M");
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER ) VALUES (3, "NEHA", "9999999999", "MUMBAI", "F");
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER ) VALUES (4, "MEGHA", "9994562399", "KOLKATA", "F");
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER ) VALUES (5, "PULKIT", "7895999999", "LUCKNOW", "M");
    
INSERT INTO category (CAT_ID, CAT_NAME ) VALUES (1, "BOOKS");                                         
INSERT INTO category (CAT_ID, CAT_NAME ) VALUES (2, "GAMES");
INSERT INTO category (CAT_ID, CAT_NAME ) VALUES (3, "GROCERIES");
INSERT INTO category (CAT_ID, CAT_NAME ) VALUES (4, "ELECTRONICS");
INSERT INTO category (CAT_ID, CAT_NAME ) VALUES (5, "CLOTHES");

INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (1, "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", 2);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (2, "TSHIRT", "SIZE-L with Black, Blue and White variations", 5);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (3, "ROG LAPTOP", "Windows 10 with 15inch screen, i7 processor, 1TB SSD", 4);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (4, "OATS", "Highly Nutritious from Nestle", 3);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (5, "HARRY POTTER", "Best Collection of all time by J.K Rowling", 1);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (6, "MILK", "1L Toned MIlk", 3);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (7, "Boat Earphones", "1.5Meter long Dolby Atmos", 4);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (8, "Jeans", "Stretchable Denim Jeans with various sizes and color", 5);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (9, "Project IGI", "compatible with windows 7 and above", 2);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (10, "Hoodie", "Black GUCCI for 13 yrs and above", 5);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (11, "Rich Dad Poor Dad", "Written by RObert Kiyosaki", 1);
INSERT INTO product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID) VALUES (12, "Train Your Brain", "By Shireen Stephen", 1);

INSERT INTO supplier_pricing (PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) VALUES (1, 1, 2, 1500);
INSERT INTO supplier_pricing (PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) VALUES (2, 3, 5, 30000);
INSERT INTO supplier_pricing (PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) VALUES (3, 5, 1, 3000);
INSERT INTO supplier_pricing (PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) VALUES (4, 2, 3, 2500);
INSERT INTO supplier_pricing (PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) VALUES (5, 4, 1, 1000);

INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (101, 1500, '2021-10-06', 2, 1);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (102, 1000, '2021-10-12', 3, 5);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (103, 30000, '2021-09-16', 5, 2);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (104, 1500, '2021-10-05', 1, 1);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (105, 3000, '2021-08-16', 4, 3);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (106, 1450, '2021-08-18', 1, 9);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (107, 789, '2021-09-01', 3, 7);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (108, 780, '2021-09-07', 5, 6);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (109, 3000, '2021-00-10', 5, 3);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (110, 2500, '2021-09-10', 2, 4);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (111, 1000, '2021-09-15', 4, 5);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (112, 789, '2021-09-16', 4, 7);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (113, 31000, '2021-09-16', 1, 8);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (114, 1000, '2021-09-16', 3, 5);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (115, 3000, '2021-09-16', 5, 3);
INSERT INTO order (ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID) VALUES (116, 99, '2021-09-17', 2, 14);

INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (1, 101, 4);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (2, 102, 3);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (3, 103, 1);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (4, 104, 2);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (5, 105, 4);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (6, 106, 3);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (7, 107, 4);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (8, 108, 4);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (9, 109, 3);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (10, 110, 5);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (11, 111, 3);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (12, 112, 4);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (13, 113, 2);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (14, 114, 1);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (15, 115, 1);
INSERT INTO rating (RAT_ID, ORD_ID, RAT_RATSTARS) VALUES (16, 116, 0);

--Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
select CUS_ID,CUS_GENDER,count(CUS_ID) from customer where CUS_ID IN (select CUS_ID from order2 where ORD_AMOUNT >= 3000) group by CUS_GENDER

--Display all the orders along with product name ordered by a customer having Customer_Id=2
SELECT ORD_ID,ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID, PRO_NAME FROM order JOIN product ON (SELECT PRO_ID FROM product WHERE product.PRO_ID IN (SELECT PRO_ID FROM order INNER JOIN supplier_pricing ON order.PRICING_ID = supplier_pricing.PRICING_ID)) GROUP BY order.CUS_ID HAVING order.CUS_ID = 2 ;

--Display the Supplier details who can supply more than one product
SELECT SUPP_ID,SUPP_NAME, SUPP_CITY, SUPP_PHONE FROM supplier WHERE SUPP_ID IN (SELECT SUPP_ID FROM supplier_pricing GROUP BY SUPP_ID HAVING COUNT(SUPP_ID) > 1);

--Find the least expensive product from each category and print the table with category id, name, product name and price of the product
select category.CAT_ID, CAT_NAME, PRO_NAME,SUPP_PRICE FROM product, supplier_pricing, category where category.CAT_ID = product.CAT_ID AND product.PRO_ID = Supplier_pricing.PRO_ID AND SUPP_PRICE = (select min(SUPP_PRICE) from supplier_pricing WHERE product.PRO_ID = supplier_pricing.PRO_ID)

--Display the Id and Name of the Product ordered after “2021-10-05”
SELECT PRO_ID, PRO_Name FROM product WHERE PRO_ID IN (SELECT PRO_ID FROM supplier_pricing WHERE PRICING_ID IN (SELECT PRICING_ID FROM order2 WHERE ORD_DATE > "2021-10-05"))

--Display customer name and gender whose names start or end with character 'A'.
SELECT CUS_NAME, CUS_GENDER FROM customer WHERE CUS_NAME LIKE '%A' OR CUS_NAME LIKE 'A%'

--Create a stored procedure to display supplier id, name, rating and Type_of_Service. 
--For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”






    
    


