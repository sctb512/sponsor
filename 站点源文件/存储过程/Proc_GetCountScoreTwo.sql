create proc Proc_GetCountScoreTwo
(
@id int
)
as
select COUNT(score) from tb_stucomment
where frimid=@id and score=2