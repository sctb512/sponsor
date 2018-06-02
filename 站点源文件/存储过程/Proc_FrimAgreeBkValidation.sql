create proc Proc_FrimAgreeBkValidation
(
@id int
)
as
update tb_validationstate
set bkstate=3
where tb_validationstate.frimsupporttabid=@id and bkstate=2