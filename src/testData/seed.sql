INSERT INTO "Location" ("name", "address") VALUES
('City Center Gym', '123 Main Street'),
('Suburban Fitness', '456 Oak Avenue');

INSERT INTO "CoachingPlan" ("name", "description", "planDuration", "price") VALUES
('Basic Monthly', 'Standard access', '1 Month', 50.00),
('Premium Yearly', 'Full access, personal training session', '12 Months', 500.00);




INSERT INTO "User" ("fullName", "email", "phone", "dob", "locationId", "coachingPlanId", "password", "role") VALUES
('Aarav Sharma', 'aarav.sharma@example.com', '111-111-0001', '1992-08-10', 1, 1, '**********', 'student'),
('Priya Verma', 'priya.verma@example.com', '111-111-0002', '1995-03-22', 1, 2, '**********', 'student'),
('Rahul Kapoor', 'rahul.kapoor@example.com', '111-111-0003', '1988-11-05', 1, 1, '**********', 'student'),
('Sneha Patel', 'sneha.patel@example.com', '111-111-0004', '1998-06-18', 1, 2, '**********', 'student'),
('Vikram Singh', 'vikram.singh@example.com', '111-111-0005', '1991-01-25', 1, 1, '**********', 'student'),
('Anjali Yadav', 'anjali.yadav@example.com', '111-111-0006', '1997-09-30', 1, 2, '**********', 'student'),
('Aryan Gupta', 'aryan.gupta@example.com', '111-111-0007', '1985-04-12', 1, 1, '**********', 'student'),
('Siya Joshi', 'siya.joshi@example.com', '111-111-0008', '1999-12-01', 1, 2, '**********', 'student'),
('Dev Sharma', 'dev.sharma@example.com', '111-111-0009', '1989-07-08', 1, 1, '**********', 'student'),
('Kavya Verma', 'kavya.verma@example.com', '111-111-0010', '1993-02-15', 1, 2, '**********', 'student'),
('Rohan Kapoor', 'rohan.kapoor@example.com', '111-111-0011', '1996-10-28', 1, 1, '**********', 'student'),
('Diya Patel', 'diya.patel@example.com', '111-111-0012', '1987-05-03', 1, 2, '**********', 'student'),
('Ishaan Gupta', 'ishaan.gupta@example.com', '111-111-0013', '1994-11-17', 1, 1, '**********', 'student'),
('Meera Joshi', 'meera.joshi@example.com', '111-111-0014', '1990-06-22', 1, 2, '**********', 'student'),
('Vivaan Singh', 'vivaan.singh@example.com', '111-111-0015', '1986-01-05', 1, 1, '**********', 'student'),
('Aditi Verma', 'aditi.verma1@example.com', '111-111-0016', '1991-09-20', 1, 2, '**********', 'student'),
('Aryan Sharma', 'aryan.sharma1@example.com', '111-111-0017', '1996-04-02', 1, 1, '**********', 'student'),
('Siya Kapoor', 'siya.kapoor1@example.com', '111-111-0018', '1989-12-15', 1, 2, '**********', 'student'),
('Dev Patel', 'dev.patel1@example.com', '111-111-0019', '1999-07-28', 1, 1, '**********', 'student'),
('Kavya Gupta', 'kavya.gupta1@example.com', '111-111-0020', '1990-02-05', 1, 2, '**********', 'student');





INSERT INTO "User" ("fullName", "email", "phone", "dob", "locationId", "coachingPlanId", "password", "role") VALUES
('Aditi Verma', 'aditi.verma@example.com', '222-222-0001', '1991-09-20', 2, 1, '**********', 'student'),
('Aryan Sharma', 'aryan.sharma2@example.com', '222-222-0002', '1996-04-02', 2, 2, '**********', 'student'),
('Siya Kapoor', 'siya.kapoor@example.com', '222-222-0003', '1989-12-15', 2, 1, '**********', 'student'),
('Dev Patel', 'dev.patel@example.com', '222-222-0004', '1999-07-28', 2, 2, '**********', 'student'),
('Kavya Gupta', 'kavya.gupta@example.com', '222-222-0005', '1990-02-05', 2, 1, '**********', 'student'),
('Rohan Joshi', 'rohan.joshi@example.com', '222-222-0006', '1998-10-10', 2, 2, '**********', 'student'),
('Diya Singh', 'diya.singh@example.com', '222-222-0007', '1986-05-22', 2, 1, '**********', 'student'),
('Ishaan Verma', 'ishaan.verma@example.com', '222-222-0008', '2000-01-11', 2, 2, '**********', 'student'),
('Meera Sharma', 'meera.sharma@example.com', '222-222-0009', '1988-08-18', 2, 1, '**********', 'student'),
('Vivaan Kapoor', 'vivaan.kapoor@example.com', '222-222-0010', '1992-03-25', 2, 2, '**********', 'student'),
('Aarav Patel', 'aarav.patel@example.com', '222-222-0011', '1995-11-08', 2, 1, '**********', 'student'),
('Priya Gupta', 'priya.gupta@example.com', '222-222-0012', '1987-06-13', 2, 2, '**********', 'student'),
('Rahul Joshi', 'rahul.joshi@example.com', '222-222-0013', '1993-12-27', 2, 1, '**********', 'student'),
('Sneha Singh', 'sneha.singh@example.com', '222-222-0014', '1989-07-02', 2, 2, '**********', 'student'),
('Vikram Verma', 'vikram.verma@example.com', '222-222-0015', '1985-02-15', 2, 1, '**********', 'student'),
('Anjali Sharma', 'anjali.sharma@example.com', '222-222-0016', '1997-09-30', 2, 2, '**********', 'student'),
('Aryan Verma', 'aryan.verma@example.com', '222-222-0017', '1986-04-12', 2, 1, '**********', 'student'),
('Siya Patel', 'siya.patel@example.com', '222-222-0018', '2000-12-01', 2, 2, '**********', 'student'),
('Dev Gupta', 'dev.gupta@example.com', '222-222-0019', '1990-07-08', 2, 1, '**********', 'student'),
('Kavya Joshi', 'kavya.joshi@example.com', '222-222-0020', '1994-02-15', 2, 2, '**********', 'student');




INSERT INTO "CoachingSchedule" ("coachingBatch", "coachingDays", "startTime", "endTime", "locationId") VALUES
('kidsStandard', 'Monday, Wednesday,Saturday', '16:00', '17:00', 1),
('adultsStandard', 'Monday, Wednesday,Saturday','17:00','18:30',1),
('adultsPremium','Tuesday, Thursday,Sunday','17:00','19:00',1),
('adultsStandard', 'Monday, Wednesday,Saturday','17:00','18:30',2),
('adultsPremium', 'Tuesday, Thursday, Sunday', '19:00', '20:30', 2);





