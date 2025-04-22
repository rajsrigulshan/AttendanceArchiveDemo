INSERT INTO "Location" ("name", "address") VALUES
('City Center Gym', '123 Main Street'),
('Suburban Fitness', '456 Oak Avenue');

INSERT INTO "CoachingPlan" ("name", "description", "planDuration", "price") VALUES
('Basic Monthly', 'Standard access', '1 Month', 50.00),
('Premium Yearly', 'Full access, personal training session', '12 Months', 500.00);

INSERT INTO "User" ("fullName", "email", "phone", "dob", "locationId", "coachingPlanId", password, role) VALUES
('John Doe', 'john.doe@example.com', '123-456-7890', '1990-05-15', 1, 1, 'hashed_password_john', 'student'),
('Jane Smith', 'jane.smith@example.com', '987-654-3210', '1995-10-20', 2, 2, 'hashed_password_jane', 'coach'),
('Admin User', 'admin@example.com', '111-222-3333', '1988-03-01', 1, 1, 'hashed_password_admin', 'admin');

INSERT INTO "CoachingSchedule" ("coachingBatch", "coachingDays", "startTime", "endTime", "locationId") VALUES
('kidsStandard', '123', '16:00', '17:00', 1),
('adultsPremium', 'Tuesday, Thursday', '19:00', '20:30', 2);

INSERT INTO "Attendance" ("isStatus", "attendanceDate", "userId", "coachingScheduleId") VALUES
('present', '2025-04-22', 1, 1),
('absent', '2025-04-22', 2, 2);

INSERT INTO "Payment" ("userId", "paymentDate", "paymentAmount", "isPaymentDone", "transactionDetails") VALUES
(1, '2025-04-20', 50, 'paid', 'Monthly subscription payment'),
(2, '2025-04-15', 500, 'paid', 'Yearly premium subscription');



