USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_IsValiadtionComplete]    Script Date: 2016/11/9 19:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_IsValiadtionComplete]
(
@id int
)
as
if exists(select * from tb_validationstate where tb_validationstate.frimsupporttabid=@id and (qsstate=3 or qsstate=0) and (cdstate=3 or cdstate=0) and (hbstate=3 or hbstate=0) and (hfstate=3 or hfstate=0) and (zbstate=3 or zbstate=0) and (jpstate=3 or jpstate=0) and (wlstate=3 or wlstate=0) and (bkstate=3 or bkstate=0))
 return 100
 else
 return -100

