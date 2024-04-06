```sql
accept  p_degree  prompt '제한할 병렬도는 ?  ' 
accept  p_undo    prompt '제한할 undo 사용량은? '
accept  p_exec    prompt '제한할 execution time(초) ? '
accept  p_idle    prompt '제한할 idle time(초) ? '
accept  p_block   prompt '제한할 blocking idle time(초) ? '

exec dbms_resource_manager.create_pending_area();

begin
          dbms_resource_manager.update_plan_directive(
          plan=>'DAYTIME',
          group_or_subplan=>'ONLINE_USERS',
          new_parallel_degree_limit_p1 => &p_degree,
          new_undo_pool => &p_undo, 
          new_max_est_exec_time => &p_exec,
          new_max_idle_time => &p_idle,
          new_max_idle_blocker_time  =>  &p_block 
);
end;
/

exec dbms_resource_manager.submit_pending_area();

alter system  set  resource_manager_plan= 'daytime';
```
