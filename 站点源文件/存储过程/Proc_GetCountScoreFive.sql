create proc Proc_GetCountScoreFive
(
@id int
)
as
select COUNT(score) from tb_stucomment
where frimid=@id and score=5