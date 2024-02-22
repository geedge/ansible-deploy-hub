set distributed_ddl_task_timeout = 180;


ALTER  table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS intercept_error String after rdp_cookie,add column IF NOT EXISTS intercept_cert_verify Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_client_side_version String after rdp_cookie,add column IF NOT EXISTS intercept_server_side_version String after rdp_cookie,add column IF NOT EXISTS intercept_client_side_latency Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_server_side_latency Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_passthrough_reason String after rdp_cookie,add column IF NOT EXISTS intercept_status Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_pinning_status Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS ssl_cert_subject String after rdp_cookie,add column IF NOT EXISTS ssl_cert_issuer String after rdp_cookie,add column IF NOT EXISTS ssl_ja3s_hash String after rdp_cookie,add column IF NOT EXISTS ssl_ja3s_fingerprint String after rdp_cookie,add column IF NOT EXISTS ssl_ja3_hash String after rdp_cookie,add column IF NOT EXISTS ssl_ja3_fingerprint String after rdp_cookie,add column IF NOT EXISTS ssl_con_latency_ms Int64 after rdp_cookie,add column IF NOT EXISTS ssl_cn String after rdp_cookie,add column IF NOT EXISTS ssl_san String after rdp_cookie,add column IF NOT EXISTS ssl_sni String after rdp_cookie,add column IF NOT EXISTS ssl_version String after rdp_cookie;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS intercept_error String after rdp_cookie,add column IF NOT EXISTS intercept_cert_verify Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_client_side_version String after rdp_cookie,add column IF NOT EXISTS intercept_server_side_version String after rdp_cookie,add column IF NOT EXISTS intercept_client_side_latency Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_server_side_latency Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_passthrough_reason String after rdp_cookie,add column IF NOT EXISTS intercept_status Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_pinning_status Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS ssl_cert_subject String after rdp_cookie,add column IF NOT EXISTS ssl_cert_issuer String after rdp_cookie,add column IF NOT EXISTS ssl_ja3s_hash String after rdp_cookie,add column IF NOT EXISTS ssl_ja3s_fingerprint String after rdp_cookie,add column IF NOT EXISTS ssl_ja3_hash String after rdp_cookie,add column IF NOT EXISTS ssl_ja3_fingerprint String after rdp_cookie,add column IF NOT EXISTS ssl_con_latency_ms Int64 after rdp_cookie,add column IF NOT EXISTS ssl_cn String after rdp_cookie,add column IF NOT EXISTS ssl_san String after rdp_cookie,add column IF NOT EXISTS ssl_sni String after rdp_cookie,add column IF NOT EXISTS ssl_version String after rdp_cookie;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS intercept_error String after rdp_cookie,add column IF NOT EXISTS intercept_cert_verify Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_client_side_version String after rdp_cookie,add column IF NOT EXISTS intercept_server_side_version String after rdp_cookie,add column IF NOT EXISTS intercept_client_side_latency Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_server_side_latency Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_passthrough_reason String after rdp_cookie,add column IF NOT EXISTS intercept_status Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS intercept_pinning_status Nullable(Int64) after rdp_cookie,add column IF NOT EXISTS ssl_cert_subject String after rdp_cookie,add column IF NOT EXISTS ssl_cert_issuer String after rdp_cookie,add column IF NOT EXISTS ssl_ja3s_hash String after rdp_cookie,add column IF NOT EXISTS ssl_ja3s_fingerprint String after rdp_cookie,add column IF NOT EXISTS ssl_ja3_hash String after rdp_cookie,add column IF NOT EXISTS ssl_ja3_fingerprint String after rdp_cookie,add column IF NOT EXISTS ssl_con_latency_ms Int64 after rdp_cookie,add column IF NOT EXISTS ssl_cn String after rdp_cookie,add column IF NOT EXISTS ssl_san String after rdp_cookie,add column IF NOT EXISTS ssl_sni String after rdp_cookie,add column IF NOT EXISTS ssl_version String after rdp_cookie;


ALTER TABLE tsg_galaxy_v3.proxy_event_local on cluster ck_cluster DROP COLUMN IF  EXISTS rdp_encryption_method, DROP COLUMN IF  EXISTS rdp_encryption_level, DROP COLUMN IF  EXISTS rdp_certificate_permanent, DROP COLUMN IF  EXISTS rdp_certificate_count, DROP COLUMN IF  EXISTS rdp_certificate_type, DROP COLUMN IF  EXISTS rdp_requested_color_depth, DROP COLUMN IF  EXISTS rdp_desktop_height, DROP COLUMN IF  EXISTS rdp_desktop_width, DROP COLUMN IF  EXISTS rdp_client_product_id, DROP COLUMN IF  EXISTS rdp_client_name, DROP COLUMN IF  EXISTS rdp_client_version, DROP COLUMN IF  EXISTS rdp_keyboard_layout, DROP COLUMN IF  EXISTS rdp_client_channels, DROP COLUMN IF  EXISTS rdp_security_protocol, DROP COLUMN IF  EXISTS rdp_cookie;
ALTER TABLE tsg_galaxy_v3.proxy_event on cluster ck_cluster DROP COLUMN IF  EXISTS rdp_encryption_method, DROP COLUMN IF  EXISTS rdp_encryption_level, DROP COLUMN IF  EXISTS rdp_certificate_permanent, DROP COLUMN IF  EXISTS rdp_certificate_count, DROP COLUMN IF  EXISTS rdp_certificate_type, DROP COLUMN IF  EXISTS rdp_requested_color_depth, DROP COLUMN IF  EXISTS rdp_desktop_height, DROP COLUMN IF  EXISTS rdp_desktop_width, DROP COLUMN IF  EXISTS rdp_client_product_id, DROP COLUMN IF  EXISTS rdp_client_name, DROP COLUMN IF  EXISTS rdp_client_version, DROP COLUMN IF  EXISTS rdp_keyboard_layout, DROP COLUMN IF  EXISTS rdp_client_channels, DROP COLUMN IF  EXISTS rdp_security_protocol, DROP COLUMN IF  EXISTS rdp_cookie;
ALTER TABLE tsg_galaxy_v3.proxy_event on cluster ck_query DROP COLUMN IF  EXISTS rdp_encryption_method, DROP COLUMN IF  EXISTS rdp_encryption_level, DROP COLUMN IF  EXISTS rdp_certificate_permanent, DROP COLUMN IF  EXISTS rdp_certificate_count, DROP COLUMN IF  EXISTS rdp_certificate_type, DROP COLUMN IF  EXISTS rdp_requested_color_depth, DROP COLUMN IF  EXISTS rdp_desktop_height, DROP COLUMN IF  EXISTS rdp_desktop_width, DROP COLUMN IF  EXISTS rdp_client_product_id, DROP COLUMN IF  EXISTS rdp_client_name, DROP COLUMN IF  EXISTS rdp_client_version, DROP COLUMN IF  EXISTS rdp_keyboard_layout, DROP COLUMN IF  EXISTS rdp_client_channels, DROP COLUMN IF  EXISTS rdp_security_protocol, DROP COLUMN IF  EXISTS rdp_cookie;


ALTER  table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_out_dest_mac  String after common_server_domain;


ALTER  table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;

ALTER  table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;
ALTER  table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_in_dest_mac  String after common_server_domain;


ALTER  table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_out_src_mac  String after common_phone_number;


ALTER  table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;

ALTER  table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
ALTER  table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_in_src_mac  String after common_phone_number;
