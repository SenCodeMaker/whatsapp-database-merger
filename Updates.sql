--
-- This script update the data in the newest db to make it insertable in the oldest respecting the ids
-- exec it connect to the newest
--

ATTACH DATABASE '/path/old/db' AS oldest;

update user_device set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="user_device")) where _id > 0;
update user_device set _id = -_id  where _id < 0;
update group_participant_user set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="group_participant_user")) where _id > 0;
update group_participant_user set _id = -_id  where _id < 0;
update group_participant_device set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="group_participant_device")) where _id > 0;
update group_participant_device set _id = -_id  where _id < 0;
update call_log_participant_v2 set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="call_log_participant_v2")) where _id > 0;
update call_log_participant_v2 set _id = -_id  where _id < 0;
update call_log set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="call_log")) where _id > 0;
update call_log set _id = -_id  where _id < 0;
update receipts set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="receipts")) where _id > 0;
update receipts set _id = -_id  where _id < 0;
update receipt_orphaned set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="receipt_orphaned")) where _id > 0;
update receipt_orphaned set _id = -_id  where _id < 0;
update receipt_orphaned set receipt_device_jid_row_id = -(receipt_device_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="receipt_device")) where receipt_device_jid_row_id > 0;
update receipt_orphaned set receipt_device_jid_row_id = -receipt_device_jid_row_id  where receipt_device_jid_row_id < 0;
update receipt_device set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="receipt_device")) where _id > 0;
update receipt_device set _id = -_id  where _id < 0;
update receipt_user set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="receipt_user")) where _id > 0;
update receipt_user set _id = -_id  where _id < 0;
update user_device set device_jid_row_id = -(device_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where device_jid_row_id > 0;
update user_device set device_jid_row_id = -device_jid_row_id  where device_jid_row_id < 0;
update group_participant_device set device_jid_row_id = -(device_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where device_jid_row_id > 0;
update group_participant_device set device_jid_row_id = -device_jid_row_id  where device_jid_row_id < 0;
---------------------------------------------------------------------------------------------
update missed_call_logs set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="missed_call_logs")) where _id > 0;
update missed_call_logs set _id = -_id  where _id < 0;
update missed_call_log_participant set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="missed_call_log_participant")) where _id > 0;
update missed_call_log_participant set _id = -_id  where _id < 0;
update media_refs set _id = -_id  where _id < 0;
update missed_call_log_participant set call_logs_row_id = -(call_logs_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="call_log")) where call_logs_row_id > 0;
update missed_call_log_participant set call_logs_row_id = -call_logs_row_id  where call_logs_row_id < 0;
--------------------------------------------------------
update media_refs set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="media_refs")) where _id > 0;
update media_refs set _id = -_id  where _id < 0;
update chat set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="chat")) where _id > 0;
update chat set _id = -_id  where _id < 0;
update message_media set chat_row_id = -(chat_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="chat")) where chat_row_id > 0;
update message_media set chat_row_id = -chat_row_id  where chat_row_id < 0;
update receipt_orphaned set chat_row_id = -(chat_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="chat")) where chat_row_id > 0;
update receipt_orphaned set chat_row_id = -chat_row_id  where chat_row_id < 0;
------------------------------------------------------------------------------------------
update jid set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where _id > 0;
update jid set _id = -_id  where _id < 0;
update call_log set jid_row_id = -(jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where jid_row_id > 0;
update call_log set jid_row_id = -jid_row_id  where jid_row_id < 0;
update missed_call_logs set group_jid_row_id = -(group_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where group_jid_row_id > 0;
update missed_call_logs set group_jid_row_id = -group_jid_row_id  where group_jid_row_id < 0;
update call_log_participant_v2 set call_log_row_id = -(call_log_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="call_log_participant_v2")) where call_log_row_id > 0;
update call_log_participant_v2 set call_log_row_id = -call_log_row_id  where call_log_row_id < 0;
update call_log_participant_v2 set jid_row_id = -(jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where jid_row_id > 0;
update call_log_participant_v2 set jid_row_id = -jid_row_id  where jid_row_id < 0;
update chat set jid_row_id = -(jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where jid_row_id > 0;
update chat set jid_row_id = -jid_row_id  where jid_row_id < 0;
update chat set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="chat")) where _id > 0;
update chat set _id = -_id  where _id < 0;
update group_notification_version set group_jid_row_id = -(group_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where group_jid_row_id > 0;
update group_notification_version set group_jid_row_id = -group_jid_row_id  where group_jid_row_id < 0;
update group_participant_user set user_jid_row_id = -(user_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where user_jid_row_id > 0;
update group_participant_user set user_jid_row_id = -user_jid_row_id  where user_jid_row_id < 0;
update group_participant_user set group_jid_row_id = -(group_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where group_jid_row_id > 0;
update group_participant_user set group_jid_row_id = -group_jid_row_id  where group_jid_row_id < 0;
update receipt_user set receipt_user_jid_row_id = -(receipt_user_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where receipt_user_jid_row_id > 0;
update receipt_user set receipt_user_jid_row_id = -receipt_user_jid_row_id  where receipt_user_jid_row_id < 0;
update user_device set user_jid_row_id = -(user_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where user_jid_row_id > 0;
update user_device set user_jid_row_id = -user_jid_row_id  where user_jid_row_id < 0;
update user_device_info set user_jid_row_id = -(user_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where user_jid_row_id > 0;
update user_device_info set user_jid_row_id = -user_jid_row_id  where user_jid_row_id < 0;
update receipt_orphaned set receipt_recipient_jid_row_id = -(receipt_recipient_jid_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="jid")) where receipt_recipient_jid_row_id > 0;
update receipt_orphaned set receipt_recipient_jid_row_id = -receipt_recipient_jid_row_id  where receipt_recipient_jid_row_id < 0;
---------------------------------------------------------------------------------------
update messages set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where _id > 0;
update messages set _id = -_id  where _id < 0;
update audio_data set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update audio_data set message_row_id = -message_row_id  where message_row_id < 0;
update message_ftsv2_content  set docid = -(docid + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where docid > 0;
update message_ftsv2_content set docid = -docid  where docid < 0;
update message_ftsv2_docsize  set docid = -(docid + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where docid > 0;
update message_ftsv2_docsize set docid = -docid  where docid < 0;
update message_forwarded set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update message_forwarded set message_row_id = -message_row_id  where message_row_id < 0;
update message_streaming_sidecar set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update message_streaming_sidecar set message_row_id = -message_row_id  where message_row_id < 0;
update message_media set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update message_media set message_row_id = -message_row_id  where message_row_id < 0;
update message_view_once_media set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update message_view_once_media set message_row_id = -message_row_id  where message_row_id < 0;
update missed_call_logs set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update missed_call_logs set message_row_id = -message_row_id  where message_row_id < 0;
update mms_thumbnail_metadata set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update mms_thumbnail_metadata set message_row_id = -message_row_id  where message_row_id < 0;
update receipt_device set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update receipt_device set message_row_id = -message_row_id  where message_row_id < 0;
update receipt_user set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update receipt_user set message_row_id = -message_row_id  where message_row_id < 0;
update status set message_table_id = -(message_table_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_table_id > 0;
update status set message_table_id = -message_table_id  where message_table_id < 0;
update status set last_read_message_table_id = -(last_read_message_table_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where last_read_message_table_id > 0;
update status set last_read_message_table_id = -last_read_message_table_id  where last_read_message_table_id < 0;
update status set last_read_receipt_sent_message_table_id = -(last_read_receipt_sent_message_table_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where last_read_receipt_sent_message_table_id > 0;
update status set last_read_receipt_sent_message_table_id = -last_read_receipt_sent_message_table_id  where last_read_receipt_sent_message_table_id < 0;
update status set last_read_message_table_id = -(last_read_message_table_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where last_read_message_table_id > 0;
update status set last_read_message_table_id = -last_read_message_table_id  where last_read_message_table_id < 0;
update status set first_unread_message_table_id = -(first_unread_message_table_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where first_unread_message_table_id > 0;
update status set first_unread_message_table_id = -first_unread_message_table_id  where first_unread_message_table_id < 0;
update status set autodownload_limit_message_table_id = -(autodownload_limit_message_table_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where autodownload_limit_message_table_id > 0;
update status set autodownload_limit_message_table_id = -autodownload_limit_message_table_id  where autodownload_limit_message_table_id < 0;
update messages_links set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update messages_links set message_row_id = -message_row_id  where message_row_id < 0;
update messages_vcards set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update messages_vcards set message_row_id = -message_row_id  where message_row_id < 0;
update messages_vcards_jids set message_row_id = -(message_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages")) where message_row_id > 0;
update messages_vcards_jids set message_row_id = -message_row_id  where message_row_id < 0;
-----------------------------------------------------------------------------
update messages_quotes set _id = -(_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages_quotes")) where _id > 0;
update messages_quotes set _id = -_id  where _id < 0;
update messages_quotes set quoted_row_id = -(quoted_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages_quotes")) where quoted_row_id > 0;
update messages_quotes set quoted_row_id = -quoted_row_id  where quoted_row_id < 0;
update messages set quoted_row_id = -(quoted_row_id + (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages_quotes")) where quoted_row_id > 0;
update messages set quoted_row_id = -quoted_row_id  where quoted_row_id < 0;
update messages_links set _id = -(_id +  (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages_links")) where _id > 0;
update messages_links set _id = -_id  where _id < 0;
update messages_vcards set _id = -(_id +  (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages_vcards")) where _id > 0;
update messages_vcards set _id = -_id  where _id < 0;
update messages_vcards_jids set _id = -(_id +  (SELECT seq FROM oldest.sqlite_sequence WHERE name="messages_vcards_jids")) where _id > 0;
update messages_vcards_jids set _id = -_id  where _id < 0;