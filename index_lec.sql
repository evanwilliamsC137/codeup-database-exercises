USE employees;

SHOW INDEXES FROM employees;


SHOW INDEXES FROM departments;

SELECT salary FROM salaries
WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salary_index (salary);

CREATE TABLE quotes2 (
    id INT NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE quotes2 ADD UNIQUE (content);

INSERT INTO quotes2 (content,author)
VALUES ('Intelligence is the ability to adapt to change.','Stephen Hawking');

DROP INDEX salary_index ON salaries;

DESCRIBE quotes2;

DESCRIBE employees;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE salaries;
DESCRIBE titles;


USE codeup_test_db;

ALTER TABLE albums ADD UNIQUE unique_artist_name (artist,name);






DESCRIBE albums;

SHOW TABLES;