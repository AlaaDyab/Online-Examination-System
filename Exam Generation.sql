
use OnlineExaminationSystem
select * from student_exam_answer

----------------=================== last Edit 7/11/ @1.30 Pm
alter proc ExamGeneration @ExamQnumber  int,@CrsName varchar(20), @NOMCQ int, @NOTF int  
as 
begin try
declare @count int 

set @count=(select max([dbo].[exam].exam_id) from [dbo].[exam])+1
--unlogical check of select 
	if (exists (select exam_id from exam where exam_id=@count) and exists(select crs_id from Course where crs_name=@CrsName))
		select 'The exam id already exists '
	else
		begin
			if (@NOMCQ+@NOTF) =@ExamQnumber
				begin
					declare @CrsId tinyint
					select @CrsId=crs_id from course where crs_name=@CrsName
					declare @InstId tinyint
					select @InstId=inst_id from instructor_course where crs_id=@CrsId					
					insert into Exam (exam_id,exam_date,inst_id)
					values (@count,getdate(),@InstId)
					insert into exam_inst_question (exam_id,crs_id,inst_id,quest_id)
						select top(@NOMCQ) e.exam_id,ic.crs_id,e.inst_id,quest_id
						from exam e inner join instructor i on i.inst_id=e.inst_id
									inner join instructor_course ic on i.inst_id=ic.inst_id
									inner join course c on c.crs_id=ic.crs_id
									inner join question_bank qb on c.crs_id=qb.crs_id
									inner join questions q on qb.qbank_id=q.qbank_id
						where q.qtype='mcq' and ic.crs_id=@CrsId and e.exam_id=@count
						order by newid()

						insert into exam_inst_question (exam_id,crs_id,inst_id,quest_id)
						select top(@NOTF) e.exam_id,ic.crs_id,e.inst_id,quest_id
							from exam e inner join instructor i on i.inst_id=e.inst_id
										inner join instructor_course ic on i.inst_id=ic.inst_id
										inner join course c on c.crs_id=ic.crs_id
										inner join question_bank qb on c.crs_id=qb.crs_id
										inner join questions q on qb.qbank_id=q.qbank_id
							where qtype='t/f' and ic.crs_id=@CrsId and e.exam_id=@count
							order by newid()

							select body,qtype 
								from exam_inst_question eiq inner join questions q on q.quest_id=eiq.quest_id
								where eiq.exam_id=@count
				end
			else
				select 'Number of questions must be 5'
	 	end
end try
begin catch 
DECLARE @msg int 
		PRINT 'Error occured that is'
		Set @msg=(SELECT ERROR_NUMBER())
		print @msg+2786;

end catch
go

ExamGeneration 6,'DB Fundamentals',3,3
--------------------------------========EXaam answerss
alter procedure StudentAnswer @ExamId int ,@StId int ,@QuestId int ,@Answer varchar(200) 
with encryption
as
	declare @ModelAnswer varchar(200) 
	declare @Mark int
	begin try
		select @ModelAnswer= correct_answer from questions where quest_id=@QuestId
		if(@Answer=@ModelAnswer)
				set @Mark=(select score from questions where quest_id=@QuestId)
		else
			set @mark=0
		if ( exists(select st_id from student where st_id=@StId  ) and
			 exists(select exam_id from exam where exam_id=@ExamId  ) )
			begin
				insert into student_exam_answer (exam_id,st_id,st_ans,mark,quest_id)
				values( @ExamId,@StId,@Answer,@Mark,@QuestId)
			end
		else 
		  select 'some thing wrong'
	end try
	begin catch
		DECLARE @msg int 
		PRINT 'Error occured that is'
		Set @msg=(SELECT ERROR_NUMBER())
		print @msg+2786;
	end catch

	StudentAnswer 6,1026,101,'When a table is deleted.'
-----------------------------=======exam correction 


