select Memberships.Membername,Subscriptions.Subscriptiontype
from Memberships join Subscriptions on Memberships.SubscriptionID=Subscriptions.SubscriptionID

select Trainers.Trainername,Trainers.Speciality from Trainers
where Trainers.Trainername='Boris'
select Memberships.Membername,Lessons.Lessonname
from Memberships join Lessons on Memberships.LessonID=Lessons.LessonID
where Memberships.Membername='Suzi'
select Trainers.Trainername,count(Lessons.LessonID) as lesson_no 
from Trainers join Lessons on Trainers.TrainerID=Lessons.TrainerID
group by Trainers.Trainername
order by lesson_no
select Trainers.Trainername ,max(subquery.lessonno) as max_lesson_no
from ( select Lessons.TrainerID,count(Lessons.TrainerID) as lessonno
from Lessons
group by Lessons.TrainerID)as subquery
join Trainers on subquery.TrainerID=Trainers.TrainerID
group by Trainers.Trainername
order by max_lesson_no