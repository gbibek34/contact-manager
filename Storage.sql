CREATE DATABASE storage;

USE storage;

CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(50),
    lname VARCHAR(50),
    contact_group VARCHAR(50),
    phone_no VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(100)
);

CREATE TABLE notes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    note VARCHAR(500)
);

CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    username varchar(50) UNIQUE,
    email varchar(50),
    password varchar(50)
);

CREATE TABLE categories (
    category varchar(50) PRIMARY KEY
);

CREATE TABLE accounts (
	id INT PRIMARY KEY AUTO_INCREMENT,
    account varchar(50),
    category varchar(50),
    username varchar(50),
    password varchar(50),
    foreign key (category) references categories(category) ON DELETE CASCADE
);
    
    
select * from categories;
select * from contacts;
select * from notes;
select * from accounts;
SELECT username, password FROM users;
drop table inventory;
drop table users;
drop table accounts;
truncate table contacts;
truncate table notes;

