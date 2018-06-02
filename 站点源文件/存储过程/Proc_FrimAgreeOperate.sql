USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_FrimAgreeOperate]    Script Date: 2016/10/21 10:01:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_FrimAgreeOperate]
(
@id int
)
as
declare
@frimsupportinfoid int
select @frimsupportinfoid=frimsupporttabid from tb_stuapplysupporttab
where id=@id

update tb_stuapplysupporttab
set state=1
where id=@id
update tb_stuapplysupporttab
set state=2
/*where id!=@id*/
from tb_frimsupportinfo,tb_stuapplysupporttab
where tb_stuapplysupporttab.id!=@id and tb_stuapplysupporttab.frimsupporttabid=@frimsupportinfoid
update tb_frimsupportinfo
set state=1
/*where tb_frimsupportinfo.id=tb_stuapplysupporttab.frimsupporttabid and tb_stuapplysupporttab.id=@id*/
from tb_frimsupportinfo,tb_stuapplysupporttab
where tb_frimsupportinfo.id=tb_stuapplysupporttab.frimsupporttabid and tb_stuapplysupporttab.id=@id