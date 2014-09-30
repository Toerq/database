a) Find the professors earning less than 1 000 per day. (Assumptions: one
year is made of 365 days, and the Income attribute stores monthly
incomes)

SELECT *
FROM Professor
WHERE (Income / 30 < 1000);

b) List the courses whose name starts with “B” in alphabetical order.

SELECT *
FROM Course
WHERE Name LIKE 'B*'
ORDER BY Name;


c) Indicate the name and surname of the professor teaching each course.
Write this query in two ways: with and without an explicit join
operator.

SELECT c.ID, c.Name, p.Name, p.Surname 
FROM Course c, Professor p 
WHERE c.Professor = p.pid

SELECT Professor.Name, Surname, Course.Name 
FROM Professor 
JOIN Course on Professor = pid;

d) Modify the previous query (the one expressed using the join operator)
to return also the professors not teaching any course.

SELECT Professor.Name, Surname, Course.ID
FROM Professor
LEFT OUTER JOIN Course ON Professor = pid;


e) List name and surname of the professors without a supervisor.

SELECT Name, Surname, Supervisor 
FROM Professor 
WHERE Supervisor is NULL;

f) Count the number of professors for each position.

SELECT count(pid), Position 
FROM Professor
GROUP BY Position;
	 
g) For each student, return surname and maximum grade (students with no
grades do not need to be returned).



h) Like the previous query, but only returning students who passed at least
two exams.



i) Extract the surname of all people in the database, using a single query
and without removing duplicates.

SELECT Surname 
FROM Student 
UNION 
SELECT Surname 
FROM Professor;

j) Select the names of the students who have not passed any exam of
courses taught by Prof. Carlo Bianchi. For this task you are requested
to use a nested SQL query.


Select Name from Student where SID not in
(select Student from Course, Exam where Exam.Course = Course.ID and
Course.Professor = (select pid from Professor where Professor.Name = "Carlo" AND
Professor.Surname = "Bianchi"));


k) Create a table to store, for each student, the number of exams s/he has
passed. Then, fill in this table with the correct information (using a
single SQL insert statement) and query it to show its content.


l) Create a view with the number of exams passed by each student, that is,
the same information requested at task l). Then query the view to show
its content.


m) Describe the main differences between the table and the view in the
two previous tasks.

Tables are the actual database entities while views are only actual "views" of the table.

n) List the names of the courses passed by at least one student in 2012.
(Notice that the Exam table specifies the whole date, including month
and day, and not only the year. To write this query you may check the
on line documentation of MySQL and look for the required function to
extract the year from a date).


SELECT Distinct Name 
FROM Course 
WHERE ID 
IN 
   (SELECT Course 
   FROM Exam 
   WHERE EXTRACT(YEAR FROM Data) = 2012);

