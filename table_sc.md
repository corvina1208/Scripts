```
set long 50000
set lines 3000
set pages 3000

accept p_user prompt '유저명을 입력하세요~'
accept p_table prompt '테이블명을 입력하세요~'

select  dbms_metadata.get_ddl('TABLE', TABLE_NAME, upper('&p_user'))
    from  user_tables
    where  table_name=upper('&p_table');
```
<img src="https://github.com/corvina1208/Scripts/blob/main/table_sc.png">
