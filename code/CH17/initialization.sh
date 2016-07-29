#!/bin/bash

MYSQL=`which mysql`

$MYSQL test -u mysql -p <<EOF
create table resource(HOSTNAME VARCHAR(20) NOT NULL default '',
                      IP  VARCHAR(20) NOT NULL default '',
                      disk_total VARCHAR(20) default NULL,
 cpu_speed VARCHAR(20) default NULL,
 part_max_used VARCHAR(20) default NULL,
 swap_total VARCHAR(20) default NULL,
 os_name VARCHAR(20) default NULL,
 cpu_user VARCHAR(20) default NULL,
 cpu_system VARCHAR(20) default NULL,
 cpu_aidle VARCHAR(20) default NULL,
 load_five VARCHAR(20) default NULL,
 proc_run VARCHAR(20) default NULL,
 mem_free VARCHAR(20) default NULL,
 mem_buffers VARCHAR(20) default NULL,
 swap_free VARCHAR(20) default NULL,
 bytes_in VARCHAR(20) default NULL,
 pkts_out VARCHAR(20) default NULL,
 cpu_num VARCHAR(20) default NULL,
 disk_free VARCHAR(20) default NULL,
 mem_total VARCHAR(20) default NULL,
 cpu_wio VARCHAR(20) default NULL,
 boottime VARCHAR(20) default NULL,
 machine_type VARCHAR(20) default NULL,
 os_release VARCHAR(20) default NULL,
 cpu_nice VARCHAR(20) default NULL,
 cpu_idle VARCHAR(20) default NULL,
 load_one VARCHAR(20) default NULL,
 load_fifteen VARCHAR(20) default NULL,
 proc_total VARCHAR(20) default NULL,
 mem_shared VARCHAR(20) default NULL,
 mem_cached VARCHAR(20) default NULL,
 gexec VARCHAR(20) default NULL,
 bytes_out VARCHAR(20) default NULL,
 pks_in VARCHAR(20) default NULL);
show tables;
EOF
