
mysql>create database onlinerentalsystem;

mysql> use onlinerentalsystem;
Database changed

====================================================================================================

ADMIN TABLE
------------

mysql> create table admin(admin_id integer,password VARCHAR(50),
first_name VARCHAR(50),last_name VARCHAR(50), email VARCHAR(50),contact_number VARCHAR(50) );

mysql> desc admin;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| admin_id       | int         | YES  |     | NULL    |       |
| password       | varchar(50) | YES  |     | NULL    |       |
| first_name     | varchar(50) | YES  |     | NULL    |       |
| last_name      | varchar(50) | YES  |     | NULL    |       |
| email          | varchar(50) | YES  |     | NULL    |       |
| contact_number | varchar(50) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+


mysql> insert into admin values('1','sayali123','sayali','dhote','sayali@gmail.com','9824456784');
Query OK, 1 row affected (0.33 sec)

mysql> insert into admin values('2','vaidehi123','vaidehi','chaudhari','vaidehi@gmail.com','8567345689');
Query OK, 1 row affected (0.24 sec)

mysql> select * from admin;
+----------+------------+------------+-----------+-------------------+----------------+
| admin_id | password   | first_name | last_name | email             | contact_number |
+----------+------------+------------+-----------+-------------------+----------------+
|        1 | sayali123  | sayali     | dhote     | sayali@gmail.com  | 9824456784     |
|        2 | vaidehi123 | vaidehi    | chaudhari | vaidehi@gmail.com | 8567345689     |
+----------+------------+------------+-----------+-------------------+----------------+
2 rows in set (0.00 sec)


====================================================================================================

OWNERS TABLE
------------

mysql> create table owners(owner_id integer,password VARCHAR(50),first_name VARCHAR(50),last_name 
VARCHAR(50), email VARCHAR(50),contact_number VARCHAR(50) );
Query OK, 0 rows affected (0.73 sec)

mysql> desc owners;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| owner_id       | int         | YES  |     | NULL    |       |
| password       | varchar(50) | YES  |     | NULL    |       |
| first_name     | varchar(50) | YES  |     | NULL    |       |
| last_name      | varchar(50) | YES  |     | NULL    |       |
| email          | varchar(50) | YES  |     | NULL    |       |
| contact_number | varchar(50) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into owners(owner_id ,password ,first_name ,last_name, email ,contact_number ) 
values('1','rohan123','rohan','sharma','rohan@gmail.com','8976845983');
Query OK, 1 row affected (0.43 sec)

mysql> insert into owners(owner_id ,password ,first_name ,last_name, email ,contact_number )
 values('2','sonam123','sonam','mishra','sonam@gmail.com','9648947893');
Query OK, 1 row affected (0.12 sec)

mysql> insert into owners(owner_id ,password ,first_name ,last_name, email ,contact_number ) 
values('3','abhijeet123','abhijeet','trivedi','abhijeet@gmail.com','9768450923');
Query OK, 1 row affected (0.18 sec)

mysql> insert into owners(owner_id ,password ,first_name ,last_name, email ,contact_number ) 
values('4','simran123','simran','chaubey','simran@gmail.com','9980033775'),
('5','ayush123','ayush','mehra','ayush@gmail.com','9300567883');
Query OK, 2 rows affected (0.17 sec)
Records: 2  Duplicates: 0  Warnings: 0




mysql> select * from owners;
+----------+-------------+------------+-----------+--------------------+----------------+
| owner_id | password    | first_name | last_name | email              | contact_number |
+----------+-------------+------------+-----------+--------------------+----------------+
|        1 | rohan123    | rohan      | sharma    | rohan@gmail.com    | 8976845983     |
|        2 | sonam123    | sonam      | mishra    | sonam@gmail.com    | 9648947893     |
|        3 | abhijeet123 | abhijeet   | trivedi   | abhijeet@gmail.com | 9768450923     |
|        4 | simran123   | simran     | chaubey   | simran@gmail.com   | 9980033775     |
|        5 | ayush123    | ayush      | mehra     | ayush@gmail.com    | 9300567883     |
+----------+-------------+------------+-----------+--------------------+----------------+
5 rows in set (0.00 sec)

==========================================================================================================

TENANTS TABLE
--------------

mysql> create table tenants(tenant_id integer,password VARCHAR(50),first_name VARCHAR(50),
last_name VARCHAR(50), email VARCHAR(50),contact_number VARCHAR(50) );
Query OK, 0 rows affected (0.78 sec)

mysql> desc tenants;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| tenant_id      | int         | YES  |     | NULL    |       |
| password       | varchar(50) | YES  |     | NULL    |       |
| first_name     | varchar(50) | YES  |     | NULL    |       |
| last_name      | varchar(50) | YES  |     | NULL    |       |
| email          | varchar(50) | YES  |     | NULL    |       |
| contact_number | varchar(50) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into tenants values('1','ramesh123','ramesh','chaubey','ramesh@gmail.com','9756003456');
Query OK, 1 row affected (0.32 sec)

