USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertStuApplySupportTab]    Script Date: 2016/10/18 20:37:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_InsertStuApplySupportTab]
(
@eventname nvarchar(50),
@eventdate nvarchar(50),
@submitdate nvarchar(50),
@introduction nvarchar(MAX),
@appendix nvarchar(MAX),
@state int,
@supportbookurl nvarchar(MAX),
@frimsupporttabid int,
@owner int
)
as
insert into tb_stuapplysupporttab(eventname,eventdate,submitdate,introduction,appendix,state,supportbookurl,frimsupporttabid,owner)
values(@eventname,@eventdate,@submitdate,@introduction,@appendix,@state,@supportbookurl,@frimsupporttabid,@owner)