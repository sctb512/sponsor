create proc Proc_FrimRefuseWlValidation
(
@id int
)
as
update tb_validationstate
set wlstate=1
where tb_validationstate.frimsupporttabid=@id and wlstate=2