Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 92
Server version: 8.0.28 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database addressbookservice;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbook        |
| addressbookservice |
| employee_payroll   |
| information_schema |
| library            |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
10 rows in set (0.00 sec)

mysql> use addressbookservice;
Database changed
mysql> describe addressbookservice;
ERROR 1146 (42S02): Table 'addressbookservice.addressbookservice' doesn't exist
mysql>  CREATE TABLE  addressBook(firstName varchar(50) NOT NULL, lastName varchar(50) NOT NULL, mobileNumber varchar(20) NOT NULL,email varchar(50) NOT NULL, city varchar(50) NOT NULL, state varchar(50) NOT NULL,
    ->     ->  zip long NOT NULL, PRIMARY KEY(firstName)
    ->  CREATE TABLE  addressBook(firstName varchar(50) NOT NULL, lastName varchar(50) NOT NULL, mobileNumber varchar(20) NOT NULL,email varchar(50) NOT NULL, city varchar(50) NOT NULL, state varchar(50) NOT NULL,
    ->
    ->  CREATE TABLE  addressBook(firstName varchar(50) NOT NULL, lastName varchar(50) NOT NULL, mobileNumber varchar(20) NOT NULL,email varchar(50) NOT NULL, city varchar(50) NOT NULL, state varchar(50) NOT NULL, zip long NOT NULL, PRIMARY KEY(firstname);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '->  zip long NOT NULL, PRIMARY KEY(firstName)
 CREATE TABLE  addressBook(firstNa' at line 2
mysql>  CREATE TABLE  addressBook(firstName varchar(50) NOT NULL, lastName varchar(50) NOT NULL, mobileNumber varchar(20) NOT NULL,email varchar(50) NOT NULL, city varchar(50) NOT NULL, state varchar(50) NOT NULL,
    ->  zip long NOT NULL, PRIMARY KEY(firstName));
Query OK, 0 rows affected (0.06 sec)

mysql> describe addressbook;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| firstName    | varchar(50) | NO   | PRI | NULL    |       |
| lastName     | varchar(50) | NO   |     | NULL    |       |
| mobileNumber | varchar(20) | NO   |     | NULL    |       |
| email        | varchar(50) | NO   |     | NULL    |       |
| city         | varchar(50) | NO   |     | NULL    |       |
| state        | varchar(50) | NO   |     | NULL    |       |
| zip          | mediumtext  | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> INSERT INTO addressBook(firstName,lastName,mobileNumber,email,city,state,zip) VALUES('Piyush','Verma','9910936991','piyush@gmail','Faridabad','haryana',121001),('Pankaj','verma','9876566569','abc@gmail','Faridabad','Haryana',121001),('Ramit','Chauhan','9987676554','xyz@gmail','Noida','UP',121998);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from addressbook;
+-----------+----------+--------------+--------------+-----------+---------+--------+
| firstName | lastName | mobileNumber | email        | city      | state   | zip    |
+-----------+----------+--------------+--------------+-----------+---------+--------+
| Pankaj    | verma    | 9876566569   | abc@gmail    | Faridabad | Haryana | 121001 |
| Piyush    | Verma    | 9910936991   | piyush@gmail | Faridabad | haryana | 121001 |
| Ramit     | Chauhan  | 9987676554   | xyz@gmail    | Noida     | UP      | 121998 |
+-----------+----------+--------------+--------------+-----------+---------+--------+
3 rows in set (0.00 sec)

mysql> UPDATE addressBook set MobileNumber="9910936991" where FirstName = 'Pankaj';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE addressBook set MobileNumber="121008" where FirstName = 'Pankaj';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE addressBook set state="UP" where FirstName = 'Pankaj';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from addressBook;
+-----------+----------+--------------+--------------+-----------+---------+--------+
| firstName | lastName | mobileNumber | email        | city      | state   | zip    |
+-----------+----------+--------------+--------------+-----------+---------+--------+
| Pankaj    | verma    | 121008       | abc@gmail    | Faridabad | UP      | 121001 |
| Piyush    | Verma    | 9910936991   | piyush@gmail | Faridabad | haryana | 121001 |
| Ramit     | Chauhan  | 9987676554   | xyz@gmail    | Noida     | UP      | 121998 |
+-----------+----------+--------------+--------------+-----------+---------+--------+
3 rows in set (0.00 sec)

mysql> UPDATE addressBook set MobileNumber="9871900840" where FirstName = 'Pankaj';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from addressBook;
+-----------+----------+--------------+--------------+-----------+---------+--------+
| firstName | lastName | mobileNumber | email        | city      | state   | zip    |
+-----------+----------+--------------+--------------+-----------+---------+--------+
| Pankaj    | verma    | 9871900840   | abc@gmail    | Faridabad | UP      | 121001 |
| Piyush    | Verma    | 9910936991   | piyush@gmail | Faridabad | haryana | 121001 |
| Ramit     | Chauhan  | 9987676554   | xyz@gmail    | Noida     | UP      | 121998 |
+-----------+----------+--------------+--------------+-----------+---------+--------+
3 rows in set (0.00 sec)

mysql>  DELETE from addressBook where FirstName='Piyush';
Query OK, 1 row affected (0.01 sec)

mysql> select * from addressBook;
+-----------+----------+--------------+-----------+-----------+-------+--------+
| firstName | lastName | mobileNumber | email     | city      | state | zip    |
+-----------+----------+--------------+-----------+-----------+-------+--------+
| Pankaj    | verma    | 9871900840   | abc@gmail | Faridabad | UP    | 121001 |
| Ramit     | Chauhan  | 9987676554   | xyz@gmail | Noida     | UP    | 121998 |
+-----------+----------+--------------+-----------+-----------+-------+--------+
2 rows in set (0.00 sec)

mysql> INSERT INTO addressBook(firstName,lastName,mobileNumber,email,city,state,zip) VALUES('Piyush','Verma','9910936991','piyush@gmail','Faridabad','haryana',121001);
Query OK, 1 row affected (0.01 sec)

mysql> select * from addressBook;
+-----------+----------+--------------+--------------+-----------+---------+--------+
| firstName | lastName | mobileNumber | email        | city      | state   | zip    |
+-----------+----------+--------------+--------------+-----------+---------+--------+
| Pankaj    | verma    | 9871900840   | abc@gmail    | Faridabad | UP      | 121001 |
| Piyush    | Verma    | 9910936991   | piyush@gmail | Faridabad | haryana | 121001 |
| Ramit     | Chauhan  | 9987676554   | xyz@gmail    | Noida     | UP      | 121998 |
+-----------+----------+--------------+--------------+-----------+---------+--------+
3 rows in set (0.00 sec)

mysql> SELECT * from addressBook where city = 'Faridabad';
+-----------+----------+--------------+--------------+-----------+---------+--------+
| firstName | lastName | mobileNumber | email        | city      | state   | zip    |
+-----------+----------+--------------+--------------+-----------+---------+--------+
| Pankaj    | verma    | 9871900840   | abc@gmail    | Faridabad | UP      | 121001 |
| Piyush    | Verma    | 9910936991   | piyush@gmail | Faridabad | haryana | 121001 |
+-----------+----------+--------------+--------------+-----------+---------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * from addressBook where city = 'Noida';
+-----------+----------+--------------+-----------+-------+-------+--------+
| firstName | lastName | mobileNumber | email     | city  | state | zip    |
+-----------+----------+--------------+-----------+-------+-------+--------+
| Ramit     | Chauhan  | 9987676554   | xyz@gmail | Noida | UP    | 121998 |
+-----------+----------+--------------+-----------+-------+-------+--------+
1 row in set (0.00 sec)

mysql> SELECT city,COUNT(city) as count from addressBook group by city;
+-----------+-------+
| city      | count |
+-----------+-------+
| Faridabad |     2 |
| Noida     |     1 |
+-----------+-------+
2 rows in set (0.00 sec)

mysql> SELECT state,COUNT(state) as count from addressBook group by state;
+---------+-------+
| state   | count |
+---------+-------+
| UP      |     2 |
| haryana |     1 |
+---------+-------+
2 rows in set (0.00 sec)

mysql> SELECT firstName,lastName from addressBook ORDER BY city;
+-----------+----------+
| firstName | lastName |
+-----------+----------+
| Pankaj    | verma    |
| Piyush    | Verma    |
| Ramit     | Chauhan  |
+-----------+----------+
3 rows in set (0.00 sec)

mysql> alter table addressBook add type varchar(15) after lastName ;
Query OK, 0 rows affected (0.22 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc addressBook;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| firstName    | varchar(50) | NO   | PRI | NULL    |       |
| lastName     | varchar(50) | NO   |     | NULL    |       |
| type         | varchar(15) | YES  |     | NULL    |       |
| mobileNumber | varchar(20) | NO   |     | NULL    |       |
| email        | varchar(50) | NO   |     | NULL    |       |
| city         | varchar(50) | NO   |     | NULL    |       |
| state        | varchar(50) | NO   |     | NULL    |       |
| zip          | mediumtext  | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

mysql> update addressBook set type = 'Family' where firstName ='Piyush';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from addressBook;
+-----------+----------+--------+--------------+--------------+-----------+---------+--------+
| firstName | lastName | type   | mobileNumber | email        | city      | state   | zip    |
+-----------+----------+--------+--------------+--------------+-----------+---------+--------+
| Pankaj    | verma    | NULL   | 9871900840   | abc@gmail    | Faridabad | UP      | 121001 |
| Piyush    | Verma    | Family | 9910936991   | piyush@gmail | Faridabad | haryana | 121001 |
| Ramit     | Chauhan  | NULL   | 9987676554   | xyz@gmail    | Noida     | UP      | 121998 |
+-----------+----------+--------+--------------+--------------+-----------+---------+--------+
3 rows in set (0.00 sec)

mysql>