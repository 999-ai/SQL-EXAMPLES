select * from Students
select Lessons.Lessonname ,Notes.Note 
from Lessons inner join Notes on Lessons.LessonID=Notes.LessonID 
where Lessons.Lessonname='Physics'
select Students.Studentname,Students.Studentsurname,Lessons.Lessonname,Notes.Note 
from Notes inner join Students on Notes.StudentID=Students.StudentID
inner join Lessons on Notes.LessonID=Lessons.LessonID
where Students.Studentname='Simon'
select Students.Studentname,Students.Studentsurname 
from Students inner join Notes on Students.StudentID=Notes.StudentID
where Notes.Note>50
select Students.Studentname,Students.Studentsurname,AVG(Notes.Note) as average_note 
from Students inner join Notes on Students.StudentID=Notes.StudentID
group by Students.Studentname,Students.Studentsurname
order by average_note desc
select Students.Studentname,Students.Studentsurname
from Students inner join Notes on Students.StudentID=Notes.StudentID
where Notes.Note=(select MAX(Notes.Note) from Notes)
