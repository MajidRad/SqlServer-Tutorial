-- Drop data base Sample if exist
DROP DATABASE IF EXISTS SAMPLE;

-- create database sample
CREATE DATABASE Sample;

--If a user the uses your database at the same time ,
--because both of them are using the same database 
--delete command not work and you will encounter the following error
--ErrorMessage Cannot drop database "Sample" because it is currently in use.

-- this command lock the databse for single user and if some transaction is running
-- will rollback all incomplete transactions close the connection to the database 
ALTER DATABASE SAMPLE SET SINGLE_USER WITH ROLLBACK IMMEDIATE
