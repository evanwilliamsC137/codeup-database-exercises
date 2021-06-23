USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     artist VARCHAR(100) DEFAULT 'Unknown',
    `name` VARCHAR(100) DEFAULT 'Unknown',
    release_date INT NOT NULL,
    genre VARCHAR(100) DEFAULT 'Unknown',
    sales FLOAT NOT NULL,
    PRIMARY KEY (id)
    );

