USE [db_WLB]
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetSearchInfo]    Script Date: 2016/10/29 14:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[Proc_GetSearchInfo]
(
 @isxhsd bit,
 @issqf bit,
 @ishcz bit,
 @iswxhy bit,
 @isxs bit,
 @iscbyxy bit,
 @islocqt bit,
 @iscy bit,
 @isryp bit,
 @isktv bit,
 @isyy bit,
 @isjd bit,
 @isfz bit,
 @isyh bit,
 @istypeqt bit,
 @isnaming bit,
 @supporttype int,
 @isqs bit,
 @iscd bit,
 @ishb bit,
 @ishf bit,
 @iszb bit,
 @isjp bit,
 @iswl bit,
 @isbk bit,
 @activitydate nvarchar(50),
 @leastmoney int,
 @mostmoney int
)
as
declare
@sql nvarchar(max)
set @sql=
'select s.id,s.owner,username,frimtype,money,address,phonenum,qq from tb_frimbasicinfo b,tb_frimsupportinfo s
where state=0 and s.owner=b.id and supporttype='+CONVERT(nvarchar(50),@supporttype)+' and s.money>'+CONVERT(nvarchar(50),@leastmoney)+' and s.money<'+CONVERT(nvarchar(50),@mostmoney)+' and ('
if @isxhsd=1
begin
set @sql=@sql+'b.location like ''西华师大（新区）''or'
end
if @issqf=1
begin
set @sql=@sql+' b.location like ''顺庆府'' or'
end
if @ishcz=1
begin
set @sql=@sql+' b.location like ''火车站'' or'
end
if @iswxhy=1
begin
set @sql=@sql+' b.location like ''五星花园'' or'
end
if @isxs=1
begin
set @sql=@sql+' b.location like ''西山'' or'
end
if @iscbyxy=1
begin
set @sql=@sql+' b.location like ''川北医学院'' or'
end
if @islocqt=1
begin
set @sql=@sql+' b.location like ''其他'' or'
end
set @sql=LEFT(@sql,LEN(@sql)-2)
set @sql=@sql+') and ('
if @iscy=1
begin
set @sql=@sql+'b.frimtype like ''餐饮'' or'
end
if @isryp=1
begin
set @sql=@sql+' b.frimtype like ''日用品'' or'
end
if @isktv=1
begin
set @sql=@sql+' b.frimtype like ''KTV'' or'
end
if @isyy=1
begin
set @sql=@sql+' b.frimtype like ''医院'' or'
end
if @isjd=1
begin
set @sql=@sql+' b.frimtype like ''酒店'' or'
end
if @isfz=1
begin
set @sql=@sql+' b.frimtype like ''服装'' or'
end
if @isyh=1
begin
set @sql=@sql+' b.frimtype like ''银行'' or'
end
if @istypeqt=1
begin
set @sql=@sql+' b.frimtype like ''其他'' or'
end
set @sql=LEFT(@sql,LEN(@sql)-2)
set @sql=@sql+')'
if @isnaming=1
begin
set @sql=@sql+' and s.isnaming=1'
end
set @sql=@sql+' and ('
if @isqs=0
begin
set @sql=@sql+' s.isqs=0 and '
end
if @iscd=0
begin
set @sql=@sql+' s.iscd=0 and '
end
if @ishb=0
begin
set @sql=@sql+' s.ishb=0 and '
end
if @ishf=0
begin
set @sql=@sql+' s.ishf=0 and '
end
if @iszb=0
begin
set @sql=@sql+' s.iszb=0 and '
end
if @isjp=0
begin
set @sql=@sql+' s.isjp=0 and '
end
if @iswl=0
begin
set @sql=@sql+' s.iswl=0 and '
end
if @isbk=0
begin
set @sql=@sql+' s.isbk=0 and '
end
set @sql=LEFT(@sql,LEN(@sql)-3)
set @sql=@sql+')'
/*set @sql=@sql-1*/
exec(@sql)
