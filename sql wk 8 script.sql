-- Create the database
-- CREATE DATABASE PrisonECDE;
-- USE PrisonECDE;
-- Prison Table
-- CREATE TABLE Prison (
   --  prison_id INT PRIMARY KEY AUTO_INCREMENT,
   --  name VARCHAR(100) NOT NULL UNIQUE,
   --  location VARCHAR(100) NOT NULL
-- );
-- Caregiver Table
-- CREATE TABLE Caregiver (
    -- caregiver_id INT PRIMARY KEY AUTO_INCREMENT,
   --  name VARCHAR(100) NOT NULL,
    -- prison_id INT NOT NULL,
   --  FOREIGN KEY (prison_id) REFERENCES Prison(prison_id)
-- );
-- Child Table
-- CREATE TABLE Child (
    -- child_id INT PRIMARY KEY AUTO_INCREMENT,
    -- name VARCHAR(100) NOT NULL,
    -- birth_date DATE NOT NULL,
    -- caregiver_id INT NOT NULL,
    -- prison_id INT NOT NULL,
    -- FOREIGN KEY (caregiver_id) REFERENCES Caregiver(caregiver_id),
    -- FOREIGN KEY (prison_id) REFERENCES Prison(prison_id)
-- );
-- Educator Table
-- CREATE TABLE Educator (
    -- educator_id INT PRIMARY KEY AUTO_INCREMENT,
    -- name VARCHAR(100) NOT NULL,
    -- specialization VARCHAR(100),
    -- prison_id INT NOT NULL,
    -- FOREIGN KEY (prison_id) REFERENCES Prison(prison_id)
-- );
-- LessonPlan Table
-- CREATE TABLE LessonPlan (
    -- lesson_id INT PRIMARY KEY AUTO_INCREMENT,
    -- title VARCHAR(100) NOT NULL,
    -- week_start DATE NOT NULL,
    -- educator_id INT NOT NULL,
    -- FOREIGN KEY (educator_id) REFERENCES Educator(educator_id)
-- );
-- ChildLesson (Many-to-Many)
-- CREATE TABLE ChildLesson (
    -- child_id INT NOT NULL,
    -- lesson_id INT NOT NULL,
    -- PRIMARY KEY (child_id, lesson_id),
    -- FOREIGN KEY (child_id) REFERENCES Child(child_id),
    -- FOREIGN KEY (lesson_id) REFERENCES LessonPlan(lesson_id)
-- );
-- Stakeholder Table
-- CREATE TABLE Stakeholder (
    -- stakeholder_id INT PRIMARY KEY AUTO_INCREMENT,
    -- name VARCHAR(100) NOT NULL,
    -- organization VARCHAR(100),
    -- contact_email VARCHAR(100) UNIQUE
-- );
-- Visit Table
CREATE TABLE Visit (
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    stakeholder_id INT NOT NULL,
    prison_id INT NOT NULL,
    visit_date DATE NOT NULL,
    purpose TEXT,
    FOREIGN KEY (stakeholder_id) REFERENCES Stakeholder(stakeholder_id),
    FOREIGN KEY (prison_id) REFERENCES Prison(prison_id)
);










