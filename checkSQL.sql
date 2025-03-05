-- Query 1: Insert a new dining hall
INSERT INTO DiningHalls (dining_hall_id, NAME, location, capacity)
VALUES (101, 'New Dining Hall', '123 Campus Rd, University City', 300);

-- Query 2: Insert a new student
INSERT INTO Students (student_id, NAME, dormitory_id, meal_plan_id, dietary_restrictions)
VALUES (101, 'John Doe', 10, 5, 'Vegetarian');

-- Query 3: Update the capacity of a dining hall
UPDATE DiningHalls
SET capacity = 500
WHERE dining_hall_id = 1;

-- Query 4: Update a student's meal plan
UPDATE Students
SET meal_plan_id = 10
WHERE student_id = 1;

-- Query 5: Delete a food supplier
DELETE FROM FoodSuppliers
WHERE supplier_id = 50;

-- Query 6: Select a subset of rows and columns
SELECT NAME, location
FROM DiningHalls
WHERE capacity > 400;

-- Query 7: Join Students and Dormitories
SELECT s.NAME AS StudentName, d.NAME AS DormitoryName
FROM Students s
JOIN Dormitories d ON s.dormitory_id = d.dormitory_id;

-- Query 8: Join Inventory and FoodSuppliers
SELECT i.food_item, f.NAME AS SupplierName
FROM Inventory i
JOIN FoodSuppliers f ON i.supplier_id = f.supplier_id;

-- Query 9: Calculate the total capacity of all dining halls
SELECT SUM(capacity) AS TotalCapacity
FROM DiningHalls;

-- Query 10: Find the average cost of meal plans
SELECT AVG(cost) AS AverageCost
FROM MealPlans;

-- Query 11: Multi-table query
SELECT s.NAME AS StudentName, d.NAME AS DormitoryName, m.TYPE AS MealPlanType
FROM Students s
JOIN Dormitories d ON s.dormitory_id = d.dormitory_id
JOIN MealPlans m ON s.meal_plan_id = m.meal_plan_id;

-- Query 12: Number of students in each dormitory
SELECT d.NAME AS DormitoryName, COUNT(s.student_id) AS NumberOfStudents
FROM Students s
JOIN Dormitories d ON s.dormitory_id = d.dormitory_id
GROUP BY d.NAME;