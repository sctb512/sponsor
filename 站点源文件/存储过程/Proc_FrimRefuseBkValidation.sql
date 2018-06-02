create proc Proc_FrimRefuseBkValidation
(
@id int
)
as
update tb_validationstate
set bkstate=1
where tb_validationstate.frimsupporttabid=@id and bkstate=2