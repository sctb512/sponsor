USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_FrimGetStuApplyTab]    Script Date: 2016/10/19 16:19:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_FrimGetStuApplyTab]
(
@id int
)
as
select a.id,eventname,i.username,a.owner,eventdate,submitdate,introduction,appendix,frimsupporttabid,supportbookurl from tb_stuapplysupporttab a,tb_studentinfo i,tb_frimsupportinfo f,tb_frimbasicinfo
where a.state=0 and a.owner=i.id and f.id=a.frimsupporttabid and tb_frimbasicinfo.id=@id and f.owner=tb_frimbasicinfo.id