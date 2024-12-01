select Doctors.Doctorname,Appointments.Appointmentdate 
from Doctors join Appointments on Doctors.DoctorID=Appointments.DoctorID
where Doctors.Doctorname='Rain'
select Appointments.Appointmentdate from Appointments
select Doctors.Doctorname,Appointments.Appointmentdate
from Doctors join Appointments on Doctors.DoctorID=Appointments.DoctorID
group by Doctors.Doctorname,Appointments.Appointmentdate
order by Appointments.Appointmentdate desc
select Patients.Patienname,Appointments.Appointmentdate
from Patients join Appointments on Patients.PatientID=Appointments.PatientID
where Appointments.Appointmentdate between '2022-11-21'and '2023-01-04' 

select Doctors.Doctorname ,max(subquery.appointment_no) as max_appointment_no
from ( select Appointments.DoctorID,count(Appointments.AppointmentID) as appointment_no
from Appointments
group by Appointments.DoctorID)as subquery
join Doctors on subquery.DoctorID=Doctors.DoctorID
group by Doctors.Doctorname
order by max_appointment_no