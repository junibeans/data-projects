-- Create a table with columns id, name, and birthday.
CREATE TABLE friends (id INTEGER, name TEXT, birthday DATE);
-- Add Ororo Munroe to friends.
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');
-- Add my friends to the database.
INSERT INTO friends (id, name, birthday)
VALUES (2, 'Zoe Helms', '1996-04-10');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Saxon Wheatley', '1994-01-11');
-- Ororo Munroe changed their name to Storm.
UPDATE friends 
SET name = 'Storm Munroe'
WHERE id = 1;
-- Add a new column named email.
ALTER TABLE friends
ADD COLUMN email TEXT;
-- Update the email address for everyone in the table.
UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'zoesfake@email.com'
WHERE id = 2;

UPDATE friends
SET email = 'saxonsfake@email.com'
WHERE id = 3;
-- Verify that the data exists before deleting it.
SELECT *
FROM friends
WHERE id = 1;
-- Storm is fictional, so I deleted them.
DELETE FROM friends
WHERE id = 1;
-- Verify that my data looks correct.
SELECT *
FROM friends;
