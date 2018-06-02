create proc Proc_UpdateSupportEndTime
(
@owner int,
@now date
)
as
update tb_frimsupportinfo
set state=2
where owner=@owner and state=0 and CONVERT(date,supportendtime)<=@now