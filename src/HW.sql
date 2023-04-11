postgres=# CREATE DATABASE skypro;

postgres=# \c skypro

skypro=# CREATE TABLE employee (
skypro(# id BIGSERIAL NOT NULL PRIMARY KEY,
skypro(# first_name VARCHAR(50) NOT NULL,
skypro(# last_name VARCHAR(50) NOT NULL,
skypro(# gender VARCHAR(6) NOT NULL,
skypro(# age INT NOT NULL
skypro(# );

skypro=# \c skypro

skypro=# INSERT INTO employee (
skypro(# first_name, last_name, gender, age)
skypro-# VALUES ('Ivan', 'Petrov', 'Male', 25);

skypro=# INSERT INTO employee (
skypro(# first_name, last_name, gender, age)
skypro-# VALUES ('Sergey', 'Ivanov', 'Male', 48);

skypro=# INSERT INTO employee (
skypro(# first_name, last_name, gender, age)
skypro-# VALUES ('Maria', 'Fedorova', 'Female', 30);

skypro=# SELECT * FROM employee;

skypro=# UPDATE employee SET first_name = 'John' WHERE id = 1;
skypro=# UPDATE employee SET last_name = 'Smith' WHERE id = 1;
skypro=# UPDATE employee SET gender = 'Unisex' WHERE id = 1;
skypro=# UPDATE employee SET age = 28 WHERE id = 1;

skypro=# SELECT * FROM employee;

skypro=# DELETE FROM employee WHERE id=3;

skypro=# SELECT * FROM employee;
