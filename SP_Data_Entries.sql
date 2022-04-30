----------------------------------------
------- Main SP data -----------
insert into mcq_options values
(2, 'a', 'b', 'c', 'd', 2),
(3, 'a', 'b', 'c', 'd', 3), (4, 'a', 'b', 'c', 'd', 4),
(5, 'a', 'b', 'c', 'd', 5),(6, 'a', 'b', 'c', 'd', 6),
(7, 'a', 'b', 'c', 'd', 7), (8, 'a', 'b', 'c', 'd', 8),
(9, 'a', 'b', 'c', 'd', 9), (10, 'a', 'b', 'c', 'd', 10),
 (11, 'a', 'b', 'c', 'd', 11), (12, 'a', 'b', 'c', 'd', 12),
(13, 'a', 'b', 'c', 'd', 13), (14, 'a', 'b', 'c', 'd', 14),
(15, 'a', 'b', 'c', 'd', 15), (16, 'a', 'b', 'c', 'd', 16),
(17, 'a', 'b', 'c', 'd', 17), (18, 'a', 'b', 'c', 'd', 18),
(19, 'a', 'b', 'c', 'd', 19), (20, 'a', 'b', 'c', 'd', 20),
(21, 'a', 'b', 'c', 'd', 21), (22, 'a', 'b', 'c', 'd', 22),
insert into mcq_options values
(23, 'a', 'b', 'c', 'd', 23), (24, 'a', 'b', 'c', 'd', 24),
(25, 'a', 'b', 'c', 'd', 25), (26, 'a', 'b', 'c', 'd', 26),
(27, 'a', 'b', 'c', 'd', 27), (28, 'a', 'b', 'c', 'd', 28)
insert into mcq_options values
(29, 'a', 'b', 'c', 'd', 29),
 (30, 'a', 'b', 'c', 'd', 30),
insert into mcq_options values(31, 'a', 'b', 'c', 'd', 31),(32, 'a', 'b', 'c', 'd', 32),
(33, 'a', 'b', 'c', 'd', 33), (34, 'a', 'b', 'c', 'd', 34),
(35, 'a', 'b', 'c', 'd', 35), (36, 'a', 'b', 'c', 'd', 36),
(37, 'a', 'b', 'c', 'd', 37), (38, 'a', 'b', 'c', 'd', 38),
(39, 'a', 'b', 'c', 'd', 39), (40, 'a', 'b', 'c', 'd', 40),
(41, 'a', 'b', 'c', 'd', 41), (42, 'a', 'b', 'c', 'd', 42),
(43, 'a', 'b', 'c', 'd', 43), (44, 'a', 'b', 'c', 'd', 44),
(45, 'a', 'b', 'c', 'd', 45), (46, 'a', 'b', 'c', 'd', 46),
(47, 'a', 'b', 'c', 'd', 47), (48, 'a', 'b', 'c', 'd', 48),
(49, 'a', 'b', 'c', 'd', 49), (50, 'a', 'b', 'c', 'd', 50),
(51, 'a', 'b', 'c', 'd', 51), (52, 'a', 'b', 'c', 'd', 52),
(53, 'a', 'b', 'c', 'd', 53), (54, 'a', 'b', 'c', 'd', 54),
(55, 'a', 'b', 'c', 'd', 55), (56, 'a', 'b', 'c', 'd', 56),
(57, 'a', 'b', 'c', 'd', 57)
-------
---1- Exam Generation -----
ExamGeneration 10,'C#',5,5

ExamGeneration 4,'DB Fundamentals',2,2

ExamGeneration 8,'XML',4,4   --no 13

ExamGeneration 6, 'DB Adminstartion', 3,3   --no 14

ExamGeneration 10, 'SQL BI', 5,5       -- no 15
ExamGeneration 10, 'Cloud Azure', 5,5  -- no 16
ExamGeneration 10, 'Data Mining', 5,5        -- no 17
ExamGeneration 10, 'Power BI', 5,5        -- no 18
ExamGeneration 10, 'Tableau', 5,5        -- no 19
ExamGeneration 10, 'Big Data', 5,5        -- no 20
ExamGeneration 10, 'Python', 5,5        -- no 21
ExamGeneration 10, 'Comm Skills', 5,5        -- no 22


------2- Exam Student Answer -----
StudentAnswer 10,1030,3,'*'
StudentAnswer 10,1030,5,'integer' 
StudentAnswer 10,1030,6,'Declaring'
StudentAnswer 10,1030,7,'ceil(1.66)'
StudentAnswer 10,1030,8,'True'
StudentAnswer 10,1030,9,'False' 
StudentAnswer 10,1030,10,'True'
StudentAnswer 10,1030,14,'max = a>b ? a>c/a:c<b>c?b;c'

StudentAnswer 5,1006,2,'rem = fmod(3.14, 2.1)'
StudentAnswer 5,1006,3,'_ (underscore)'
StudentAnswer 5,1006,5,'double'
StudentAnswer 5,1006,8,'False'
StudentAnswer 5,1006,9,'False'
StudentAnswer 5,1006,10,'True'
StudentAnswer 5,1006,12,'*-+/'
StudentAnswer 5,1006,14,'max = a>b ? a>c?a:c:b>c?b:c'

StudentAnswer 11,1037,37,'EQUI JOIN'
StudentAnswer 11,1037,40,'ALTER'
StudentAnswer 11,1037,43,'True'
StudentAnswer 11,1037,46,'False'

StudentAnswer 13,1044,46,'False'


