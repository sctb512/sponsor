USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetOldAtuApplyToValidation]    Script Date: 2016/10/24 10:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetOldAtuApplyToValidation]
(
@id int
)
as
select tb_frimsupportinfo.id,eventname,money,tb_stuapplysupporttab.owner,tb_studentinfo.username from tb_frimsupportinfo,tb_stuapplysupporttab,tb_studentinfo,tb_validationstate
where tb_frimsupportinfo.owner=@id and tb_frimsupportinfo.state=1 and tb_stuapplysupporttab.state=1 and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id and tb_stuapplysupporttab.owner=tb_studentinfo.id and tb_validationstate.frimsupporttabid=tb_frimsupportinfo.id
and (qsstate!=2 and cdstate!=2 and hfstate!=2 and hbstate!=2 and zbstate!=2 and jpstate!=2 and wlstate!=2 and bkstate!=2)