create proc Proc_GetFrimJingWeidu
(
@id int
)
as
select username,jingdu,weidu,phonenum,qq,address,boss from tb_frimbasicinfo
where id=@id