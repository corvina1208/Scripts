```sql
col name for a45
col value for a10

select name, value, issys_modifiable
  from v$parameter
  where name like '%&name%';
```
![image](https://github.com/corvina1208/Scripts/assets/157337929/5f4c4ee4-a458-4fc6-9764-f46e09614ba2)
