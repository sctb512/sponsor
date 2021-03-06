USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetSupportDetailInfo]    Script Date: 2016/10/15 14:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetSupportDetailInfo]
(
@id int
)
as
select id,/*(case supportendtime when '2111-11-11' then '长时间有效' end)*/supportendtime,submittime,money,(case isnaming when '1'then '是' when '0' then '否' end)isnaming,(case supporttype when '0' then '现金' when '1' then '物品' when '2' then '现金加物品' when '3' then '其他' end)supporttype,(case isqs when '0' then '否' when '1' then '是' end)isqs,(case iscd when '0' then '否' when '1' then '是' end)iscd,cdnum,(case ishb when '0' then '否' when '1' then '是' end)ishb,hbnum,(case ishf when '0' then '否' when '1' then '是' end)ishf,hfnum,(case zbnum when '0' then '否' when '1' then '是' end)iszb,zbnum,(case isjp when '0' then '否' when '1' then '是' end)isjp,(case iswl when '0' then '否' when '1' then '是' end)iswl,(case isbk when '0' then '否' when '1' then '是' end )isbk,(case state when '0' then '未匹配' when '1' then '验证中' when '2' then '已失效' end)state,(case applytabid when '0' then '无' end)applytabid from tb_frimsupportinfo
where id=@id