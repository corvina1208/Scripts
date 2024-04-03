```
select segment_name, tablespace_name
  from dba_segments
  where segment_name = upper('&segment_name');
```
<img src="https://github.com/corvina1208/Scripts/blob/main/segment.png">
