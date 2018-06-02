create proc Proc_GetCountScoreFour
(
@id int
)
as
select COUNT(score) from tb_stucomment
where frimid=@id and score=4