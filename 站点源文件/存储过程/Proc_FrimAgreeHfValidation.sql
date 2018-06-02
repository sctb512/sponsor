create proc Proc_FrimAgreeHfValidation
(
@id int
)
as
update tb_validationstate
set hfstate=3
where tb_validationstate.frimsupporttabid=@id and hfstate=2