mysql> insert into tenants values('2','sita123','sita','tripathi','sita@gmail.com','8955767634');
Query OK, 1 row affected (0.20 sec)

mysql> insert into tenants(tenant_id ,password ,first_name ,last_name, email ,contact_number ) 
values('3','geeta123','geeta','srinivas','geeta@gmail.com','9704573498');
Query OK, 1 row affected (0.18 sec)

mysql> insert into tenants(tenant_id ,password ,first_name ,last_name, email ,contact_number ) 
values('4','lakshmi123','lakshmi','sharma','lakshmi@gmail.com','8589957340'),
('5','shiv123','shiv','kumar','shiv@gmail.com','9734789500');
Query OK, 2 rows affected (0.19 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from tenants;
+-----------+------------+------------+-----------+-------------------+----------------+
| tenant_id | password   | first_name | last_name | email             | contact_number |
+-----------+------------+------------+-----------+-------------------+----------------+
|         1 | ramesh123  | ramesh     | chaubey   | ramesh@gmail.com  | 9756003456     |
|         2 | sita123    | sita       | tripathi  | sita@gmail.com    | 8955767634     |
|         3 | geeta123   | geeta      | srinivas  | geeta@gmail.com   | 9704573498     |
|         4 | lakshmi123 | lakshmi    | sharma    | lakshmi@gmail.com | 8589957340     |
|         5 | shiv123    | shiv       | kumar     | shiv@gmail.com    | 9734789500     |
+-----------+------------+------------+-----------+-------------------+----------------+
5 rows in set (0.00 sec)

====================================================================================================

PROPERTIES TABLE
-----------------

mysql> create table properties(property_id integer, deposit double,rent double,
buildup_area_in_sqft double,property_type varchar(50),furnishing varchar(50),availiblity
 varchar(50),preferred_tenants varchar(50),parking varchar(50));
Query OK, 0 rows affected (1.06 sec)

mysql> desc properties;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| property_id          | int         | YES  |     | NULL    |       |
| deposit              | double      | YES  |     | NULL    |       |
| rent                 | double      | YES  |     | NULL    |       |
| buildup_area_in_sqft | double      | YES  |     | NULL    |       |
| property_type        | varchar(50) | YES  |     | NULL    |       |
| furnishing           | varchar(50) | YES  |     | NULL    |       |
| availiblity          | varchar(50) | YES  |     | NULL    |       |
| preferred_tenants    | varchar(50) | YES  |     | NULL    |       |
| parking              | varchar(50) | YES  |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> alter table properties add column owner_id integer;
Query OK, 0 rows affected (1.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table properties add column location_id integer;
Query OK, 0 rows affected (2.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc properties;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| property_id          | int         | YES  |     | NULL    |       |
| deposit              | double      | YES  |     | NULL    |       |
| rent                 | double      | YES  |     | NULL    |       |
| buildup_area_in_sqft | double      | YES  |     | NULL    |       |
| property_type        | varchar(50) | YES  |     | NULL    |       |
| furnishing           | varchar(50) | YES  |     | NULL    |       |
| availiblity          | varchar(50) | YES  |     | NULL    |       |
| preferred_tenants    | varchar(50) | YES  |     | NULL    |       |
| parking              | varchar(50) | YES  |     | NULL    |       |
| owner_id             | int         | YES  |     | NULL    |       |
| location_id          | int         | YES  |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
11 rows in set (0.00 sec)


mysql> insert into properties values('1','15000','7000','1000','apartment','furnished','within 15 days','family','available','2','1');
Query OK, 1 row affected (0.72 sec)

mysql> insert into properties values('2','20000','8000','1500','independent house','semi-furnished','after 1 month','family','not available','3','2');
Query OK, 1 row affected (0.31 sec)

mysql> insert into properties values('3','6000','4000','1000','apartment','not furnished','available now','girls','available','5','3');
Query OK, 1 row affected (0.24 sec)

mysql> select * from properties;
+-------------+---------+------+----------------------+-------------------+----------------+----------------+-------------------+---------------+----------+-------------+
| property_id | deposit | rent | buildup_area_in_sqft | property_type     | furnishing     | availiblity    | preferred_tenants | parking       | owner_id | location_id |
+-------------+---------+------+----------------------+-------------------+----------------+----------------+-------------------+---------------+----------+-------------+
|           1 |   15000 | 7000 |                 1000 | apartment         | furnished      | within 15 days | family            | available     |        2 |           1 |
|           2 |   20000 | 8000 |                 1500 | independent house | semi-furnished | after 1 month  | family            | not available |        3 |           2 |
|           3 |    6000 | 4000 |                 1000 | apartment         | not furnished  | available now  | girls             | available     |        5 |           3 |
+-------------+---------+------+----------------------+-------------------+----------------+----------------+-------------------+---------------+----------+-------------+
3 rows in set (0.00 sec)

=======================================================================================================

LOCATIONS TABLE
-----------------

mysql> create table locations(location_id integer,building_name varchar(50),street varchar(50),
landmark varchar(50),locality varchar(50),area varchar(50),pincode integer);
Query OK, 0 rows affected (1.58 sec)

mysql> desc locations;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| location_id   | int         | YES  |     | NULL    |       |
| building_name | varchar(50) | YES  |     | NULL    |       |
| street        | varchar(50) | YES  |     | NULL    |       |
| landmark      | varchar(50) | YES  |     | NULL    |       |
| locality      | varchar(50) | YES  |     | NULL    |       |
| area          | varchar(50) | YES  |     | NULL    |       |
| pincode       | int         | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> insert into locations values('1','shiv heights','lokmanya road','shivaji chowk','rajiv colony','ramnagar','442001');
Query OK, 1 row affected (0.50 sec)

mysql> insert into locations values('2','shreenivas','m.k.road','center bridge','advocate colony','sanskar colony','411789');
Query OK, 1 row affected (0.22 sec)

mysql> insert into locations values('3','sai','new mall road','near ganesh temple','singh layout','baner','419989');
Query OK, 1 row affected (0.17 sec)

mysql> select * from locations;
+-------------+---------------+---------------+--------------------+-----------------+----------------+---------+
| location_id | building_name | street        | landmark           | locality        | area           | pincode |
+-------------+---------------+---------------+--------------------+-----------------+----------------+---------+
|           1 | shiv heights  | lokmanya road | shivaji chowk      | rajiv colony    | ramnagar       |  442001 |
|           2 | shreenivas    | m.k.road      | center bridge      | advocate colony | sanskar colony |  411789 |
|           3 | sai           | new mall road | near ganesh temple | singh layout    | baner          |  419989 |
+-------------+---------------+---------------+--------------------+-----------------+----------------+---------+
3 rows in set (0.00 sec)


====================================================================================================

FEEDBACKS TABLE
-----------------

mysql> create table feedbacks(feedback_id integer,tenant_id integer,property_id integer,high_rent varchar(50),high_deposit varchar(50),is_broker varchar(50),about_property varchar(50));
Query OK, 0 rows affected (0.92 sec)

mysql> desc feedbacks;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| feedback_id    | int         | YES  |     | NULL    |       |
| tenant_id      | int         | YES  |     | NULL    |       |
| property_id    | int         | YES  |     | NULL    |       |
| high_rent      | varchar(50) | YES  |     | NULL    |       |
| high_deposit   | varchar(50) | YES  |     | NULL    |       |
| is_broker      | varchar(50) | YES  |     | NULL    |       |
| about_property | varchar(50) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)


mysql> insert into feedbacks values('1','3','1','no','no','no','nice property');
Query OK, 1 row affected (0.19 sec)

====================================================================================================

SHOERTLISTEDPROPERTIES TABLE
-----------------------------

mysql> create table Shortlisted_properties(shortlisted_properties_id integer,tenant_id varchar(50),property_id varchar(50));
Query OK, 0 rows affected (1.26 sec)

mysql> insert into shortlisted_properties values('1','2','1');
Query OK, 1 row affected (0.19 sec)

mysql> insert into shortlisted_properties values('2','5','3');
Query OK, 1 row affected (0.10 sec)

mysql> desc shortlisted_properties;
+---------------------------+-------------+------+-----+---------+-------+
| Field                     | Type        | Null | Key | Default | Extra |
+---------------------------+-------------+------+-----+---------+-------+
| shortlisted_properties_id | int         | YES  |     | NULL    |       |
| tenant_id                 | varchar(50) | YES  |     | NULL    |       |
| property_id               | varchar(50) | YES  |     | NULL    |       |
+---------------------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from shortlisted_properties;
+---------------------------+-----------+-------------+
| shortlisted_properties_id | tenant_id | property_id |
+---------------------------+-----------+-------------+
|                         1 | 2         | 1           |
|                         2 | 5         | 3           |
+---------------------------+-----------+-------------+
2 rows in set (0.00 sec)




according to pojos
--------------------------

insert into properties values('1','within 15 days','1000','15000','furnished','available','family','apartment','7000','1','1');


---------------------------------------------------------------------------------------------------
insert into owners values('1','8973456783','rohan@gmail.com','rohan','sharma','rohan123');

insert into owners values('2','9648947893','sonam@gmail.com','sonam','mishra','sonam123');

 insert into owners values('3','9768450923','abhijeet@gmail.com','abhijeet','trivedi','abhijeet123');


 insert into owners values('4','9980033775','simran@gmail.com','simran','chaubey','simran123'),
('5','9300567883','ayush@gmail.com','ayush','mehra','ayush123');

--------------------------------------------------------------------------------------------------------
insert into locations values('1','shiv heights','lokmanya road','shivaji chowk','rajiv colony','442001','ramnagar','1');

--------------------------------------------------------------------------------------------------------------

 insert into tenants values('1','9756003456','ramesh@gmail.com','ramesh','chaubey','ramesh123');

 insert into tenants values('2','8955767634','sita@gmail.com','sita','tripathi','sita123');


 insert into tenants values('3','9704573498','geeta@gmail.com','geeta','srinivas','geeta123');

--------------------------------------------------------------------------------------------------