create proc Proc_FrimAgreeWlValidation
(
@id int
)
as
update tb_validationstate
set wlstate=3
where tb_validationstate.frimsupporttabid=@id and wlstate=2