create proc Proc_InsertFrimSupportInfo
(
@supportendtime nvarchar(50),
@submittime nvarchar(50),
@money int,
@isnaming bit,
@supporttype int,
@isqs bit,
@iscd bit,
@cdnum int,
@ishb bit,
@hbnum int,
@ishf bit,
@hfnum int,
@iszb bit,
@zbnum int,
@isjp bit,
@iswl bit,
@isbk bit,
@owner int,
@state int,
@applytabid int
)
as
insert into tb_frimsupportinfo(supportendtime,submittime,money,isnaming,supporttype,isqs,iscd,cdnum,ishb,hbnum,ishf,hfnum,iszb,zbnum,isjp,iswl,isbk,owner,state,applytabid)
values(@supportendtime,
@submittime,
@money,
@isnaming,
@supporttype,
@isqs,
@iscd,
@cdnum,
@ishb,
@hbnum,
@ishf,
@hfnum,
@iszb,
@zbnum,
@isjp,
@iswl,
@isbk,
@owner,
@state,
@applytabid)