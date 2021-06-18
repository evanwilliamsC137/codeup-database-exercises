
USE codeup_test_db;

-- Albums released after 1991
SELECT name as 'Albums after 1991' FROM albums WHERE release_date >= 1991;
DELETE FROM albums WHERE release_date >= 1991;
SELECT name as 'Albums after 1991' FROM albums WHERE release_date >= 1991;
-- Albums with the genre 'disco'
SELECT genre as 'Disco genre' FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT artist as 'Beatles' FROM albums WHERE artist = 'The Beatles';
DELETE FROM albums WHERE artist = 'The Beatles';

SELECT * FROM albums;