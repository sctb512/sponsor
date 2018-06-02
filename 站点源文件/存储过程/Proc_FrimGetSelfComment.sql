USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_FrimGetSelfComment]    Script Date: 2016/10/31 16:07:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_FrimGetSelfComment]
(
@id int
)
as
select tb_stucomment.id,tb_studentinfo.username,score,commenttext,tb_stuapplysupporttab.eventname,commenttime from tb_stucomment,tb_stuapplysupporttab,tb_studentinfo
where frimid=@id and tb_stucomment.stuapplysupportid=tb_stuapplysupporttab.id and tb_stuapplysupporttab.owner=tb_studentinfo.id