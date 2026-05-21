USE vitcampus;

-- CATEGORY TABLE
SELECT * FROM category;

INSERT INTO category VALUES (101, 'electronics');

-- PRODUCTS TABLE
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    pid INT PRIMARY KEY,
    pname VARCHAR(255) NOT NULL,
    cid INT,
    
    FOREIGN KEY (cid)
    REFERENCES category(cid)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

DESC products;

SELECT * FROM products;

INSERT INTO products VALUES (1, 'wires', 101);

-- testing delete cascade
DELETE FROM category WHERE cid = 101;



-- WORKER TABLE
SELECT * FROM worker;

SELECT first_name, department, salary
FROM worker
WHERE department = 'admin'
ORDER BY salary DESC;



-- GROUP BY CLAUSE
SELECT SUM(salary)
FROM worker
WHERE department = 'HR';

SELECT department, SUM(salary)
FROM worker
GROUP BY department;



-- ORDER BY CLAUSE
SELECT department, COUNT(department)
FROM worker
GROUP BY department
ORDER BY department ASC;



-- HAVING CLAUSE

-- print only departments having more than 3 employees
SELECT department, COUNT(department)
FROM worker
GROUP BY department
HAVING COUNT(department) >= 3;

-- departments whose accumulated salary is less than 3 lakhs
SELECT department, SUM(salary)
FROM worker
GROUP BY department
HAVING SUM(salary) < 300000;



-- LIMIT OFFSET
SELECT *
FROM worker
LIMIT 4 OFFSET 3;



-- SUBQUERIES
CREATE TABLE toppers (
    id INT PRIMARY KEY
);

INSERT INTO toppers VALUES (1), (3), (7);

SELECT * FROM toppers;

SELECT *
FROM worker
WHERE worker_id IN (
    SELECT id FROM toppers
);



-- Q1) print first two least accumulated salaries by department
SELECT department, SUM(salary)
FROM worker
GROUP BY department
ORDER BY SUM(salary) ASC
LIMIT 2;



-- Q2) in admin department who is having 2nd largest salary
SELECT *
FROM worker
WHERE department = 'admin'
ORDER BY salary DESC
LIMIT 1 OFFSET 1;



-- Q3) in each department, find who is getting 2nd largest salary
SELECT *
FROM worker w1
WHERE salary = (
    SELECT DISTINCT salary
    FROM worker w2
    WHERE w1.department = w2.department
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
);