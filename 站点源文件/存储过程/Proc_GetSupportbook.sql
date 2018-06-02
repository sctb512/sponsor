create proc Proc_GetSupportbook
(
@id int
)
as
select * from tb_stuapplysupporttab
where id=@id 