create proc Proc_GetJpValidationFileUrl
(
@id int
)
as select top 1 * from tb_validationstate,tb_qsfilevalidation 
where tb_validationstate.frimsupporttabid=@id and tb_qsfilevalidation.validationstateid=tb_validationstate.id and jpstate=2
order by tb_qsfilevalidation.id desc

