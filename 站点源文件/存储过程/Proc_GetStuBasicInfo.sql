USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetNomatchTabInfo]    Script Date: 2016/10/15 14:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetNomatchTabInfo]
(
@owner int
)
as
select id,money,(case supportendtime when '2111-11-11' then '长时间有效' end)as supportendtime,(case state when '0' then '未匹配' end)as state from tb_frimsupportinfo
where owner=@owner and state=0