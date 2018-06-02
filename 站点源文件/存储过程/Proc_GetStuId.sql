create proc [dbo].[Proc_GetStuId]
(
@username Nvarchar(50)
)
as
select * from tb_studentinfo
where @username=username