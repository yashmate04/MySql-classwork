-- singel line comment

/* 
Multi
Line 
Comments
*/
------ create database skp
create database skp;

----------- use databse --------
 use skp;

 -- create a table database first
CREATE TABLE Patients (
  patient_id     INT AUTO_INCREMENT PRIMARY KEY,
  first_name     VARCHAR(50),
  last_name      VARCHAR(50),
  date_of_birth  DATE,
  gender         CHAR(1)  --
);
-- insert 10 records into patients
INSERT INTO Patients (first_name, last_name, date_of_birth, gender) VALUES
('Amit',   'Shah',        '1985-01-15', 'M'),
('Priya',  'Desai',       '1992-03-11', 'F'),
('Rahul',  'Patel',       '1978-09-05', 'M'),
('Sneha',  'Kulkarni',    '2000-07-20', 'F'),
('Vikas',  'Reddy',       '1989-12-30', 'M'),
('Anjali', 'Mehta',       '1995-05-02', 'F'),
('Arjun',  'Kapoor',      '1982-11-17', 'M'),
('Tina',   'Varma',       '1998-04-29', 'F'),
('Rohan',  'Iyer',        '2003-02-14', 'M'),
('Neha',   'Singh',       '1990-08-25', 'F');

-- display table patients
select * from patients;

-- to delete values from table 
truncate table patients;

-- to delete table
drop table patients;

CREATE TABLE Doctors (
  doctor_id       INT AUTO_INCREMENT PRIMARY KEY,
  first_name      VARCHAR(50),
  last_name       VARCHAR(50),
  specialty       VARCHAR(50),
  hire_date       DATE

);

INSERT INTO Doctors (first_name, last_name, specialty, hire_date) VALUES
('Sunil',   'Joshi',    'Cardiology',     '2010-06-01'),
('Pooja',   'Nair',     'Neurology',      '2012-09-15'),
('Dev',     'Agarwal',  'Orthopedics',    '2015-11-05'),
('Rima',    'Sharma',   'Pediatrics',     '2018-01-22'),
('Karan',   'Singh',    'Dermatology',    '2020-03-10'),
('Meera',   'Gupta',    'Gynecology',     '2014-07-18'),
('Rohan',   'Malhotra', 'General Surgery','2009-02-27'),
('Anita',   'Chopra',   'ENT',            '2016-05-11'),
('Vivek',   'Khan',     'Urology',        '2013-12-08'),
('Nisha',   'Verma',    'Oncology',       '2017-04-04');

-- display table Doctors
SELECT * FROM Doctors;

-- to delete values from table 
truncate table Doctors;

-- to delete table
drop table Doctors;

CREATE TABLE Departments (
  dept_id         INT AUTO_INCREMENT PRIMARY KEY,
  dept_name       VARCHAR(100),
  floor           INT,
  phone_extension VARCHAR(10),
  head_doctor_id  INT,
  FOREIGN KEY (head_doctor_id) REFERENCES Doctors(doctor_id)
);
-- insert 10 records Department 
INSERT INTO Departments (dept_name, floor, phone_extension, head_doctor_id) VALUES
('Cardiology',      2, '201', 1),
('Neurology',       3, '301', 2),
('Orthopedics',     4, '401', 3),
('Pediatrics',      5, '501', 4),
('Dermatology',     6, '601', 5),
('Gynecology',      7, '701', 6),
('General Surgery', 8, '801', 7),
('ENT',             9, '901', 8),
('Urology',         10,'1001',9),
('Oncology',        11,'1101',10);

-- display table data
SELECT * FROM Departments;

-- to delete values from table 
truncate table Departments;

-- to delete table
drop table Departments;


CREATE TABLE Appointments (
  appointment_id  INT AUTO_INCREMENT PRIMARY KEY,
  patient_id      INT,
  doctor_id       INT,
  appointment_date DATETIME,
  reason          VARCHAR(200),
  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
  FOREIGN KEY (doctor_id)  REFERENCES Doctors(doctor_id)
);

INSERT INTO Appointments (appointment_date, reason) VALUES
('2025-06-10 10:00', 'Chest pain'),
('2025-06-11 11:30', 'Child vaccination'),
('2025-06-12 14:00', 'Knee pain'),
('2025-06-13 09:00', 'Headaches'),
('2025-06-14 13:00', 'Skin rash'),
('2025-06-15 15:30', 'Routine check-up'),
('2025-06-16 16:00', 'Abdominal pain'),
('2025-06-17 10:45', 'Ear infection'),
('2025-06-18 12:15', 'Urinary issue'),
('2025-06-19 14:45', 'Cancer consultation');

-- display table
SELECT * FROM Appointments;

-- to delete values from table 
truncate table Appointments;

-- to delete table
drop table Appointments;

CREATE TABLE Prescriptions (
  prescription_id  INT AUTO_INCREMENT PRIMARY KEY,
  appointment_id    INT,
  medicine_name     VARCHAR(100),
  dosage            VARCHAR(50),
  duration_days     INT,
  FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);
-- insert 10 records 
INSERT INTO Prescriptions (medicine_name, dosage, duration_days) VALUES
( 'Aspirin',          '75 mg daily',         30),
('Ibuprofen',        '200 mg as needed',    7),
('Paracetamol',      '500 mg every 6 hrs',  5),
('Sumatriptan',     '50 mg once',          1),
('Hydrocortisone',   'Apply twice daily',   14),
('Multivitamins',    '1 tab daily',         60),
('Omeprazole',       '20 mg daily',         14),
('Amoxicillin',      '500 mg three times',  7),
('Ciprofloxacin', '500 mg twice daily',  10),
('Tamoxifen','20 mg daily',         365);

-- display table
SELECT * FROM Prescriptions;

-- to delete values from table 
truncate table Prescriptions;

-- to delete table
drop table Prescriptions;