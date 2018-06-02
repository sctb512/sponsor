USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetWlValidationFileUrl]    Script Date: 2016/10/25 10:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetWlValidationFileUrl]
(
@id int
)
as select top 1 * from tb_validationstate,tb_wlfilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_wlfilevalidation.validationstateid=tb_validationstate.id and wlstate=2
order by tb_wlfilevalidation.id desc

