USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetHfValidationFileUrl]    Script Date: 2016/10/25 10:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetHfValidationFileUrl]
(
@id int
)
as select top 1 * from tb_validationstate,tb_hffilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_hffilevalidation.validationstateid=tb_validationstate.id and hfstate=2
order by tb_hffilevalidation.id desc

