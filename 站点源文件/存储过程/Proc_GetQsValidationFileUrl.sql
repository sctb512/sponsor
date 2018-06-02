create proc Proc_GetQsValidationFileUrl
(
@id int
)
as select top 1 * from tb_validationstate,tb_qsfilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_qsfilevalidation.validationstateid=tb_validationstate.id and qsstate=2
order by tb_qsfilevalidation.id desc

