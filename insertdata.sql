-- 2. insert at least 5 rows of values in each table


use students;

-- courses
INSERT INTO courses(coursename) 
VALUES("HTML"),("CSS"),("JavaScript"),("ReactJS"),("NodeJs");

-- mentors
INSERT INTO mentors(mentorname,mentoremail) 
VALUES ("Ajith","ajithk@gmail.com"),("Pandian","pand007@gmail.com"),("Vijay","vijayT@gmail.com"),("Surya","surya@gmail.com"),("Rajini","Rajiniss@gmail.com");


-- users
INSERT INTO users(username,useremail,mentorid) VALUES("Sathish","Sathish@gmail.com",2),("Kumar","Kumar27@gmail.com",1),("Anikh","Anik24@gmail.com",5),("Shiva","shiva111@gmail.com",3),("Athira","athirask@gmail.com",4);


-- codekata
INSERT INTO codekata(number_of_problems,string_problems,userid) VALUES(10,5,1),(20,15,2),(15,10,3),(30,10,4),(80,60,5);


-- topics
INSERT INTO topics(topic,courseid) VALUES("HTML Basics",1),("CSS Basics",2),("JavaScript Basics",3),("React - Basics",4),("React Components",5);


-- tasks
INSERT INTO tasks(task,courseid) VALUES ("HTML Task",1),("CSS Task",2),("JavaScript Task",3),("React Task",4),("Node Task",5),;


-- attendence
INSERT INTO attendance(userid,courseid,topicsid,attended) VALUES(2,1,5,true),(5,2,1,false)(1,1,3,true)(3,4,4,ture)(4,1,2,false);


-- company drives
INSERT INTO company_drives(userid,company) VALUES (1,"Infosys"),(2,"Amazon")(3,"HCL")(4,"Google");(5,"Wipro")


-- students activated courses
INSERT INTO students_activated_courses(userid,courseid) VALUES(1,1),(2,1),(3,4),(4,1),(5,2);
