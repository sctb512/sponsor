create proc Proc_GetCountScoreThree
(
@id int
)
as
select COUNT(score) from tb_stucomment
where frimid=@id and score=3