```sql
select segment_name, extent_id, bytes/1024, blocks
  from user_extents
  where segment_name = upper('&segment_name');
```
<img src="https://github.com/corvina1208/Scripts/blob/main/block.png">
