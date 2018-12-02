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

CREATE TABLE jobs(
    id int(10) NOT NULL auto_increment,
    job_title VARCHAR(250) NOT NULL,
    job_description LONGTEXT,
    category VARCHAR(50),
    company_name VARCHAR(80),
    company_location VARCHAR(250),
    date_posted DATE,
    PRIMARY KEY(id)
);

CREATE TABLE jobsAppliedFor(
    id int(10) NOT NULL auto_increment,
    job_id int(10),
    user_id int(10),
    date_applied date,
    PRIMARY KEY(id),
    FOREIGN KEY(job_id) REFERENCES jobs(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);
INSERT INTO users(firstname,lastname,password,telephone,email,date_joined) VALUES("Jevoy","Charvis","password123","18765899300","admin@hireme.com","2018-4-2");