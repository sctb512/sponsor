create proc Proc_FrimGetSelfNoMatchTab
(
@id int
)
as
select tb_frimsupportinfo.id,money from tb_frimsupportinfo
where tb_frimsupportinfo.owner=@id and state=0