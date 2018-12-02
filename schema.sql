DROP DATABASE IF EXISTS newjob ;
CREATE DATABASE newjob;
USE newjob;


CREATE TABLE users(
    id int(10) NOT NULL auto_increment,
    firstname VARCHAR(80) NOT NULL default '',
    lastname VARCHAR(80) NOT NULL default '',
    password char(200) NOT NULL,
    telephone VARCHAR(15) NOT NULL,
    email VARCHAR(80) UNIQUE NOT NULL,
    date_joined DATE,
    PRIMARY KEY(id)
);


