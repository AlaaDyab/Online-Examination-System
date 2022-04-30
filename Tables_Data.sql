use OnlineExaminationSystem

drop table course

insert into course 
values
(1, 'C#'), (2, 'XML'), (3, 'DB Fundamentals'),
(4, 'DB Adminstartion'), (5, 'SQL BI'),
(6, 'Cloud Azure'), (7, 'Data Mining'),
(8, 'Power BI'), (9, 'Tableau'),
(10, 'Big Data'), (11, 'Python'), (12, 'Comm Skills'),
(13, 'Presentation Skills'), (14, 'Interviewing Skills'),
(15, 'Freelancing'),
(16, 'C++'),(17,'Linux'),(18, 'SWE'),
(19, 'Web Tech.'),(20, 'SW Testing&Tech'),
(21, 'ISTQB'), (22, 'Imp. Testing'), (23, 'Test Reports'), (24, 'Intro. Web Tech.'),
(25, 'Java'), (26, 'SW Config. Manager'),(27, 'RedHat Admin.'), 
(28, 'HTML5 & CSS3'),(29, 'NodeJS'), (30, 'Version Control'),
(31, 'IoT LabDevices'),(32, 'IoT ValueChain'),(33, 'IoT App Dev'),
(34, 'JavaScript'),(35, 'jQuery'),(36, 'WebDesign Fund.'), (37, 'Bootstrap'),
(38, 'UI/UX Design'),(39, 'MongoDB'), 
(40, 'Typescript'),(41, 'Angular'),(42, 'React.js'), (43, 'JavaScrtipt DP'),
(44, 'Unit Testing'),(45, 'Secure Coding'),
(46, 'WebTooling & Opt.'), (47, 'CloudPlat. JS'),(48, 'OS Fund.'), 
(49, 'Windows/Linux Fun.'),(50, 'Networks Fund.'), (51, 'C'),
(52, 'DS & Algo.'), (53, 'PaloAlto CyberSec Found.'),
(54, 'PaloAlto CyberSec Essen.'), (55, 'PaloAlto CyberSec Gateway'),
(56, 'MS Windows Administration'), (57, 'Cisco Firepower Next
Generation Firewall'),(58, 'FortiGate Security'), (59, 'Embedded Systems Concepts'),
(60, 'Embedded Systems Con.'), (61, 'ES Development Cycle '), 
(62, '8 Bit AVR MicrocontrollerInterfacing'), (63, 'RealTime OS'), 
(64, '32 Bit ARM Microcontroller'), (65, 'ES Applications on ARMProcessor'), 
(66, 'Intro To Tooling'), (67, 'Automotive Bus Technology'),
(68, 'Introduction to AUTOSAR')


insert into course_topic values
(1, 'Introduction'), (1, 'Data Types'), (1, 'Functions'), (1, 'Loops'), (1, 'OOP')
, (1, 'Arrays'),(1, 'Windows Form'), (2, 'Schemas'), (2, 'Stylesheets'), (2, 'XML Introduction')
, (3, 'ERD'), (3, 'Mapping'), (3, 'Normalization'), (3, 'Data Types'), (4, 'SQL Server intro.')
, (4, 'DB & DB Files creation'), (4, 'Functions'), (4, 'Views'), (4, 'SPs & Triggers')
, (4, 'Cursors'), (5, 'SSIS'), (5, 'SSAS'), (5, 'SSRS'), (6, 'SaaS'), (6, 'IaaS')
, (7, 'Association Rule'), (7, 'Multilevel Association'), (7, 'Frequency Pattern Tree')
, (7, 'Decision Tree'), (7, 'K-mean Cluster')
, (8, 'Power BI Products'), (8, 'Power BI Desktop'), (8, 'Power BI Reporting Service'), (8, 'Row Level Secuirty')
, (9, 'Data Source'), (9, 'Relationships'), (9, 'Visualizations')
, (10, 'Data Generations'), (10, 'Big Data Defintion'), (10, '3Vs')
, (10, 'Distributed Systems'), (10, 'NoSQL'), (10, 'Hadoop')
, (10, 'YARN'), (10, 'Map Reduce'), (10, 'Hadoop Eco System')

 ,(11, 'Python Intro'), (11, 'Data Types'), (11, 'Loops')
, (11, 'Functions'), (11, 'OOP'), (11, 'Intro To Libraries')
,(12, 'Classifications'), (12, 'Functions'),
(12, 'Basic Comm Process'),(12, 'Comm Channels'),(12, 'Types Of Comm'),
(16, 'Intro'),(16, 'Data Types'),(16, 'Fuctions'),(16, 'Arrays'),(16, 'Loops'),
(16, 'OOP'), (17, 'Intro'),(17, 'Installation'),(17, 'Shell Command'),
(18, 'SW Life Cycle'),(18, 'Agile Method.'),(18, 'Waterfall Method.'),
(18, 'Desgin Patterns'),(18, 'Implementation'), (19, 'What Is Web Tech?'),
(19, 'How Is It Used?'), (19, 'Web Tech Examples'),
(20, 'SW Def'), (20, 'SW Testing Lifecycle'), (21, 'History of ISTQB'),
(21, ''), (21, ''), (22, '')

insert into department 
values
(1,'BI', 10),
(2, 'WebDevelopment', 20),
(3, 'Open Source', 30),
(4, 'SWTesting', 40),
(5, 'UI/UX', 50),
(6, 'CyberSecuirty', 60),
(7, 'EmbeddedSystems', 70),
(8, 'IOT', 80),
(9, 'IOS Dev', 90),
(10, 'DB Adminstartion', 100),
(11, 'Software Engineering', 110)


insert into instructor
values 
(10,'Mohammed Tharwat', 01254788888,'Mans','1987-05-10','P@ssw0rd1',1 ),   
(20, 'Rami Mohammed', 01124787952,'Cairo','1985-12-03', 'P@ssw0rd2', 2),   
(30,'Mohammed Nasser', 01001206890,'Alex','1975-02-19', 'P@ssw0rd3', 3),    
(40,'Ahmed Sami', 01074593333,'Menia','1970-04-06', 'P@ssw0rd4', 4),       
(50,'Mohammed Elshafey', 0155458899,'Qena','1982-01-29', 'P@ssw0rd5', 5),  
(60,'Arwa Mohammed', 01254788888,'Mans','1987-05-10','P@ssw0rd6', 6),       
(70, 'Nadia Farouk', 01124787952,'Cairo','1985-12-03', 'P@ssw0rd7', 7),    
(80,'Hoda Nasser', 01001206890,'Alex','1975-02-19', 'P@ssw0rd8', 8),       
(90,'Shimaa Mostafa', 01074593333,'Menia','1970-04-06', 'P@ssw0rd9', 9),    
(100,'Mona Emad', 0155458899,'Qena','1982-01-29', 'P@ssw0rd11', 10),       
(110,'Arwa Mohammed', 01187415964,'Mans','1987-05-10','P@ssw0rd12', 7),    
(120, 'Nadia Mohammed', 01124787952,'Cairo','1985-12-03', 'P@ssw0rd13', 5),  
(130,'Hoda Nasser', 01126989622,'Alex','1975-02-19', 'P@ssw0rd14', 3),     
(140,'Shimaa Mostafa', 01074593333,'Menia','1970-04-06', 'P@ssw0rd15', 1),   
(150,'Mona Emad', 01147856953,'Qena','1982-01-29', 'P@ssw0rd16', 9),

insert into instructor
values
(160,'Salem Mostafa', 01074593333,'Menia','1995-04-06', 'P@ssw0rd15', 4),   
(170,'Heba Emad', 01147856953,'Qena','1996-01-29', 'P@ssw0rd16', 2),
(180,'Samr Yasser', 01254788888,'Mans','1997-05-10','P@ssw0rd1',1 ),   
(190, 'Hady Mohammed', 01124787952,'Cairo','1998-12-03', 'P@ssw0rd2', 2),   
(200,'Ahmed Nasser', 01001206890,'Alex','1999-02-19', 'P@ssw0rd3', 3),    
(210,'Momen Sami', 01074593333,'Menia','1998-04-06', 'P@ssw0rd4', 4),       
(220,'Mohammed Elshafey', 0155458899,'Qena','1997-01-29', 'P@ssw0rd5', 5),  
(230,'Arwa Mohammed', 01254788888,'Mans','1996-05-10','P@ssw0rd6', 6),       
(240, 'Nadia Farouk', 01124787952,'Cairo','1995-12-03', 'P@ssw0rd7', 7),    
(250,'Hoda Nasser', 01001206890,'Alex','1994-02-19', 'P@ssw0rd8', 8),       
(260,'Shimaa Mostafa', 01074593333,'Menia','1993-04-06', 'P@ssw0rd9', 9),    
(270,'Mona Emad', 0155458899,'Qena','1992-01-29', 'P@ssw0rd11', 10),       
(280,'Arwa Mohammed', 01187415964,'Mans','1991-05-10','P@ssw0rd12', 7),    
(290, 'Nadia Mohammed', 01124787952,'Cairo','1992-12-03', 'P@ssw0rd13', 8),  
(300,'Hoda Nasser', 01126989622,'Alex','1993-02-19', 'P@ssw0rd14', 6),     
(310,'Shimaa Mostafa', 01074593333,'Menia','1994-04-06', 'P@ssw0rd15', 4),   
(320,'Mona Emad', 01147856953,'Qena','1995-01-29', 'P@ssw0rd16', 2),     
(330,'Mohammed Tharwat', 01254788888,'Mans','1999-05-10','P@ssw0rd1',1 ),   
(340, 'Rami Mohammed', 01124787952,'Cairo','1998-12-03', 'P@ssw0rd2', 2),   
(350,'Mohammed Nasser', 01001206890,'Alex','1997-02-19', 'P@ssw0rd3', 3),    
(360,'Ahmed Sami', 01074593333,'Menia','1996-04-06', 'P@ssw0rd4', 4),       
(370,'Mohammed Elshafey', 0155458899,'Qena','1995-01-29', 'P@ssw0rd5', 5),  
(380,'Arwa Mohammed', 01254788888,'Mans','1994-05-10','P@ssw0rd6', 6),       
(390, 'Nadia Farouk', 01124787952,'Cairo','1994-12-03', 'P@ssw0rd7', 7)

insert into student
values  
(1001,'Mostafa Tharwat', 01254788888,'Mans','1999-05-10','P@ssw0rd1',1 ),   
(1002, 'Osama Mohammed', 01124787952,'Cairo','1998-12-03', 'P@ssw0rd2', 2),   
(1003,'Mai Nasser', 01001206890,'Alex','1997-02-19', 'P@ssw0rd3', 3),    
(1004,'Ola Sami', 01074593333,'Menia','1996-04-06', 'P@ssw0rd4', 4),       
(1005,'Fouad Elshafey', 0155458899,'Qena','1995-01-29', 'P@ssw0rd5', 5),  
(1006,'Marawan Mohammed', 01254788888,'Mans','1994-05-10','P@ssw0rd6', 6),       
(1007, 'Noha Maged', 01124787952,'Cairo','1994-12-03', 'P@ssw0rd7', 7),    
(1008,'Hana Yaseen', 01001206890,'Alex','1993-02-19', 'P@ssw0rd8', 8),       
(1009,'Medhat Mostafa', 01074593333,'Menia','1992-04-06', 'P@ssw0rd9', 9),    
(1010,'Ahmed Emad', 0155458899,'Qena','1991-01-29', 'P@ssw0rd11', 10),       
(1011,'Roaa Ibrahim', 01187415964,'Mans','1992-05-10','P@ssw0rd12', 10),    
(1012, 'Gehad Mohammed', 01124787952,'Cairo','1993-12-03', 'P@ssw0rd13', 8),  
(1013,'Mahmoud Mohamed', 01126989622,'Alex','1994-02-19', 'P@ssw0rd14', 6),     
(1014,'Salem Mostafa', 01074593333,'Menia','1995-04-06', 'P@ssw0rd15', 4),   
(1015,'Heba Emad', 01147856953,'Qena','1996-01-29', 'P@ssw0rd16', 2),
(1016,'Samr Yasser', 01254788888,'Mans','1997-05-10','P@ssw0rd1',1 ),   
(1017, 'Hady Mohammed', 01124787952,'Cairo','1998-12-03', 'P@ssw0rd2', 2),   
(1018,'Ahmed Nasser', 01001206890,'Alex','1999-02-19', 'P@ssw0rd3', 3),    
(1019,'Momen Sami', 01074593333,'Menia','1998-04-06', 'P@ssw0rd4', 4),       
(1020,'Mohammed Elshafey', 0155458899,'Qena','1997-01-29', 'P@ssw0rd5', 5),  
(1021,'Arwa Mohammed', 01254788888,'Mans','1996-05-10','P@ssw0rd6', 6),       
(1022, 'Nadia Farouk', 01124787952,'Cairo','1995-12-03', 'P@ssw0rd7', 7),    
(1023,'Hoda Nasser', 01001206890,'Alex','1994-02-19', 'P@ssw0rd8', 8),       
(1024,'Shimaa Mostafa', 01074593333,'Menia','1993-04-06', 'P@ssw0rd9', 9),    
(1025,'Mona Emad', 0155458899,'Qena','1992-01-29', 'P@ssw0rd11', 10),       
(1026,'Arwa Mohammed', 01187415964,'Mans','1991-05-10','P@ssw0rd12', 7),    
(1027, 'Nadia Mohammed', 01124787952,'Cairo','1992-12-03', 'P@ssw0rd13', 8),  
(1028,'Hoda Nasser', 01126989622,'Alex','1993-02-19', 'P@ssw0rd14', 6),     
(1029,'Shimaa Mostafa', 01074593333,'Menia','1994-04-06', 'P@ssw0rd15', 4),   
(1030,'Mona Emad', 01147856953,'Qena','1995-01-29', 'P@ssw0rd16', 2),     
(1031,'Mohammed Tharwat', 01254788888,'Mans','1999-05-10','P@ssw0rd1',1 ),   
(1032, 'Rami Mohammed', 01124787952,'Cairo','1998-12-03', 'P@ssw0rd2', 2),   
(1033,'Mohammed Nasser', 01001206890,'Alex','1997-02-19', 'P@ssw0rd3', 3),    
(1034,'Ahmed Sami', 01074593333,'Menia','1996-04-06', 'P@ssw0rd4', 4),       
(1035,'Mohammed Elshafey', 0155458899,'Qena','1995-01-29', 'P@ssw0rd5', 5),  
(1036,'Arwa Mohammed', 01254788888,'Mans','1994-05-10','P@ssw0rd6', 6),       
(1037, 'Nadia Farouk', 01124787952,'Cairo','1994-12-03', 'P@ssw0rd7', 7),    
(1038,'Hoda Nasser', 01001206890,'Alex','1993-02-19', 'P@ssw0rd8', 8),       
(1039,'Shimaa Mostafa', 01074593333,'Menia','1992-04-06', 'P@ssw0rd9', 9),    
(1040,'Mona Emad', 0155458899,'Qena','1991-01-29', 'P@ssw0rd11', 10),       
(1041,'Arwa Mohammed', 01187415964,'Mans','1992-05-10','P@ssw0rd12', 10),    
(1042, 'Nadia Mohammed', 01124787952,'Cairo','1993-12-03', 'P@ssw0rd13', 8),  
(1043,'Hoda Nasser', 01126989622,'Alex','1994-02-19', 'P@ssw0rd14', 6),     
(1044,'Shimaa Mostafa', 01074593333,'Menia','1995-04-06', 'P@ssw0rd15', 4),   
(1045,'Mona Emad', 01147856953,'Qena','1996-01-29', 'P@ssw0rd16', 2),
(1046,'Mohammed Tharwat', 01254788888,'Mans','1997-05-10','P@ssw0rd1',1 ),   
(1047, 'Rami Mohammed', 01124787952,'Cairo','1998-12-03', 'P@ssw0rd2', 2),   
(1048,'Mohammed Nasser', 01001206890,'Alex','1999-02-19', 'P@ssw0rd3', 3),    
(1049,'Ahmed Sami', 01074593333,'Menia','1998-04-06', 'P@ssw0rd4', 4),       
(1050,'Mohammed Elshafey', 0155458899,'Qena','1997-01-29', 'P@ssw0rd5', 5),  
(1051,'Arwa Mohammed', 01254788888,'Mans','1996-05-10','P@ssw0rd6', 6),       
(1052, 'Nadia Farouk', 01124787952,'Cairo','1995-12-03', 'P@ssw0rd7', 7),    
(1053,'Hoda Nasser', 01001206890,'Alex','1994-02-19', 'P@ssw0rd8', 8),       
(1054,'Shimaa Mostafa', 01074593333,'Menia','1993-04-06', 'P@ssw0rd9', 9),    
(1055,'Mona Emad', 0155458899,'Qena','1992-01-29', 'P@ssw0rd11', 10),       
(1056,'Arwa Mohammed', 01187415964,'Mans','1991-05-10','P@ssw0rd12', 7),    
(1057, 'Nadia Mohammed', 01124787952,'Cairo','1992-12-03', 'P@ssw0rd13', 8),  
(1058,'Hoda Nasser', 01126989622,'Alex','1993-02-19', 'P@ssw0rd14', 6),     
(1059,'Shimaa Mostafa', 01074593333,'Menia','1994-04-06', 'P@ssw0rd15', 4),   
(1060,'Mona Emad', 01147856953,'Qena','1995-01-29', 'P@ssw0rd16', 2)     


insert into questions
values 
(002 ,'Which should be used to obtain a remainder after dividing 3.14 by 2.1 ?','rem = fmod(3.14, 2.1)', 2,'mcq', 1),
(003 ,'Which is allowed in a variable name?','_ (underscore)', 2,'mcq', 1),
(004 ,'How would you round off a value from 1.66 to 2.0?','ceil(1.66)', 2,'mcq', 1),
(005 ,'By default a real number is treated as a..','double', 2,'mcq', 1),
(006 ,'When we mention the prototype of a function?','Declaring', 2,'mcq', 1),
(007 ,'A long double can be used if range of a double is not enough to accommodate a real number.','True', 2,'T/F', 1),
(008 ,'A float is 4 bytes wide, whereas a double is 8 bytes wide.','True', 2,'T/F', 1),
(009 ,'When we mention the prototype of a function?','False', 2,'T/F', 1),

(010 ,'If the definition of the external variable occurs in the source file before its use in a particular function, then there is no need for an extern declaration in the function.','True', 2,'T/F', 1),
(011 ,'Size of short integer and long integer can be verified using the sizeof() operator', 'True',2,'T/F' ,1),
(012 ,'In a file contains the line "I am a boy\r\n" then on reading this line into the array str using fgets(). What will str contain?','I am a boy\n\0', 2,'mcq', 1),
insert into questions values
(013 ,'Which of the following correctly shows the hierarchy of arithmetic operations in C?','/ * + -', 2,'mcq', 1),
(014 ,'Which of the following is the correct usage of conditional operators used in C?','max = a>b ? a>c?a:c:b>c?b:c', 2,'mcq', 1),
(015 ,'Which bitwise operator is suitable for turning off a particular bit in a number?','& operator', 2,'mcq', 1),
(016 ,'Which bitwise operator is suitable for turning on a particular bit in a number?','| operator', 2,'mcq', 1)

insert into questions values
(17,'Which of the following is not a valid SQL type?','DECIMAL', 2,'mcq', 2),
(18,'Which of the following is not a DDL command?','UPDATE', 2,'mcq', 2),
(19,'Which statement is used to delete all rows in a table without having the action logged?','TRUNCATE', 2,'mcq', 2),
(20,'What operator tests column for absence of data','IS NULL Operator', 2,'mcq', 2),
(21,'In which of the following cases a DML statement is not executed?','When a table is deleted.',2 ,'mcq', 2),
(22, 'Which of the following is also called an INNER JOIN?','EQUI JOIN', 2 ,'mcq', 2),
(23, '_______ clause creates temporary relation for the query on which it is defined.','WITH', 2 ,'mcq', 2),
(24, '_________ command makes the updates performed by the transaction permanent in the database?','COMMIT', 2 ,'mcq', 2),
(25, 'Which command is used to change the definition of a table in SQL?','ALTER', 2 ,'mcq', 2),
(26, 'Which statement is true regarding procedures?','They include procedural and SQL statements.', 2 ,'mcq', 2),
(27, 'A SELECT statement within another SELECT statement and enclosed in square brackets ([...]) is called a subquery.','False', 2,'T/F', 2),
(28, 'A dynamic view is one whose contents materialize when referenced','True', 2,'T/F', 2),
(29, 'SUM, AVG, MIN, and MAX can only be used with numeric columns','False', 2,'T/F', 2),
(30, 'Most companies keep at least two versions of any database they are using','True', 2,'T/F', 2),
insert into questions values
(31, 'Scalar aggregate are multiple values returned from an SQL query that includes an aggregate function','False',2 ,'T/F', 2)
----------------------------------

insert into questions values
(197,'Which of the following is not a valid SQL type?','DECIMAL', 2,'mcq', 17),
(198,'Which of the following is not a DDL command?','UPDATE', 2,'mcq', 17),
(199,'Which statement is used to delete all rows in a table without having the action logged?','TRUNCATE', 2,'mcq', 17),
(200,'What operator tests column for absence of data','IS NULL Operator', 2,'mcq', 17),
(201,'In which of the following cases a DML statement is not executed?','When a table is deleted.',2 ,'mcq', 17),
(202, 'Which of the following is also called an INNER JOIN?','EQUI JOIN', 2 ,'mcq', 17),
(203, '_______ clause creates temporary relation for the query on which it is defined.','WITH', 2 ,'mcq', 17),
(204, '_________ command makes the updates performed by the transaction permanent in the database?','COMMIT', 2 ,'mcq', 17),
(205, 'Which command is used to change the definition of a table in SQL?','ALTER', 2 ,'mcq', 17),
(206, 'Which statement is true regarding procedures?','They include procedural and SQL statements.', 2 ,'mcq', 17),
(207, 'A SELECT statement within another SELECT statement and enclosed in square brackets ([...]) is called a subquery.','False', 2,'T/F', 17),
(208, 'A dynamic view is one whose contents materialize when referenced','True', 2,'T/F', 17),
(209, 'SUM, AVG, MIN, and MAX can only be used with numeric columns','False', 2,'T/F', 17),
(210, 'Most companies keep at least two versions of any database they are using','True', 2,'T/F', 17),
(211, 'Scalar aggregate are multiple values returned from an SQL query that includes an aggregate function','False',2 ,'T/F', 17)


drop table question_bank


insert into question_bank
values
(1, 'C#', 1),(2, 'XML', 2),
(3, 'DB Fundamentals', 3), (4, 'DB Adminstartion', 4), (5, 'SQL BI', 5),
(6, 'Cloud Azure', 6), (7, 'Data Mining', 7),
(8, 'Power BI', 8), (9, 'Tableau', 9), (10, 'Big Data', 10), 
(11, 'Python', 11), (12, 'Comm Skills', 12),
(13, 'Presentation Skills', 13), 
(14, 'Interviewing Skills', 14), (15, 'Freelancing', 15),
(16, 'C++', 16),(17,'Linux', 17),(18, 'SWE', 18),
(19, 'Web Tech.', 19),(20, 'SW Testing&Tech', 20),
(21, 'ISTQB', 21), (22, 'Imp. Testing', 22), (23, 'Test Reports', 23), 
(24, 'Intro. Web Tech.', 24),
(25, 'Java', 25), (26, 'SW Config. Manager', 26),(27, 'RedHat Admin.', 27), 
(28, 'HTML5 & CSS3', 28),(29, 'NodeJS', 29), (30, 'Version Control', 30),
(31, 'IoT LabDevices', 31),(32, 'IoT ValueChain', 32),(33, 'IoT App Dev', 33),
(34, 'JavaScript', 34),(35, 'jQuery', 35),(36, 'WebDesign Fund.', 36), (37, 'Bootstrap', 37),
(38, 'UI/UX Design', 38),(39, 'MongoDB', 39), 
(40, 'Typescript', 40),(41, 'Angular', 41),(42, 'React.js', 42), (43, 'JavaScrtipt DP', 43),
(44, 'Unit Testing', 44),(45, 'Secure Coding', 45),
(46, 'WebTooling & Opt.', 46), (47, 'CloudPlat. JS', 47),(48, 'OS Fund.', 48), 
(49, 'Windows/Linux Fun.', 49),(50, 'Networks Fund.', 50), (51, 'C', 51),
(52, 'DS & Algo.', 52), (53, 'PaloAlto CyberSec Found.', 53),
(54, 'PaloAlto CyberSec Essen.', 54), (55, 'PaloAlto CyberSec Gateway', 55),
(56, 'MS Windows Administration', 56), (57, 'Cisco Firepower Next Generation Firewall', 57),
(58, 'FortiGate Security', 58), (59, 'Embedded Systems Concepts', 59),
(60, 'Embedded Systems Con.', 60), (61, 'ES Development Cycle ', 61), 
(62, '8 Bit AVR MicrocontrollerInterfacing', 62), (63, 'RealTime OS', 63), 
(64, '32 Bit ARM Microcontroller', 64), (65, 'ES Applications on ARMProcessor', 65), 
(66, 'Intro To Tooling', 66), (67, 'Automotive Bus Technology', 67),
(68, 'Introduction to AUTOSAR', 68)


insert into instructor_course
values
( 1,10 ),(2 , 20),
(3 ,30 ),(4 , 40),(5 ,50 ),(6 ,60 ),(7 ,70 ),
( 8,80 ),(9 ,90 ),(10 , 100),(11 ,110 ),( 12, 120),(13 ,130 ),(14 ,140 ),
(15 ,150 ),(16 ,160 ),( 17, 170),(18 , 180),(19 , 190),(20 , 200),( 21,210 ),
(22 ,220 ),( 23,230),(24 ,240 ),(25 , 250),(26 ,260 ),( 27, 270),(28 ,280 ),(29 ,290 ),
(30 ,300 ),(31 ,310 ),( 32, 320),(33 , 330),(34 , 340),(35 , 350),( 36,360 ),
(37, 370), (38, 380), (39, 390) 

 insert into student_course
 values
 (1, 1001),(1, 1002),(1, 1003),(1, 1004),(1, 1005),(1, 1006),(1, 1007),(1, 1008),(1,1009),(1,1010 ),
 (2, 1011),(2, 1012),(2, 1013),(2,1014 ),(2, 1015),(2, 1016),(2, 1017),(2, 1018),(2, 1019),(2,1020 ),
 (3, 1021),(3, 1022),(3, 1023),(3, 1024),(3, 1025),(4,1026 ),(5, 1027),(6,1028 ),(7,1029 ),(7, 1030),(7, 1031),
 (7, 1032),(7, 1033),(7,1034 ),(7,1035 ),(7,1036 ),(8,1037 ),(8, 1038),(8, 1039),(8, 1040),(9, 1041),(9, 1042),
 (9, 1043),(9, 1045),(10,1046 ),(10,1047 ),(10, 1048),(11, 1049),(11, 1050),(11, 1051),(11,1052 ),(11,1053 ),(11,1054 ),
 (12, 1056),(12, 1057),(13, 1058),(13, 1059),(13, 1060),(13, 1020),(13, 1021),

 (14, 1022),
 (15, 1023),(16, 1024),(17, 1025),(18, 1026),(19, 1027),(20, 1028),(21, 1029),(22,1030),(23,1031 ),
 (24, 1032),(25, 1033),(26, 1034),(27,1035 ),(28, 1036),(29, 1037),(30, 1038),(31, 1039),(32, 1040),(33,1041 ),
 (34, 1042),(35, 1043),(37, 1045),(38, 1046),(39,1047 ),(40, 1048),(41,1049 ),(42,1050 ),(43, 1051),(44, 1052),
 (45, 1053),(46, 1054),(47,1055 ),(48,1056 ),(49,1057 ),(50,1058 ),(51, 1059),(52, 1060),(5, 1001),(54, 1002),(55, 1003),
 (56, 1004),(57, 1005),(58,1006 ),(59,1007 ),(60, 1008),(61, 1009),(62, 1010),(63, 1011),(64,1012 ),(65,1013 ),(66,1014 ),
 (67, 1015),(68, 1016),(1, 1017),(2, 1018),(3, 1019),(4, 1020),(5, 1021)
 
 
 insert into department_course
 values
 (1,1), (2,1), (3, 1), (4, 1), (5, 1), (6, 1),(7, 1),
 (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1),
 (14, 1), (15, 1), (16, 4), (17, 4), (18, 4), (19, 4), (20, 4),
 (21, 4), (22, 4), (23, 4), (24, 4), (25, 4), (26, 4), (27, 8),
 (28, 8), (29, 8), (30, 8), (31, 8), (32, 8), (33, 8),
 (34, 2), (35, 2), (36, 2), (37, 2), (38, 2), (39, 2), (40, 2), (41, 2),
 (42, 2), (43, 2), (44, 2), (45, 2), (46, 2), (47, 2), (48, 11), (49,2 ),
 (50,2 ), (51, 2), (52, 2),(53, 6), (54, 6) , (55, 6), (56, 6), (57, 6), 
 (58, 6), (59, 7), (60, 7), (61, 7), (62, 7), (63, 7), (64, 7), (65, 7),  (66, 7),
 (67, 7), (68, 7)
