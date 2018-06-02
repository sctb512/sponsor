create proc Proc_FrimRefuseHfValidation
(
@id int
)
as
update tb_validationstate
set hfstate=1
where tb_validationstate.frimsupporttabid=@id and hfstate=2