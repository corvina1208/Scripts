```
SET pages 5000
col file_name FOR a50
SELECT file_id, file_name FROM dba_data_files
ORDER BY file_id;
```
<img src="https://github.com/corvina1208/Scripts/blob/main/datafile.png">
