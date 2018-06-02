create proc Proc_FrimAgreeHbValidation
(
@id int
)
as
update tb_validationstate
set hbstate=3
where tb_validationstate.frimsupporttabid=@id and hbstate=2