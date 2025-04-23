CREATE TABLE friends (id INTEGER, name TEXT, birthday DATE);

INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Zoe Helms', '1996-04-10');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Saxon Wheatley', '1994-01-11');

UPDATE friends 
SET name = 'Storm Munroe'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'zoesfake@email.com'
WHERE id = 2;

UPDATE friends
SET email = 'saxonsfake@email.com'
WHERE id = 3;

DELETE FROM friends
WHERE id = 1;

SELECT *
FROM friends;