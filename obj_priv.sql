```sql
col object for a25
col grantee for a15
col grantor for a15
col grantable for a10
col what_granted for a10

select owner || ',' || table_name object,
       privilege what_granted, grantable, grantee, grantor
  from user_tab_privs;
```
![image](https://github.com/corvina1208/Scripts/assets/157337929/b50da27b-2010-423e-b1d8-7d6d6b7c882f)
