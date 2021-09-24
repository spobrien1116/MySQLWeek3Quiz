drop database if exists w3quizdatabase;
create database if not exists w3quizdatabase;

use w3quizdatabase;

CREATE TABLE customers (
	id int(11) not null auto_increment,
    first_name varchar(25) not null,
    last_name varchar(25) not null,
    primary key (id)
);

CREATE TABLE cars (
	id int(11) not null auto_increment,
    model varchar(20) not null,
    make varchar(20) not null,
    car_year year not null,
    price double(13, 2) not null,
    primary key (id)
);

CREATE TABLE customer_cars (
	id int(11) not null auto_increment,
    customer_id int(11) not null,
    car_id int(11) not null,
    primary key (id),
    foreign key (customer_id) references customers(id),
    foreign key (car_id) references cars(id)
);