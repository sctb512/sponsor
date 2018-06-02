create proc Proc_GetStuAllBasicInfo
(
@id int
)
as
select username,password,school,grade,principal,job,phonenum,qq from tb_studentinfo
where id=@id