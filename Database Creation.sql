use OnlineExaminationSystem

create table instructor 
(
	inst_id tinyint primary key,
	inst_name nvarchar(50),
	inst_phone varchar(11),
	inst_address nvarchar(100),
	inst_dob date,
	inst_age as (year(getdate())-year(inst_dob)),
	inst_pass varchar(15),
	dept_id tinyint,
)

create table department 
(
	dept_id tinyint primary key,
	dept_name varchar(20),
	mang_id tinyint,
)

alter table instructor add
	constraint c1 foreign key (dept_id) references department (dept_id)
			on delete set NULL on update cascade




create table student (
	st_id smallint primary key,
	st_name nvarchar(50),
	st_phone varchar(11),
	st_address nvarchar(100),
	st_dob date,
	st_age as (year(getdate())-year(st_dob)),
	st_pass varchar(15),
	dept_id tinyint,
)

alter table student add
	constraint c2 foreign key (dept_id) references department (dept_id)
			on delete set NULL on update cascade

create table course (
	crs_id tinyint primary key,
	crs_name varchar(20),
)

create table student_course (
	crs_id tinyint,
	st_id smallint,
	constraint c3 primary key (crs_id,st_id),
	constraint c4 foreign key (crs_id) references course (crs_id)
			on delete cascade on update cascade,
	constraint c5 foreign key (st_id) references student (st_id)
			on delete cascade on update cascade
)

create table department_course (
	crs_id tinyint,
	dept_id tinyint,
	constraint c6 primary key (crs_id,dept_id),
	constraint c7 foreign key (crs_id) references course (crs_id)
			on delete cascade on update cascade,
	constraint c8 foreign key (dept_id) references department (dept_id)
			on delete cascade on update cascade
)

create table course_topic (
	crs_id tinyint,
	topic varchar(100),
	constraint c9 primary key (crs_id,topic),
	constraint c10 foreign key (crs_id) references course (crs_id)
			on delete cascade on update cascade
)

create table instructor_course (
	crs_id tinyint,
	inst_id tinyint,
	constraint c11 foreign key (crs_id) references course (crs_id)
			on delete cascade on update cascade,
	constraint c12 foreign key (inst_id) references instructor (inst_id)
			on delete cascade on update cascade
)

--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
create table question_bank (
	qbank_id tinyint primary key,
	qnak_name varchar(50),
	crs_id tinyint,
	constraint c13 foreign key (crs_id) references course (crs_id)
			on delete no action on update cascade,
)

create table questions (
	quest_id int primary key,
	body varchar(MAX),
	correct_answer varchar(MAX),
	score tinyint,
	qtype varchar(3),
	qbank_id tinyint,
	constraint c14 check(qtype in ('T/F','MCQ')),
	constraint c15 foreign key (qbank_id) references question_bank (qbank_id)
			on delete no action on update cascade,
)
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

create table mcq_options (
	option_id int primary key,
	option1 varchar(MAX),
	option2 varchar(MAX),
	option3 varchar(MAX),
	option4 varchar(MAX),
	quest_id int,
	constraint c16 foreign key (quest_id) references questions (quest_id)
			on delete cascade on update cascade,
)

create table exam (
	exam_id int primary key,
	exam_date date,
	inst_id tinyint,
	constraint c17 foreign key (inst_id) references instructor (inst_id)
			on delete no action on update cascade,
)

create table student_exam_result (
	exam_id int,
	st_id smallint,
	crs_id tinyint,
	result tinyint,
	constraint c18 primary key (exam_id,st_id,crs_id),
	constraint c19 foreign key (exam_id) references exam (exam_id)
			on delete no action on update cascade,
	constraint c20 foreign key (crs_id) references course (crs_id)
			on delete no action on update cascade
)




create table student_exam_answer (
	exam_id int,
	st_id smallint,
	quest_id int,
	st_ans varchar(200),
	mark tinyint,
	constraint c21 primary key (exam_id,st_id,quest_id),
	constraint c22 foreign key (exam_id) references exam (exam_id)
			on delete no action on update cascade,
	constraint c23 foreign key (quest_id) references questions (quest_id)
			on delete no action on update cascade
)


create table exam_inst_question (
	exam_id int,
	inst_id tinyint,
	quest_id int,
	constraint c24 primary key (exam_id,inst_id,quest_id),
	constraint c25 foreign key (exam_id) references exam (exam_id)
			on delete no action on update cascade,
	constraint c26 foreign key (quest_id) references questions (quest_id)
			on delete no action on update cascade
)



-- instructor, department | exam_inst_question trigger
create trigger InstructorUpdate
on instructor
for update
as
   begin
	update department 
	set mang_id=i.inst_id
	from instructor ins join inserted i 
	on i.inst_id=ins.inst_id 
	update exam_inst_question
	set inst_id=i.inst_id
	from instructor ins join inserted i 
	on i.inst_id=ins.inst_id
   end

drop trigger InstructorUpdate

-- student, student_exam_result | student_exam_answer trigger
   create trigger StudentUpdate
on student
for update
as
   begin
	update student_exam_result 
	set st_id=i.st_id
	from student s join inserted i 
	on i.st_id=s.st_id
	update student_exam_answer
	set st_id=i.st_id
	from student s join inserted i 
	on i.st_id=s.st_id
   end

drop trigger StudentUpdate


-- student, student_exam_result | student_exam_answer trigger test
update instructor
set inst_id = 2
where inst_name = 'a'
----------------------------------------

-- student, student_exam_result | student_exam_answer trigger test 
update student
set st_id = 2
where st_name = 'a'
----------------------------------------EDIT 3/11

alter table exam_inst_question 
add crs_id tinyint 

-- course, exam_inst_question trigger
create trigger CourseUpdate
on course
for update
as
   begin
	update exam_inst_question 
	set crs_id=i.crs_id
	from course c join inserted i 
	on i.crs_id=c.crs_id
   end
