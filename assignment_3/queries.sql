c) 
SELECT Professor.Name, Surname
FROM Professor, Course
WHERE Professor = pid;

SELECT Professor.Name, Surname
FROM Professor JOIN Course ON Professor = pid;

d)
SELECT Professor.Name, Surname, Course.ID 
FROM Professor LEFT OUTER JOIN Course ON Professor = pid;

e)
SELECT Professor.Name, Surname FROM Professor WHERE Supervisor IS NULL;

f)
SELECT count(pid), Position FROM Professor GROUP BY Position;

g)
SELECT Student.Name, Student.Surname, max(Exam.Grade) FROM Student, Exam WHERE SID=Exam.Student Group by sid;

h)

SELECT Student.Name, Student.Surname, max(Exam.Grade) FROM Student, Exam WHERE SID=Exam.Student Group by sid
HAVING count(Grade)>1;

i)

j)

k)
SELECT sid, count(Grade) FROM Student, Exam WHERE sid = Exam.student Group by sid;

l)
CREATE VIEW Passedexam as SELECT sid, count(Grade) FROM Student, Exam WHERE sid = Exam.student Group by sid;
