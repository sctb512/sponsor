create proc Proc_DeleteNoMatchSupportInfo
(
@id int
)
as
delete from tb_frimsupportinfo
where id=@id