create procedure ExamCorrection @ExamId int ,@StId int , @CrsId int
 as
	begin try
		if ( exists(select st_id from student where st_id=@StId) and
			 exists(select exam_id from exam where exam_id=@ExamId) )
			begin
				declare @sum int
				set @sum=( select sum(mark) from student_exam_answer where exam_id=@ExamId and st_id=@StId)  
				insert into student_exam_result (exam_id,st_id,crs_id,result) values(@ExamId,@StId,@CrsId,@sum)
			end
		else
			begin select 'error' end
	end try
	begin catch
		DECLARE @msg int 
		PRINT 'Error occured that is'
		Set @msg=(SELECT ERROR_NUMBER())
		print @msg+2786;
	end catch
ExamCorrection 6,1026,6

------------------------

alter proc ExamGeneration @ExamQnumber tinyint, @CrsName varchar(20), @NOMCQ tinyint, @NOTF tinyint
as 
begin try
declare @count int 

set @count=(select max([dbo].[exam].exam_id) from [dbo].[exam])+1
	if (exists (select exam_id from exam where exam_id=@count) and exists(select crs_id from Course where crs_name=@CrsName))
		select 'The exam id already exists '
	else
		begin
			if (@NOMCQ+@NOTF) =@ExamQnumber
				begin
					declare @CrsId tinyint
					select @CrsId=crs_id from course where crs_name=@CrsName
					declare @InstId tinyint
					select @InstId=inst_id from instructor_course where crs_id=@CrsId					
					insert into Exam (exam_id,exam_date,inst_id)
					values (@count,getdate(),@InstId)
					insert into exam_inst_question (exam_id,crs_id,inst_id,quest_id)
						select top(@NOMCQ) e.exam_id,ic.crs_id,e.inst_id,quest_id
						from exam e inner join instructor i on i.inst_id=e.inst_id
									inner join instructor_course ic on i.inst_id=ic.inst_id
									inner join course c on c.crs_id=ic.crs_id
									inner join question_bank qb on c.crs_id=qb.crs_id
									inner join questions q on qb.qbank_id=q.qbank_id
						where q.qtype='mcq' and ic.crs_id=@CrsId and e.exam_id=@count
						order by newid()

						insert into exam_inst_question (exam_id,crs_id,inst_id,quest_id)
						select top(@NOTF) e.exam_id,e.inst_id,ic.crs_id,quest_id
							from exam e inner join instructor i on i.inst_id=e.inst_id
										inner join instructor_course ic on i.inst_id=ic.inst_id
										inner join course c on c.crs_id=ic.crs_id
										inner join question_bank qb on c.crs_id=qb.crs_id
										inner join questions q on qb.qbank_id=q.qbank_id
							where qtype='t/f' and ic.crs_id=@CrsId and e.exam_id=@count
							order by newid()

							select body,qtype 
								from exam_inst_question eiq inner join questions q on q.quest_id=eiq.quest_id
								where eiq.exam_id=@count
				end
			else
				select 'Number of questions must be 5'
	 	end
end try
begin catch 
DECLARE @msg int 
		PRINT 'Error occured that is'
		Set @msg=(SELECT ERROR_NUMBER())
		print @msg+2786;

end catch

ExamGeneration 4,'C#',2,2


-------------------
alter proc testingpython @id int, @name nvarchar(50)
as 
	select* from student where st_id =@id and st_name=@name
	

testingpython 1002,'Osama Mohammed'

-----------------Exanm generation test --------------

create proc ExamGenerationtest @ExamQnumber  int, @NOMCQ int, @NOTF int  
as 
begin try
declare @CrsName varchar(20) ='c#'

declare @count int 

