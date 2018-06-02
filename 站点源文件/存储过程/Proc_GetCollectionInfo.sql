USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetCollectionInfo]    Script Date: 2016/10/31 19:53:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetCollectionInfo]
(
@id int
)
as
select tb_stucollection.id,username,adddate,frimid from tb_stucollection,tb_frimbasicinfo
where tb_stucollection.owner=@id and tb_stucollection.frimid=tb_frimbasicinfo.id