DROP DATABASE IF EXISTS quiz;
CREATE DATABASE quiz;
USE quiz;
CREATE TABLE IF NOT EXISTS franquicia(ccntype VARCHAR(16),ccn VARCHAR(19),validthru DATE, key1 INT,pin INT,quota INT);
CREATE TABLE IF NOT EXISTS banco(bank VARCHAR(29),ccn VARCHAR(19),ssn VARCHAR(11)); 
CREATE TABLE IF NOT EXISTS persona(ssn VARCHAR(15),phone VARCHAR(16),city VARCHAR(40),maritalstatus VARCHAR(10),fullname VARCHAR(40),birthdate DATE);
LOAD DATA LOCAL INFILE 'C:/Users/DIANA/Desktop/pruebasql/banco.csv' INTO TABLE banco FIELDS TERMINATED BY ',' LINES TERMINATED by '\r\n'  IGNORE 1 LINES (bank,ccn,ssn);
LOAD DATA LOCAL INFILE 'C:/Users/DIANA/Desktop/pruebasql/franquicia.csv' INTO TABLE franquicia 	FIELDS TERMINATED BY ','  LINES TERMINATED by '\r\n' IGNORE 1 LINES (ccntype,ccn,validthru,key1,pin,quota);
LOAD DATA LOCAL INFILE 'C:/Users/DIANA/Desktop/pruebasql/persona.csv' INTO TABLE persona FIELDS TERMINATED BY ',' LINES TERMINATED by '\r\n' IGNORE 1 LINES (ssn,phone,city,maritalstatus,fullname,birthdate);





