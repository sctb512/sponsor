create proc Proc_GetAverageScore
(
@id int
)
as
select AVG(score) from tb_stucomment
where frimid=@id