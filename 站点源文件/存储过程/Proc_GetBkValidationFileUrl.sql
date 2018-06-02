USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetBkValidationFileUrl]    Script Date: 2016/10/25 9:57:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetBkValidationFileUrl]
(
@id int
)
as select top 1 * from tb_validationstate,tb_bkfilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_bkfilevalidation.validationstateid=tb_validationstate.id and bkstate=2
order by tb_bkfilevalidation.id desc

