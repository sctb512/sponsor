USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Pro_InsertFrimBasic]    Script Date: 2016/11/5 20:02:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Pro_InsertFrimBasic]
(
@username nvarchar(50),
@password nvarchar(50),
@userpower int,
@boss nvarchar(50),
@location nvarchar(50),
@address nvarchar(MAX),
@frimtype nvarchar(50),
@phonenum nvarchar(50),
@qq nvarchar(50),
@score int,
@jingdu nvarchar(MAX),
@weidu nvarchar(MAX)
)
as
insert into tb_frimbasicinfo(username,password,userpower,boss,location,address,frimtype,phonenum,qq,score,jingdu,weidu)
values(@username,@password,@userpower,@boss,@location,@address,@frimtype,@phonenum,@qq,@score,@jingdu,@weidu)