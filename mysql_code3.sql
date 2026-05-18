START TRANSACTION;

UPDATE class
SET name = 'abhijit'
WHERE id = 5;

SAVEPOINT A;

INSERT INTO class
VALUES (6, 'chris');

SAVEPOINT C;

SELECT * FROM class;

COMMIT;