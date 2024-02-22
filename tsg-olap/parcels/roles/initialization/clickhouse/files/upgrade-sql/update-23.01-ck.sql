set distributed_ddl_task_timeout = 180;

ALTER table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;

ALTER table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;

ALTER table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;

ALTER table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;

ALTER table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;

ALTER table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;

ALTER table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;

ALTER table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;

ALTER table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_app_full_path String after common_app_id;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_app_full_path  String after common_app_id;


ALTER table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;

ALTER table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;

ALTER table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;

ALTER table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;

ALTER table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;

ALTER table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;

ALTER table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;

ALTER table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;

ALTER table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_server_asn;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_server_domain  String after common_server_asn;


ALTER table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;

ALTER table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;

ALTER table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;

ALTER table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;

ALTER table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;

ALTER table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;

ALTER table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;

ALTER table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;

ALTER table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_server_fqdn String after common_server_asn;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_server_fqdn  String after common_server_asn;


CREATE TABLE IF NOT EXISTS tsg_galaxy_v3.session_record_common_server_domain_local ON CLUSTER ck_cluster(
	common_log_id UInt64,
	common_recv_time Int64,
	common_server_ip String,
	common_client_ip String,
	common_sled_ip String,
	common_entrance_id Int64,
	common_subscriber_id String,
	common_stream_trace_id UInt64,
	common_server_domain String,
	http_domain String,
	ssl_sni  String,
	common_schema_type LowCardinality(String),
	common_vsys_id Int64 DEFAULT 1,
	common_client_port Int64,
	common_server_port Int64,
	common_app_label LowCardinality(String),
	common_direction Nullable(Int64),
	common_data_center String,
	common_device_group String
)
ENGINE=MergeTree PARTITION BY toYYYYMMDD(toDate(common_recv_time))
ORDER BY (common_server_domain,common_recv_time);

CREATE TABLE IF NOT EXISTS tsg_galaxy_v3.session_record_common_server_domain ON CLUSTER ck_cluster(
	common_log_id UInt64,
	common_recv_time Int64,
	common_server_ip String,
	common_client_ip String,
	common_sled_ip String,
	common_entrance_id Int64,
	common_subscriber_id String,
	common_stream_trace_id UInt64,
	common_server_domain String,
	http_domain String,
	ssl_sni  String,
	common_schema_type LowCardinality(String),
	common_vsys_id Int64,
	common_client_port Int64,
	common_server_port Int64,
	common_app_label LowCardinality(String),
	common_direction Nullable(Int64),
	common_data_center String,
	common_device_group String
) ENGINE =Distributed(ck_cluster,tsg_galaxy_v3,session_record_common_server_domain_local,rand());

CREATE TABLE IF NOT EXISTS tsg_galaxy_v3.session_record_common_server_domain ON CLUSTER ck_query(
	common_log_id UInt64,
	common_recv_time Int64,
	common_server_ip String,
	common_client_ip String,
	common_sled_ip String,
	common_entrance_id Int64,
	common_subscriber_id String,
	common_stream_trace_id UInt64,
	common_server_domain String,
	http_domain String,
	ssl_sni  String,
	common_schema_type LowCardinality(String),
	common_vsys_id Int64,
	common_client_port Int64,
	common_server_port Int64,
	common_app_label LowCardinality(String),
	common_direction Nullable(Int64),
	common_data_center String,
	common_device_group String
) ENGINE =Distributed(ck_cluster,tsg_galaxy_v3,session_record_common_server_domain_local,rand());


ALTER table tsg_galaxy_v3.session_record_common_client_ip_local on cluster ck_cluster add column IF NOT EXISTS common_device_group String after common_direction;
ALTER table tsg_galaxy_v3.session_record_common_client_ip on cluster ck_cluster add column IF NOT EXISTS common_device_group String after common_direction;
ALTER table tsg_galaxy_v3.session_record_common_client_ip on cluster ck_query add column IF NOT EXISTS common_device_group String after common_direction;

