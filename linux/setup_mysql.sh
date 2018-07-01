#https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-16-04

sudo apt-get update
sudo apt-get install mysql-server
mysql_secure_installation
systemctl status mysql.service #check the status of mysql
sudo systemctl start mysql #start up mysql service
mysqladmin -p -u root version #check more information on mysql

#login 
mysql -p -u root

#https://www.lanexa.net/2011/08/create-a-mysql-database-username-password-and-permissions-from-the-command-line/
#create new user and grant privillege
create user paofu_db;
create database test_db;
show databases;
show tables; #show tables
show columns from <table>; #show columns
grant all on test_db.* to 'paofu_db'@'localhost' identified by '<root_password>';


CREATE TABLE persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);

CREATE TABLE paopao_passwd(
    id  int,
    name varchar(255),
    passwd varchar(255),
    note  varchar(255)
);

INSERT INTO paopao_passwd (id, name, passwd, note) VALUES(
 1, 'demo','paopao','')
 
INSERT INTO persons VALUES(
   1, 'Zhu', 'Kevin', 'Woodland', 'SG'); #db/table/column key is case sensitive
INSERT INTO persons(person_id, last_name, first_name, address, city) 
   VALUES(3, 'Zhang', 'Gao', 'Linyi', 'SD'); #safer when table structure changed
   
SELECT * FROM persons WHERE city <> 'SG' AND person_id BETWEEN 1 AND 1 ORDER BY last_name DESC ;
SELECT DISTINCT last_name FROM persons LIMIT 1 OFFSET 1; #limit range from line 1 to 1 more row
