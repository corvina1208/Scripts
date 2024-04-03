```
col  "Tablespace Name"  for  a10

SELECT 
    total_space.tablespace_name AS "Tablespace Name",
    ROUND(SUM(total_space.bytes) / 1024 / 1024, 2) AS "Total Space (MB)",
    ROUND(SUM(total_space.bytes - NVL(free_space.free_bytes, 0)) / 1024 / 1024, 2) AS "Used Space (MB)",
    ROUND(NVL(SUM(free_space.free_bytes), SUM(total_space.bytes)) / 1024 / 1024, 2) AS "Free Space (MB)"
FROM
    (
        SELECT 
            tablespace_name,
            SUM(bytes) AS bytes
        FROM 
            dba_data_files
        GROUP BY 
            tablespace_name
        UNION ALL
        SELECT 
            tablespace_name,
            SUM(bytes) AS bytes
        FROM 
            dba_temp_files
        GROUP BY 
            tablespace_name
    ) total_space
LEFT JOIN
    (
        SELECT 
            tablespace_name,
            SUM(bytes) AS free_bytes
        FROM 
            dba_free_space
        GROUP BY 
            tablespace_name
    ) free_space
ON
    total_space.tablespace_name = free_space.tablespace_name
GROUP BY 
    total_space.tablespace_name;
```
<img src="https://github.com/corvina1208/Scripts/blob/main/space.png">
