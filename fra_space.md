```sql
col "disk group" for a10
select
    dg.name as "disk group",
    dg.state as "state",
    total_mb/1024 as "total gb",
    (total_mb - free_mb)/1024 as "used gb",
    free_mb/1024 as "free gb",
    round((1- (free_mb / total_mb)) * 100, 2) as "used percent"
from v$asm_diskgroup dg
order by "used percent" desc;
```
![image](https://github.com/corvina1208/Scripts/assets/157337929/1de50201-38a5-41ea-99bd-3b87862dad48)
