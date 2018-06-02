USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetJpValidationFileUrl]    Script Date: 2016/10/25 10:01:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetJpValidationFileUrl]
(
@id int
)
as select top 1 * from tb_validationstate,tb_jpfilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_jpfilevalidation.validationstateid=tb_validationstate.id and jpstate=2
order by tb_jpfilevalidation.id desc

