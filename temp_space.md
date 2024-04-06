```sql
SELECT d.tablespace_name, 
       d.total_mb, 
       (d.total_mb - t.free_mb) AS used_mb, 
       t.free_mb
FROM (SELECT tablespace_name, 
             SUM(bytes)/1024/1024 AS total_mb 
      FROM dba_temp_files 
      GROUP BY tablespace_name) d,
     (SELECT tablespace_name, 
             SUM(bytes_free)/1024/1024 AS free_mb 
      FROM v$temp_space_header 
      GROUP BY tablespace_name) t
WHERE d.tablespace_name = t.tablespace_name;
```
![image](https://github.com/corvina1208/Scripts/assets/157337929/0703074c-c468-4354-a100-982272b8f7a3)
