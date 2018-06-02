USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_IsValidName1]    Script Date: 2016/11/8 16:04:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_IsValidName1]
(
	@username NVarChar(50),
	@id int
)
AS
if exists (select * from tb_studentinfo where username=@username and username!=(select username from tb_studentinfo where tb_studentinfo.id=@id))
      return 100
   else
      return -100