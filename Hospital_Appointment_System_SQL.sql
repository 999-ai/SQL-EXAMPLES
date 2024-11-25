select Doctors.Doctorname,Doctors.Speciality from Doctors;
select Appointments.Appointmentdate,Doctors.Doctorname,Patients.Patientname
from Appointments inner join Doctors on Appointments.DoctorID=Doctors.DoctorID
inner join Patients on Appointments.PatientID=Patients.PatientID
where Doctors.Doctorname='John Smith'
select Doctors.Doctorname,Appointments.Appointmentdate
from Doctors inner join Appointments on Doctors.DoctorID=Appointments.DoctorID
inner join Patients  on Doctors.DoctorID=Patients.PatientID
where Appointments.Appointmentdate='2024-05-01'
select Doctors.Doctorname ,count(Appointments.AppointmentID) as Appointment_number
from Doctors inner join Appointments on Doctors.DoctorID=Appointments.DoctorID
group by Doctors.Doctorname
order by Appointment_number desc
select Patients.Patientname,count(Appointments.AppointmentID) as Appointment_number
from Patients inner join Appointments on Patients.PatientID =Appointments.PatientID
group by Patients.Patientname,Patients.Patientsurname
order by Appointment_number asc