set @count=(select max([dbo].[exam].exam_id) from [dbo].[exam])+1
--unlogical check of select 
	if (exists (select exam_id from exam where exam_id=@count) and exists(select crs_id from Course where crs_name=@CrsName))
		select 'The exam id already exists '
	else
		begin
			if (@NOMCQ+@NOTF) =@ExamQnumber
				begin
					declare @CrsId tinyint
					select @CrsId=crs_id from course where crs_name=@CrsName
					declare @InstId tinyint
					select @InstId=inst_id from instructor_course where crs_id=@CrsId					
					insert into Exam (exam_id,exam_date,inst_id)
					values (@count,getdate(),@InstId)
					insert into exam_inst_question (exam_id,crs_id,inst_id,quest_id)
						select top(@NOMCQ) e.exam_id,ic.crs_id,e.inst_id,quest_id
						from exam e inner join instructor i on i.inst_id=e.inst_id
									inner join instructor_course ic on i.inst_id=ic.inst_id
									inner join course c on c.crs_id=ic.crs_id
									inner join question_bank qb on c.crs_id=qb.crs_id
									inner join questions q on qb.qbank_id=q.qbank_id
						where q.qtype='mcq' and ic.crs_id=@CrsId and e.exam_id=@count
						order by newid()

						insert into exam_inst_question (exam_id,crs_id,inst_id,quest_id)
						select top(@NOTF) e.exam_id,ic.crs_id,e.inst_id,quest_id
							from exam e inner join instructor i on i.inst_id=e.inst_id
										inner join instructor_course ic on i.inst_id=ic.inst_id
										inner join course c on c.crs_id=ic.crs_id
										inner join question_bank qb on c.crs_id=qb.crs_id
										inner join questions q on qb.qbank_id=q.qbank_id
							where qtype='t/f' and ic.crs_id=@CrsId and e.exam_id=@count
							order by newid()

							select body,qtype 
								from exam_inst_question eiq inner join questions q on q.quest_id=eiq.quest_id
								where eiq.exam_id=@count
				end
			else
				select 'Number of questions must be 5'
	 	end
end try
begin catch 
DECLARE @msg int 
		PRINT 'Error occured that is'
		Set @msg=(SELECT ERROR_NUMBER())
		print @msg+2786;

end catch
go


ExamGenerationtest 8, 4,4 


=============================


----------------=================== last Edit 7/11/ @1.30 Pm
create proc ExamGenerationtt @ExamQnumber  int,@CrsName varchar(20), @NOMCQ int, @NOTF int  
as 

declare @count int 

set @count=(select max([dbo].[exam].exam_id) from [dbo].[exam])+1
--unlogical check of select 
	if (exists (select exam_id from exam where exam_id=@count) and exists(select crs_id from Course where crs_name=@CrsName))
		select 'The exam id already exists '
	else
		begin
			if (@NOMCQ+@NOTF) =@ExamQnumber
				begin
					declare @CrsId tinyint
					select @CrsId=crs_id from course where crs_name=@CrsName
					declare @InstId tinyint
					select @InstId=inst_id from instructor_course where crs_id=@CrsId					
					insert into Exam (exam_id,exam_date,inst_id)
					values (@count,getdate(),@InstId)
					insert into exam_inst_question (exam_id,crs_id,inst_id,quest_id)
						select top(@NOMCQ) e.exam_id,ic.crs_id,e.inst_id,quest_id
						from exam e inner join instructor i on i.inst_id=e.inst_id
									inner join instructor_course ic on i.inst_id=ic.inst_id
									inner join course c on c.crs_id=ic.crs_id
									inner join question_bank qb on c.crs_id=qb.crs_id
									inner join questions q on qb.qbank_id=q.qbank_id
						where q.qtype='mcq' and ic.crs_id=@CrsId and e.exam_id=@count
						order by newid()

						insert into exam_inst_question (exam_id,crs_id,inst_id,quest_id)
						select top(@NOTF) e.exam_id,ic.crs_id,e.inst_id,quest_id
							from exam e inner join instructor i on i.inst_id=e.inst_id
										inner join instructor_course ic on i.inst_id=ic.inst_id
										inner join course c on c.crs_id=ic.crs_id
										inner join question_bank qb on c.crs_id=qb.crs_id
										inner join questions q on qb.qbank_id=q.qbank_id
							where qtype='t/f' and ic.crs_id=@CrsId and e.exam_id=@count
							order by newid()

							select body,qtype 
								from exam_inst_question eiq inner join questions q on q.quest_id=eiq.quest_id
								where eiq.exam_id=@count
				end
			else
				select 'Number of questions must be 5'
	 	end


ExamGenerationtt 8,'DB Fundamentals',4,4