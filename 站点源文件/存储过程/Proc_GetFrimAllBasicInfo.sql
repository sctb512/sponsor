create proc Proc_GetFrimAllBasicInfo
(
@id int
)
as
select username,password,boss,location,address,frimtype,phonenum,qq,jingdu,weidu from tb_frimbasicinfo
where id=@id