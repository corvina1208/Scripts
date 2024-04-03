```
select segment_name, extent_id, bytes/1024
  from user_extents
  where segment_name = upper('&segment_name');

--byte 를 1024 로 나눠주는 것을 추천
```
<img src="https://github.com/corvina1208/Scripts/blob/main/extent.png">
