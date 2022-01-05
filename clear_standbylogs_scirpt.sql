[oracle@instance-20210914-dr ~]$ cat clear_standbylogs_scirpt.sql
set head off
set feed off
set long 90000
set echo off
set pages 0
spool clear_standbylogs.log
select 'ALTER DATABASE CLEAR LOGFILE GROUP '||GROUP#||';' from v$logfile where TYPE='STANDBY' group by GROUP#;
spool off

