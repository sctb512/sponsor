create proc Proc_DeleteCollectionInfo
(
@id int
)
as
delete from tb_stucollection
where id=@id