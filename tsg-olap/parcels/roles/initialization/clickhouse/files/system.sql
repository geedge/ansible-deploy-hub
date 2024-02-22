create table IF NOT EXISTS `system`.tables_cluster ON CLUSTER ck_query as `system`.tables  ENGINE =Distributed(ck_all,`system`,tables,rand());
create table IF NOT EXISTS `system`.disks_cluster ON CLUSTER ck_query as `system`.disks  ENGINE =Distributed(ck_all,`system`,disks,rand());
create table IF NOT EXISTS `system`.parts_cluster ON CLUSTER ck_query as `system`.parts  ENGINE =Distributed(ck_all,`system`,parts,rand());
create table IF NOT EXISTS `system`.query_log_cluster ON CLUSTER ck_query as `system`.query_log  ENGINE =Distributed(ck_all,`system`,query_log,rand());
CREATE TABLE IF NOT EXISTS `system`.columns_cluster ON CLUSTER ck_query AS `system`.columns ENGINE=Distributed(ck_all,`system`,columns,rand());
CREATE TABLE IF NOT EXISTS `system`.processes_cluster ON CLUSTER ck_query AS `system`.processes ENGINE=Distributed(ck_all,`system`,processes,rand());

alter table system.query_log on cluster ck_cluster modify TTL event_date + INTERVAL 60 DAY;
alter table system.query_log on cluster ck_query modify TTL event_date + INTERVAL 60 DAY;
