#https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-16-04

sudo apt-get update
sudo apt-get install mysql-server
mysql_secure_installation
systemctl status mysql.service #check the status of mysql
sudo systemctl start mysql #start up mysql service
mysqladmin -p -u root version #check more information on mysql

#https://www.lanexa.net/2011/08/create-a-mysql-database-username-password-and-permissions-from-the-command-line/
#create new user and grant privillege
create user paofu_db;
create database test_db;
show databases;
grant all on test_db.* to 'paofu_db'@'localhost' identified by '<root_password>';


CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) 
);
