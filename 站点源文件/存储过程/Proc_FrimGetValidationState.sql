create proc Proc_FrimGetValidationState
(
@id int
)
as
select (case qsstate when '0' then '��Ҫ������' when '1' then '��������Ϣ' when '2' then '����֤' when '3' then '��֤���' end)qsstate,(case cdstate when '0' then '��Ҫ������' when '1' then '��������Ϣ' when '2' then '����֤' when '3' then '��֤���' end)cdstate,(case hbstate when '0' then '��Ҫ������' when '1' then '��������Ϣ' when '2' then '����֤' when '3' then '��֤���' end)hbstate,(case hfstate when '0' then '��Ҫ������' when '1' then '��������Ϣ' when '2' then '����֤' when '3' then '��֤���' end)hfstate,(case zbstate when '0' then '��Ҫ������' when '1' then '��������Ϣ' when '2' then '����֤' when '3' then '��֤���' end)zbstate,(case jpstate when '0' then '��Ҫ������' when '1' then '��������Ϣ' when '2' then '����֤' when '3' then '��֤���' end)jpstate,(case wlstate when '0' then '��Ҫ������' when '1' then '��������Ϣ' when '2' then '����֤' when '3' then '��֤���' end)wlstate,(case bkstate when '0' then '��Ҫ������' when '1' then '��������Ϣ' when '2' then '����֤' when '3' then '��֤���' end)bkstate from tb_validationstate
where frimsupporttabid=@id