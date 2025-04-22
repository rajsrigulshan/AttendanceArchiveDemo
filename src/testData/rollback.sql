-- You can add DELETE statements here to remove the test data if you need to rollback
DELETE FROM "Payment" WHERE "userId" IN (1, 2);
DELETE FROM "Attendance" WHERE "userId" IN (1, 2);
DELETE FROM "CoachingSchedule" WHERE "locationId" IN (1, 2);
DELETE FROM "User" WHERE email IN ('john.doe@example.com', 'jane.smith@example.com', 'admin@example.com');
DELETE FROM "CoachingPlan" WHERE name IN ('Basic Monthly', 'Premium Yearly');
DELETE FROM "Location" WHERE name IN ('City Center Gym', 'Suburban Fitness');