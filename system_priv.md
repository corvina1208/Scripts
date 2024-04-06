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
![image](https://github.com/corvina1208/Scripts/assets/157337929/153176cb-2dc4-42f9-8346-178031ebf74f)
