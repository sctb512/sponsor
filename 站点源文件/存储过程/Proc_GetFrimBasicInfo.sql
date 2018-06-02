create proc Proc_GetFrimBasicInfo
(
@id int
)
as
select username,phonenum,qq,address,frimtype from tb_frimbasicinfo
where id=@id