ALTER table tsg_galaxy_v3.session_record_common_server_ip_local on cluster ck_cluster add column IF NOT EXISTS common_device_group String after common_direction;
ALTER table tsg_galaxy_v3.session_record_common_server_ip on cluster ck_cluster add column IF NOT EXISTS common_device_group String after common_direction;
ALTER table tsg_galaxy_v3.session_record_common_server_ip on cluster ck_query add column IF NOT EXISTS common_device_group String after common_direction;

ALTER table tsg_galaxy_v3.session_record_http_domain_local on cluster ck_cluster add column IF NOT EXISTS common_device_group String after common_direction;
ALTER table tsg_galaxy_v3.session_record_http_domain on cluster ck_cluster add column IF NOT EXISTS common_device_group String after common_direction;
ALTER table tsg_galaxy_v3.session_record_http_domain on cluster ck_query add column IF NOT EXISTS common_device_group String after common_direction;


ALTER table tsg_galaxy_v3.session_record_common_client_ip_local on cluster ck_cluster add column IF NOT EXISTS common_data_center String after common_direction;
ALTER table tsg_galaxy_v3.session_record_common_client_ip on cluster ck_cluster add column IF NOT EXISTS common_data_center String after common_direction;
ALTER table tsg_galaxy_v3.session_record_common_client_ip on cluster ck_query add column IF NOT EXISTS common_data_center  String after common_direction;

ALTER table tsg_galaxy_v3.session_record_common_server_ip_local on cluster ck_cluster add column IF NOT EXISTS common_data_center String after common_direction;
ALTER table tsg_galaxy_v3.session_record_common_server_ip on cluster ck_cluster add column IF NOT EXISTS common_data_center String after common_direction;
ALTER table tsg_galaxy_v3.session_record_common_server_ip on cluster ck_query add column IF NOT EXISTS common_data_center  String after common_direction;

ALTER table tsg_galaxy_v3.session_record_http_domain_local on cluster ck_cluster add column IF NOT EXISTS common_data_center String after common_direction;
ALTER table tsg_galaxy_v3.session_record_http_domain on cluster ck_cluster add column IF NOT EXISTS common_data_center String after common_direction;
ALTER table tsg_galaxy_v3.session_record_http_domain on cluster ck_query add column IF NOT EXISTS common_data_center String after common_direction;


ALTER table tsg_galaxy_v3.session_record_common_client_ip_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;
ALTER table tsg_galaxy_v3.session_record_common_client_ip on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;
ALTER table tsg_galaxy_v3.session_record_common_client_ip on cluster ck_query add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;

ALTER table tsg_galaxy_v3.session_record_common_server_ip_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;
ALTER table tsg_galaxy_v3.session_record_common_server_ip on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;
ALTER table tsg_galaxy_v3.session_record_common_server_ip on cluster ck_query add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;

ALTER table tsg_galaxy_v3.session_record_http_domain_local on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;
ALTER table tsg_galaxy_v3.session_record_http_domain on cluster ck_cluster add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;
ALTER table tsg_galaxy_v3.session_record_http_domain on cluster ck_query add column IF NOT EXISTS common_server_domain String after common_stream_trace_id;


drop view IF EXISTS tsg_galaxy_v3.common_client_ip ON CLUSTER ck_cluster;
drop view IF EXISTS tsg_galaxy_v3.common_http_domain ON CLUSTER ck_cluster;
drop view IF EXISTS tsg_galaxy_v3.common_server_ip ON CLUSTER ck_cluster;

