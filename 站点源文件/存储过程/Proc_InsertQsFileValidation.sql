USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertQsFileValidation]    Script Date: 2016/10/23 15:47:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_InsertQsFileValidation]
(
@id int,
@filepath nvarchar(MAX)
)
as
insert into tb_qsfilevalidation(fileurl ,validationstateid) select @filepath,(select tb_validationstate.id from tb_validationstate
where tb_validationstate.frimsupporttabid=@id)

update tb_validationstate
set qsstate=2
where frimsupporttabid=@id