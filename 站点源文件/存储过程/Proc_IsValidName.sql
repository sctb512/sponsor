create proc Proc_IsValidName
(
	@username NVarChar(50)
	)
AS
if exists (select * from tb_studentinfo where username=@username)
      return 100
   else
      return -100