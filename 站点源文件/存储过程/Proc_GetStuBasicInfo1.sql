create proc Proc_GetStuBasicInfo
(
@id int
)
as
select username,school,grade,principal,job,phonenum,qq from tb_studentinfo
where id=@id