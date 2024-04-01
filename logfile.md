```
SET pages 5000
col member FOR a40
SELECT GROUP#, member
  FROM v$logfile
  ORDER BY GROUP#;
```
<img src="https://github.com/corvina1208/Scripts/blob/main/logfile.png">
