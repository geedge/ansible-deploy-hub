set distributed_ddl_task_timeout = 180;


ALTER  table tsg_galaxy_v3.session_record_local on cluster ck_cluster drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_cluster drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.session_record on cluster ck_query drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;

ALTER  table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_cluster drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.interim_session_record on cluster ck_query drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;

ALTER  table tsg_galaxy_v3.security_event_local on cluster ck_cluster drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_cluster drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.security_event on cluster ck_query drop column IF EXISTS voip_calling_account, drop column IF EXISTS voip_called_account, drop column IF EXISTS voip_calling_number, drop column IF EXISTS voip_called_number, drop column IF EXISTS streaming_media_url, drop column IF EXISTS streaming_media_protocol, drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;

ALTER  table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_cluster drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.proxy_event on cluster ck_query drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;

ALTER  table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_cluster drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;
ALTER  table tsg_galaxy_v3.transaction_record on cluster ck_query drop column IF EXISTS http_request_body_key, drop column IF EXISTS http_response_body_key, drop column IF EXISTS http_content_length, drop column IF EXISTS http_content_type;


ALTER table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;

ALTER table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;

ALTER table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;

ALTER table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;

ALTER table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;

ALTER table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;

ALTER table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;

ALTER table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;

ALTER table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_start_timestamp_ms Datetime64(3) after common_end_time;



ALTER table tsg_galaxy_v3.session_record_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.session_record on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.session_record on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;

ALTER table tsg_galaxy_v3.interim_session_record_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.interim_session_record on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;

ALTER table tsg_galaxy_v3.security_event_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.security_event on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.security_event on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;

ALTER table tsg_galaxy_v3.proxy_event_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.proxy_event on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;

ALTER table tsg_galaxy_v3.transaction_record_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.transaction_record on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;

ALTER table tsg_galaxy_v3.sys_packet_capture_event_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.sys_packet_capture_event on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;

ALTER table tsg_galaxy_v3.radius_record_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.radius_record on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;

ALTER table tsg_galaxy_v3.gtpc_record_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.gtpc_record on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;

ALTER table tsg_galaxy_v3.voip_record_local on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_cluster add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;
ALTER table tsg_galaxy_v3.voip_record on cluster ck_query add column IF NOT EXISTS common_end_timestamp_ms Datetime64(3) after common_start_timestamp_ms;