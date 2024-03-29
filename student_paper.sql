-- CREATE TABLE Students(
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   first_name VARCHAR(100)
-- );

-- CREATE TABLE Papers(
--   title VARCHAR(140) PRIMARY KEY,
--   grade INT,
--   student_id INT,
--   FOREIGN KEY(student_id) REFERENCES Students(id) ON DELETE CASCADE
-- );

-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- SELECT first_name, title, grade
-- FROM Students
-- INNER JOIN Papers ON Students.id = Papers.student_id
-- ORDER BY grade DESC;

-- SELECT first_name, title, grade
-- FROM Students 
-- LEFT JOIN Papers ON Students.id = Papers.student_id;

-- SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
-- FROM Students 
-- LEFT JOIN Papers ON Students.id = Papers.student_id;

-- SELECT first_name, IFNULL(AVG(grade), 0) AS 'average'
-- FROM Students 
-- LEFT JOIN Papers ON Students.id = Papers.student_id
-- GROUP BY Students.id
-- ORDER BY average DESC;

SELECT first_name, IFNULL(AVG(grade), 0) AS 'average',
  CASE  WHEN AVG(grade) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
  END AS 'passing_status'
FROM Students 
LEFT JOIN Papers ON Students.id = Papers.student_id
GROUP BY Students.id
ORDER BY average DESC;