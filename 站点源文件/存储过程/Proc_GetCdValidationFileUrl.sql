USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetCdValidationFileUrl]    Script Date: 2016/10/25 9:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetCdValidationFileUrl]
(
@id int
)
as select top 1 * from tb_validationstate,tb_cdfilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_cdfilevalidation.validationstateid=tb_validationstate.id and cdstate=2
order by tb_cdfilevalidation.id desc

