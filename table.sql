```sql
SELECT table_name, tablespace_name
  FROM user_tables;
  WHERE table_name = upper('&table_name');
```
