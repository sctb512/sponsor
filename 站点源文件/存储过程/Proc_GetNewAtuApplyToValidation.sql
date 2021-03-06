USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetNewAtuApplyToValidation]    Script Date: 2016/10/24 10:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetNewAtuApplyToValidation]
(
@id int
)
as
select tb_frimsupportinfo.id,eventname,money,tb_stuapplysupporttab.owner,tb_studentinfo.username from tb_frimsupportinfo,tb_stuapplysupporttab,tb_studentinfo,tb_validationstate
where tb_frimsupportinfo.owner=@id and tb_frimsupportinfo.state=1 and tb_stuapplysupporttab.state=1 and tb_stuapplysupporttab.frimsupporttabid=tb_frimsupportinfo.id and tb_stuapplysupporttab.owner=tb_studentinfo.id and tb_validationstate.frimsupporttabid=tb_frimsupportinfo.id
and (qsstate=2 or cdstate=2 or hfstate=2 or hbstate=2 or zbstate=2 or jpstate=2 or wlstate=2 or bkstate=2)