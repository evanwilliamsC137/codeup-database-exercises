-- Join lecture

USE employees;


SELECT employees.last_name, salaries.salary
FROM employees JOIN salaries
ON employees.emp_no = salaries.emp_no
LIMIT 50;

SELECT * FROM employees LIMIT 10;

CREATE DATABASE join_test_db;

USE join_test_db;


CREATE TABLE roles (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE users (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   role_id INT UNSIGNED DEFAULT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

SELECT * FROM users;
SELECT * FROM roles;




# Left Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users LEFT JOIN roles
    ON roles.id = users.role_id;





USE codeup_test_db;

CREATE TABLE persons (
     person_id INT NOT NULL AUTO_INCREMENT,
     first_name VARCHAR(25) NOT NULL,
     album_id INT NOT NULL,
     PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT p.first_name, a.name FROM persons p JOIN albums a ON p.album_id = a.id;



SELECT p.first_name, a.name FROM albums a LEFT JOIN persons p on a.id = p.album_id;


SELECT p.first_name, a.name FROM persons p RIGHT JOIN albums a on a.id = p.album_id;




