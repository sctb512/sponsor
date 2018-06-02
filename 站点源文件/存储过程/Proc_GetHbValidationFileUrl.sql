USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetHbValidationFileUrl]    Script Date: 2016/10/25 10:00:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetHbValidationFileUrl]
(
@id int
)
as select top 1 * from tb_validationstate,tb_hbfilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_hbfilevalidation.validationstateid=tb_validationstate.id and hbstate=2
order by tb_hbfilevalidation.id desc

