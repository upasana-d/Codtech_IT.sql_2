CREATE DATABASE StudentDatabaseManagement;

USE StudentDatabaseManagement;

CREATE TABLE STUDENTS (
     RollNo INT PRIMARY KEY AUTO_INCREMENT, 
     Name VARCHAR(50),  
     Email VARCHAR(30), 
     Contact VARCHAR(12), DOB DATE
);
INSERT INTO STUDENTS VALUES (1, "Shailey Sarkar", "shaileysarkar@124gmai.com", "82677-53232", "2003-06-27");
INSERT INTO STUDENTS (Name, Email, Contact, DOB)
VALUES
	("Dharmendra Prasad", "prasaddharmendra82@gmail.com", "82363-28363", "2004-02-18"),
    ("Janhvi Kapoor", "kapoorjanhvi837@gmail.com", "92687-63231", "2002-12-28"),
    ("Tajdar Malakar", "malataj232@yahoo.com", "97646-23215", "2002-10-16"),
    ("Shahid Khan", "shahidkhan986@gmail.com", "98723-98775", "2003-07-25"),
    ("Rashmika Mndanna", "rashmi726@gmail.com", "96378-26379", "2004-05-23"),
    ("Sukumar Sen", "sukumari23sen@gmail.com", "83648-79234", "2001-12-23"),
    ("Jagadish Ray", "rayjagdish53@gmail.com", "97253-71325", "2002-05-17"),
    ("Sushant Sinha", "sushant937sinha@yahoo.com", "98342-27563", "2001-05-29"),
    ("Srikant Yadav", "yadavsrikant1343@yahoo.com", "86437-61323","2003-03-28"),
    ("Shirajuddin Rehman", "rehmanshirajuddin97@yahoo.com", "89653-65433", "2004-08-15"),
    ("Sushila Kumari", "sushilakumari24@gmail.com", "89367-34326", "2003-07-18"),
    ("Namita Dasgupta", "namitadasgupta35@yahoo.com", "97486-38742", "2001-03-23"),
    ("Rajkumar Pandey", "rajkumar23@yahoo.com", "93843-23221", "2003-04-12"),
    ("Ramdas Sarkar", "sarkarramdas65@gmail.com", "87213-82163", "2004-02-28"),
    ("Harekrishna Paul", "harekrishna86@gmail.com", "97213-82738", "2002-03-31");
    
CREATE TABLE COURSES (
	 CourseID VARCHAR(5) PRIMARY KEY, 
     GraduationType VARCHAR(50), 
     Course VARCHAR(150), 
     Duration VARCHAR(10), 
     Fees VARCHAR(20)
);
INSERT INTO COURSES (CourseID, GraduationType, Course, Duration, Fees)
VALUES
    ("UGA01", "Under Graduation", "Bachelor of Arts (B.A)", "3 Years", "Rs 3K/Sem"),
    ("UGA02", "Under Graduation", "Bachelor of Education (B.Ed)", "2 Years", "Rs 20K/Sem"),
    ("UGS01", "Under Graduation", "Bachelor of Science (B.Sc)", "3 Years", "Rs 5K/Sem"),
    ("UGC01", "Under Graduation", "Bachelor of Commerce (B.Com)", "3 Years", "Rs 4K/Sem"),
    ("UGC02", "Under Graduation", "Bachelor of Business Administration (BBA)", "3 Years", "Rs 7K/Sem"),
    ("UGL01", "Under Graduation", "Bachelor of Laws (LLB)", "5 Years", "Rs. 10K/Sem"),
    ("UGT01", "Under Graduation", "Bacheloe of Teachnology (B.Tech)", "4 Years", "Rs 50K/Sem"),
    ("PGA01", "Post Graduation", "Master of Arts (M.A)", "2 Years", "Rs 10K/Sem"),
    ("PGA02", "Post Graduation", "Master of Education (M.Ed)", "2 Years", "Rs 30K/Sem"),
    ("PGS01", "Post Graduation", "Master of Sscience (M.Sc)", "2 Years", "Rs 15K/Sem"),
    ("PGC01", "Post Graduation", "Master of Commerce (M.Com)", "2 Years", "Rs 12K/Sem"),
    ("PGC02", "Post Graduation", "Master of Business Administration (MBA)", "2 Years", "Rs70K/Sem"),
    ("PGT01", "Post Graduation", "Master of Technology (M.Tech)", "2 Yaers", "Rs 90K/Sem");
    
CREATE TABLE ENROLLMENTS(
     EnrollmentNo VARCHAR(20), 
     RollNo INT, 
     CourseID VARCHAR(5), 
     RegistrationYear YEAR, 
     Sem VARCHAR(3), 
     TotalGrade VARCHAR(1),
     FOREIGN KEY (RollNo) REFERENCES STUDENTS(RollNo),
     FOREIGN KEY (CourseID) REFERENCES COURSES(CourseID)
     ON UPDATE CASCADE 
     ON DELETE CASCADE
);
INSERT INTO ENROLLMENTS (EnrollmentNo, RollNo, CourseID, RegistrationYear, Sem, TotalGrade)
VALUES
    ("12023UGA", 2, "UGA02", "2023", "4th", "A"),
    ("102024UGT", 5, "UGT01", "2024", "2nd", "O"),
    ("1520222UGC", 1, "UGC02", "2022", "5th", "E"),
    ("192021UGT", 6, "UGT01", "2021", "7th", "A"),
    ("102022PGT", 12, "PGT01", "2022", "4th", "O"),
    ("172023UGL01", 14, "UGL01", "2023", "3rd", "B");
    
SELECT * FROM STUDENTS;
SELECT * FROM COURSES;
SELECT * FROM ENROLLMENTS;

SELECT e.EnrollmentNo, s.RollNo, s.Name, c.Course, e.Sem FROM ENROLLMENTS AS e
JOIN STUDENTS AS s ON s.RollNo = e.RollNo
JOIN COURSES AS c ON c.CourseID = e.CourseID;

SELECT c.Course, 
    AVG(CASE e.TotalGrade 
        WHEN 'O' THEN 10
        WHEN 'E' THEN 9.0
        WHEN 'A' THEN 8.0
        WHEN 'B' THEN 7.0 
        WHEN 'C' THEN 6.0 
        ELSE NULL END) AS average_grade
FROM Enrollments AS e
JOIN Courses AS c ON e.CourseID = c.CourseID
WHERE c.CourseID = "UGT01" GROUP BY c.Course;



