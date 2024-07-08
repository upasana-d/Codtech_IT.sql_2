# STUDENT DATABASE MANAGEMENT
## Overview

This project is part of my SQL internship at CODTECH IT Solutions. The goal was to create a student database management system to manage student records, courses, and enrollments. This project involved designing and implementing tables for Students, Courses, and Enrollments, and using SQL queries to manage and demonstrate the functionality of the system.

## Database Design

### Tables

1. **STDUENTS**
   - RollNo (PRIMARY KEY)
   - Name
   - Email
   - Contact

     ![Screenshot 2024-07-08 193523](https://github.com/upasana-d/Codtech_IT.sql_2/assets/171510568/73ce0ac9-90fb-4c0e-babb-8b2bfb0ae1e8)

2. **COURSE**
   - CourseID (PRIMARY KEY)
   - GraduationType
   - Course
   - Duration
   - Fees

     ![Screenshot 2024-07-08 193601](https://github.com/upasana-d/Codtech_IT.sql_2/assets/171510568/18d83bd1-6386-4633-85e4-720369884c73)

3. **ENROLLMENTS**
   - EnrollmentNo (PRIMARY KEY)
   - RollNo (FOREIGN KEY)
   - CouseID (FOREIGN KEY)
   - RegistrationYear
   - Sem
   - TotalGrade

     ![Screenshot 2024-07-08 193636](https://github.com/upasana-d/Codtech_IT.sql_2/assets/171510568/1352dc67-61f2-4bd6-ba90-f5cff0df697e)
