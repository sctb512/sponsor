USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetZbValidationFileUrl]    Script Date: 2016/10/25 10:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetZbValidationFileUrl]
(
@id int
)
as select top 1 * from tb_validationstate,tb_zbfilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_zbfilevalidation.validationstateid=tb_validationstate.id and zbstate=2
order by tb_zbfilevalidation.id desc

