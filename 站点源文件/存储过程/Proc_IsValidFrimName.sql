USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_IsValidFrimName]    Script Date: 2016/10/11 10:37:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_IsValidFrimName]
(
	@username NVarChar(50)
	)
AS
if exists (select * from tb_frimbasicinfo where username=@username)
      return 100
   else
      return -100