CREATE MATERIALIZED VIEW IF NOT EXISTS tsg_galaxy_v3.common_client_ip ON CLUSTER ck_cluster TO tsg_galaxy_v3.session_record_common_client_ip_local AS SELECT common_log_id, common_recv_time, common_server_ip, common_client_ip, common_sled_ip, common_entrance_id, common_subscriber_id, common_stream_trace_id, common_server_domain, http_domain, ssl_sni, common_schema_type, common_vsys_id, common_client_port, common_server_port, common_app_label, common_direction,common_data_center, common_device_group FROM tsg_galaxy_v3.session_record_local;
CREATE MATERIALIZED VIEW IF NOT EXISTS tsg_galaxy_v3.common_http_domain ON CLUSTER ck_cluster TO tsg_galaxy_v3.session_record_http_domain_local AS SELECT common_log_id, common_recv_time, common_server_ip, common_client_ip, common_sled_ip, common_entrance_id, common_subscriber_id, common_stream_trace_id, common_server_domain, http_domain, ssl_sni, common_schema_type, common_vsys_id, common_client_port, common_server_port, common_app_label, common_direction,common_data_center, common_device_group FROM tsg_galaxy_v3.session_record_local;
CREATE MATERIALIZED VIEW IF NOT EXISTS tsg_galaxy_v3.common_server_ip ON CLUSTER ck_cluster TO tsg_galaxy_v3.session_record_common_server_ip_local AS SELECT common_log_id, common_recv_time, common_server_ip, common_client_ip, common_sled_ip, common_entrance_id, common_subscriber_id, common_stream_trace_id, common_server_domain, http_domain, ssl_sni, common_schema_type, common_vsys_id, common_client_port, common_server_port, common_app_label, common_direction,common_data_center, common_device_group FROM tsg_galaxy_v3.session_record_local;
CREATE MATERIALIZED VIEW IF NOT EXISTS tsg_galaxy_v3.common_server_domain ON CLUSTER ck_cluster TO tsg_galaxy_v3.session_record_common_server_domain_local AS SELECT common_log_id, common_recv_time, common_server_ip, common_client_ip, common_sled_ip, common_entrance_id, common_subscriber_id, common_stream_trace_id, common_server_domain, http_domain, ssl_sni, common_schema_type, common_vsys_id, common_client_port, common_server_port, common_app_label, common_direction,common_data_center, common_device_group FROM tsg_galaxy_v3.session_record_local;

drop table  IF  EXISTS `system`.query_log_cluster on cluster ck_query;
drop table  IF  EXISTS `system`.disks_cluster on cluster ck_query;
drop table  IF  EXISTS `system`.columns_cluster on cluster ck_query;
drop table  IF  EXISTS `system`.parts_cluster on cluster ck_query;
drop table  IF  EXISTS `system`.processes_cluster on cluster ck_query;
drop table  IF  EXISTS `system`.tables_cluster on cluster ck_query;


create table IF NOT EXISTS `system`.tables_cluster ON CLUSTER ck_query as `system`.tables  ENGINE =Distributed(ck_all,`system`,tables,rand());
create table IF NOT EXISTS `system`.disks_cluster ON CLUSTER ck_query as `system`.disks  ENGINE =Distributed(ck_all,`system`,disks,rand());
create table IF NOT EXISTS `system`.parts_cluster ON CLUSTER ck_query as `system`.parts  ENGINE =Distributed(ck_all,`system`,parts,rand());
create table IF NOT EXISTS `system`.query_log_cluster ON CLUSTER ck_query as `system`.query_log  ENGINE =Distributed(ck_all,`system`,query_log,rand());
CREATE TABLE IF NOT EXISTS `system`.columns_cluster ON CLUSTER ck_query AS `system`.columns ENGINE=Distributed(ck_all,`system`,columns,rand());
CREATE TABLE IF NOT EXISTS `system`.processes_cluster ON CLUSTER ck_query AS `system`.processes ENGINE=Distributed(ck_all,`system`,processes,rand());
alter table system.query_log on cluster ck_cluster modify TTL event_date + INTERVAL 60 DAY;
alter table system.query_log on cluster ck_query modify TTL event_date + INTERVAL 60 DAY;

