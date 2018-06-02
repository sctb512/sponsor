create proc Proc_InsertStuRecommand
(
@owner int,
@leastmoney int,
@mostmoney int,
@islocxhsd bit,
@islocsqf bit,
@islochcz bit,
@islocwxhy bit,
@islocxs bit,
@isloccbyxy bit,
@islocqt bit,
@istypecy bit,
@istyperyp bit,
@istypektv bit,
@istypeyy bit,
@istypejd bit,
@istypefz bit,
@istypeyh bit,
@istypeqt bit
)
as
insert into tb_sturecommend(owner,leastmoney,mostmoney,islocxhsd,islocsqf,islochcz,islocwxhy,islocxs,isloccbyxy,
islocqt,istypecy,istyperyp,istypektv,istypeyy,istypejd,istypefz,istypeyh,istypeqt)
values(@owner, @leastmoney, @mostmoney, @islocxhsd,@islocsqf, @islochcz, @islocwxhy,@islocxs, @isloccbyxy,@islocqt, 
@istypecy, @istyperyp,@istypektv,@istypeyy,@istypejd,@istypefz,@istypeyh,@istypeqt)