StudentAnswer 14,1010,46,'UPDATE'
StudentAnswer 14,1010,50,'IS NULL Operator'
StudentAnswer 14,1010,54,'Revoke'
StudentAnswer 14,1010,57,'False'
StudentAnswer 14,1010,58,'False'
StudentAnswer 14,1010,59,'False'

StudentAnswer 2,1005,8,'True'
StudentAnswer 2,1005,9,'False'
StudentAnswer 2,1005,12,'/ * + -'
StudentAnswer 2,1005,14,'max = a>b ? a>c,a:c:b>c,b:c'

StudentAnswer 3,1009,2, 'rem = fmod(3.14, 2.1)'
StudentAnswer 3,1009,3, '_ (underscore)'
StudentAnswer 3,1009,6, 'Declaring'
StudentAnswer 3,1009,8, 'True'
StudentAnswer 3,1009,9, 'True'
StudentAnswer 3,1009,10, 'True'


StudentAnswer 4,1010,2, 'rem = fmod(3.14, 2.1)'
StudentAnswer 4,1010,5, 'float'
StudentAnswer 4,1010,6, 'Declaring'
StudentAnswer 4,1010,8, 'False'
StudentAnswer 4,1010,9, 'False'
StudentAnswer 4,1010,10, 'True'
StudentAnswer 4,1010,15, '& operator'

StudentAnswer 5,1012,2, 'rem = fmod(3.14, 2.1)'
StudentAnswer 5,1012,3, ', (comma)'
StudentAnswer 5,1012,5, 'double'
StudentAnswer 5,1012,8, 'False'
StudentAnswer 5,1012,9, 'True'
StudentAnswer 5,1012,10, 'False'
StudentAnswer 5,1012,12, '/ * + -'
StudentAnswer 5,1012,14, 'max = a>b ? a>c?a:c:b>c?b:c'

StudentAnswer 10,1014,3, '_ (underscore)'
StudentAnswer 10,1014,5, 'double'
StudentAnswer 10,1014,6, 'calling'
StudentAnswer 10,1014,7, 'ceil(1.66)'
StudentAnswer 10,1014,8, 'True'
StudentAnswer 10,1014,9, 'True'
StudentAnswer 10,1014,10, 'True'
StudentAnswer 10,1014,14, 'max = a>b ? a>c?a:c:b>c?b:c'

StudentAnswer 11,1016,37, 'EQUI JOIN'
StudentAnswer 11,1016,40, 'drop'
StudentAnswer 11,1016,43, 'True'
StudentAnswer 11,1016,46, 'False'


StudentAnswer 13,1018,48, 'UPDATE'
StudentAnswer 13,1016,50, 'IS NULL Operator'
StudentAnswer 13,1016,54, 'COMMIT'
StudentAnswer 13,1016,57, 'False'
StudentAnswer 13,1016,58, 'True'
StudentAnswer 13,1016,59, 'False'

StudentAnswer 14,1018,47, 'DECIMAL'
StudentAnswer 14,1018,54, 'revoke'
StudentAnswer 14,1018,57, 'False'
StudentAnswer 14,1018,59, 'False'
StudentAnswer 14,1018,61, 'True'
StudentAnswer 14,1018,63, 'UPDATE'

StudentAnswer 15,1020,64, 'TRUNCATE'
StudentAnswer 15,1020,65, 'IS NULL Operator'
StudentAnswer 15,1020,66, 'When a table is deleted.'
StudentAnswer 15,1020,69, 'COMMIT'
StudentAnswer 15,1020,71, 'They include only SQL statements.'
StudentAnswer 15,1020,72, 'False'
StudentAnswer 15,1020,73, 'False'
StudentAnswer 15,1020,74, 'True'
StudentAnswer 15,1020,75, 'True'
StudentAnswer 15,1020,76, 'False'

StudentAnswer 16,1022,77, 'DECIMAL'
StudentAnswer 16,1022,78, 'UPDATE'
StudentAnswer 16,1022,79, 'TRUNCATE'
StudentAnswer 16,1022,82, 'EQUI JOIN'
StudentAnswer 16,1022,84, 'COMMIT'
StudentAnswer 16,1022,87, 'False'
StudentAnswer 16,1022,88, 'True'
StudentAnswer 16,1022,89, 'True'
StudentAnswer 16,1022,90, 'True'
StudentAnswer 16,1022,91, 'False'

StudentAnswer 17,1024,92, 'varchar'
StudentAnswer 17,1024,94, 'drop'
StudentAnswer 17,1024,95, 'IS NULL Operator'
StudentAnswer 17,1024,100, 'ALTER'
StudentAnswer 17,1024,102, 'False'
StudentAnswer 17,1024,103, 'True'
StudentAnswer 17,1024,104, 'False'
StudentAnswer 17,1024,105, 'True'
StudentAnswer 17,1024,106, 'False'
StudentAnswer 17,1024,93, 'UPDATE'




-----3- Exam Student Result ---------
ExamCorrection 10,1030,1

ExamCorrection 11,1037,3

ExamCorrection 5,1006,1

ExamCorrection 14,1010,3

ExamCorrection 3,1009,1
ExamCorrection 4,1010,1
ExamCorrection 5,1012,1
ExamCorrection 10,1014,1
ExamCorrection 11,1016,3
ExamCorrection 13,1018,4

ExamCorrection 14,1018,4
ExamCorrection 15,1020,5
ExamCorrection 16,1022,6
ExamCorrection 17,1024,7


