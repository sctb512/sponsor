USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_StuGetNoMatchTabInfo]    Script Date: 2016/11/9 20:25:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_StuGetNoMatchTabInfo]
as
select s.id,s.owner,username,frimtype,money,address,phonenum,qq from tb_frimbasicinfo b,tb_frimsupportinfo s 
where state=0 and s.owner=b.id
order by id desc