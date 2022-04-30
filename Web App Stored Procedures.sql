alter proc ExamGeneration @ExamQnumber tinyint out, @CrsName varchar(20), @NOMCQ tinyint, @NOTF tinyint
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
								where eiq.exam_id=@count order by q.qtype
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

ExamGeneration 10,'XML',6,4







delete from student_exam_answer

alter procedure StudentAnswer @CrsName varchar(50), @StId smallint ,@Qbody varchar(500),  @Answer varchar(200)
with encryption
as
		declare @CrsId tinyint
		declare @ExamId tinyint
		declare @QuestId int
	begin try
		select @CrsId = crs_id from course where crs_name=@CrsName
		select @ExamId = exam_id from exam_inst_question where crs_id = @CrsId
		select @QuestId = quest_id from questions where body=@Qbody

		declare @ModelAnswer varchar(200) 
		declare @Mark tinyint

			select @ModelAnswer= correct_answer from questions where quest_id=@QuestId
				if(@Answer=@ModelAnswer)
					set @Mark=(select score from questions where quest_id=@QuestId)
				else
					set @mark=0

			if (exists(select st_id from student where st_id=@StId) and exists(select exam_id from exam where exam_id=@ExamId  ) )
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




	alter procedure ExamMCQDisplay @CrsName varchar(20)
with encryption
as
	begin try
		if exists(select crs_name from course where crs_name=@CrsName)
			begin
				declare @CrsId tinyint
				select @CrsId = crs_id from course where crs_name=@CrsName
				select q.quest_id,q.body,mc.option1,mc.option2,mc.option3,mc.option4
				from exam_inst_question eiq inner join questions q on eiq.quest_id = q.quest_id
				inner join mcq_options mc on q.quest_id=mc.quest_id
				where eiq.crs_id=@CrsId and q.qtype='MCQ'			
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


alter procedure ExamTFDisplay @CrsName varchar(20)
with encryption
as
	begin try
		if exists(select crs_name from course where crs_name=@CrsName)
			begin
				declare @CrsId tinyint
				select @CrsId = crs_id from course where crs_name=@CrsName
				select q.quest_id,q.body
				from exam_inst_question eiq inner join questions q on eiq.quest_id = q.quest_id
				inner join mcq_options mc on q.quest_id=mc.quest_id
				where eiq.crs_id=@CrsId and q.qtype='T/F'			
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

ExamMCQDisplay 'XML'

ExamTFDisplay 'XML'



alter procedure ExamCorrection @CrsName varchar(50), @StId int 
 as
	begin try
		declare @CrsId int
		declare @ExamId int
		select @CrsId = crs_id from course where crs_name=@CrsName
		select @ExamId = exam_id from exam_inst_question where crs_id=@CrsId
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


