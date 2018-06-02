create proc Proc_FrimGetValidationState
(
@id int
)
as
select (case qsstate when '0' then '不要求宣传' when '1' then '尚无新消息' when '2' then '可验证' when '3' then '验证完成' end)qsstate,(case cdstate when '0' then '不要求宣传' when '1' then '尚无新消息' when '2' then '可验证' when '3' then '验证完成' end)cdstate,(case hbstate when '0' then '不要求宣传' when '1' then '尚无新消息' when '2' then '可验证' when '3' then '验证完成' end)hbstate,(case hfstate when '0' then '不要求宣传' when '1' then '尚无新消息' when '2' then '可验证' when '3' then '验证完成' end)hfstate,(case zbstate when '0' then '不要求宣传' when '1' then '尚无新消息' when '2' then '可验证' when '3' then '验证完成' end)zbstate,(case jpstate when '0' then '不要求宣传' when '1' then '尚无新消息' when '2' then '可验证' when '3' then '验证完成' end)jpstate,(case wlstate when '0' then '不要求宣传' when '1' then '尚无新消息' when '2' then '可验证' when '3' then '验证完成' end)wlstate,(case bkstate when '0' then '不要求宣传' when '1' then '尚无新消息' when '2' then '可验证' when '3' then '验证完成' end)bkstate from tb_validationstate
where frimsupporttabid=@id