-- 1. Create tables for the below list given
-- Users
-- Codekata
-- Attendance
-- Topics
-- Tasks
-- Company Drives
-- Mentors
-- Students activated courses
-- Courses


CREATE DATABASE students;
use students;

-- Users
CREATE TABLE users(
    userid INTEGER AUTO_INCREMENT PRIMARY KEY, 
    username VARCHAR(100),useremail VARCHAR(100),
    mentorid INTEGER, 
    FOREIGN KEY (mentorid) REFERENCES mentors(mentorid)
    );

-- codekata
CREATE TABLE codekata(
    codekataid INTEGER AUTO_INCREMENT PRIMARY KEY,
    userid INTEGER,number_of_problems INTEGER,
    string_problems INTEGER, 
    FOREIGN KEY (userid) REFERENCES users(userid)
    );
 
-- Attendance
CREATE TABLE attendance(
    attendanceid INTEGER AUTO_INCREMENT PRIMARY KEY, 
    userid INTEGER,
    courseid INTEGER ,
    topicsid INTEGER, 
    attended BOOLEAN, 
    FOREIGN KEY (userid) REFERENCES users(userid), 
    FOREIGN KEY (topicsid) REFERENCES topics(topicsid), 
    FOREIGN KEY (courseid) REFERENCES courses(courseid)
    );

-- Topics
CREATE TABLE topics(
    topicsid INTEGER AUTO_INCREMENT PRIMARY KEY,
    courseid INTEGER, 
    topic VARCHAR(200), 
    FOREIGN KEY (courseid) REFERENCES courses(courseid)
    );

-- Tasks
CREATE TABLE tasks(
    tasksid INTEGER AUTO_INCREMENT PRIMARY KEY,
    courseid INTEGER,
    task VARCHAR(200),
    FOREIGN KEY (courseid) REFERENCES courses(courseid)
    );

-- Company Drives
CREATE TABLE company_drives(
    drivesid INTEGER AUTO_INCREMENT PRIMARY KEY,
    userid INTEGER,
    company VARCHAR(100),
    FOREIGN KEY (userid) REFERENCES users(userid)
    );

-- Mentors
CREATE TABLE mentors(
    mentorid INTEGER AUTO_INCREMENT PRIMARY KEY,
    mentorname VARCHAR(100),
    mentoremail VARCHAR(100)
    );

-- Students Activated Courses
CREATE TABLE students_activated_courses(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    userid INTEGER,
    FOREIGN KEY (userid) REFERENCES users(userid),
    courseid INTEGER,
    FOREIGN KEY (courseid) REFERENCES courses(courseid)
    );

-- Courses
CREATE TABLE courses(
    courseid INTEGER AUTO_INCREMENT PRIMARY KEY,
    coursename VARCHAR(100)
    );