--
-- This script take the data from the newest database to insert into the oldest, exec connected on the oldest
--
--

ATTACH DATABASE '/path/to/newest_database.db' AS newest;


insert  into agent_devices  select * from newest.agent_devices;
insert  into audio_data  select * from newest.audio_data;
insert  into away_messages  select * from newest.away_messages;
insert  into call_log  select * from newest.call_log;
insert  into call_log_participant_v2  select * from newest.call_log_participant_v2;
-- add to set the value of unseen_message_reaction_count manually because sqlite was complaining about null constraint error that wasn't there
insert  into chat(_id,archived,change_number_notified_message_row_id,created_timestamp,display_message_row_id,
display_message_sort_id,ephemeral_disappearing_messages_initiator,ephemeral_expiration,ephemeral_setting_timestamp,
gen,group_type,growth_lock_expiration_ts,growth_lock_level,hidden,jid_row_id,last_important_message_row_id,
last_message_reaction_row_id,last_message_row_id,last_message_sort_id,last_read_ephemeral_message_row_id,
last_read_message_row_id,last_read_message_sort_id,last_read_receipt_sent_message_row_id,last_read_receipt_sent_message_sort_id,
last_seen_message_reaction_row_id,mod_tag,plaintext_disabled,show_group_description,sort_timestamp,spam_detection,subject,
unseen_earliest_message_received_time,unseen_important_message_count,unseen_message_count,
unseen_missed_calls_count,unseen_row_count,vcard_ui_dismissed,unseen_message_reaction_count)  select _id,archived,change_number_notified_message_row_id,created_timestamp,display_message_row_id,
display_message_sort_id,ephemeral_disappearing_messages_initiator,ephemeral_expiration,ephemeral_setting_timestamp,
gen,group_type,growth_lock_expiration_ts,growth_lock_level,hidden,jid_row_id,last_important_message_row_id,
last_message_reaction_row_id,last_message_row_id,last_message_sort_id,last_read_ephemeral_message_row_id,
last_read_message_row_id,last_read_message_sort_id,last_read_receipt_sent_message_row_id,last_read_receipt_sent_message_sort_id,
last_seen_message_reaction_row_id,mod_tag,plaintext_disabled,show_group_description,sort_timestamp,spam_detection,subject,
unseen_earliest_message_received_time,unseen_important_message_count,unseen_message_count,
unseen_missed_calls_count,unseen_row_count,vcard_ui_dismissed,0 from newest.chat;
insert  into conversion_tuples  select * from newest.conversion_tuples;
insert  into deleted_chat_job  select * from newest.deleted_chat_job;
insert  into frequent  select * from newest.frequent;
insert  into frequents  select * from newest.frequents;
insert  into group_notification_version  select * from newest.group_notification_version;
insert  into group_participant_device  select * from newest.group_participant_device;
insert  into group_participant_user  select * from newest.group_participant_user;
insert  into group_participants  select * from newest.group_participants;
insert  into group_participants_history  select * from newest.group_participants_history;
insert  into invoice_transactions  select * from newest.invoice_transactions;
insert  into jid  select * from newest.jid;
insert  into jid_map  select * from newest.jid_map;
insert  into joinable_call_log  select * from newest.joinable_call_log;
insert  into keywords  select * from newest.keywords;
insert  into labeled_jid  select * from newest.labeled_jid;
insert  into labeled_jids  select * from newest.labeled_jids;
insert  into labeled_messages  select * from newest.labeled_messages;
insert  into labeled_messages_fts  select * from newest.labeled_messages_fts;
insert  into labeled_messages_fts_content  select * from newest.labeled_messages_fts_content;
insert  into labeled_messages_fts_segdir  select * from newest.labeled_messages_fts_segdir;
insert  into labeled_messages_fts_segments  select * from newest.labeled_messages_fts_segments;
insert  into labels  select * from newest.labels;
insert  into media_hash_thumbnail  select * from newest.media_hash_thumbnail;
insert  into media_refs  select * from newest.media_refs;
insert  into message  select * from newest.message;
insert  into message_add_on  select * from newest.message_add_on;
insert  into message_add_on_orphan  select * from newest.message_add_on_orphan;
insert  into message_add_on_reaction  select * from newest.message_add_on_reaction;
insert  into message_add_on_receipt_device  select * from newest.message_add_on_receipt_device;
insert  into message_broadcast_ephemeral  select * from newest.message_broadcast_ephemeral;
insert  into message_ephemeral  select * from newest.message_ephemeral;
insert  into message_ephemeral_setting  select * from newest.message_ephemeral_setting;
insert  into message_external_ad_content  select * from newest.message_external_ad_content;
insert  into message_forwarded  select * from newest.message_forwarded;
insert  into message_ftsv2  select * from newest.message_ftsv2;
insert  into message_ftsv2_content  select * from newest.message_ftsv2_content;
insert  into message_ftsv2_docsize  select * from newest.message_ftsv2_docsize;
insert  into message_ftsv2_segdir  select * from newest.message_ftsv2_segdir;
insert  into message_ftsv2_segments  select * from newest.message_ftsv2_segments;
insert  into message_ftsv2_stat  select * from newest.message_ftsv2_stat;
insert  into message_future  select * from newest.message_future;
insert  into message_group_invite  select * from newest.message_group_invite;
insert  into message_invoice  select * from newest.message_invoice;
insert  into message_link  select * from newest.message_link;
insert  into message_location  select * from newest.message_location;
insert  into message_media  select * from newest.message_media;
insert  into message_media_interactive_annotation  select * from newest.message_media_interactive_annotation;
insert  into message_media_interactive_annotation_vertex  select * from newest.message_media_interactive_annotation_vertex;
insert  into message_media_vcard_count  select * from newest.message_media_vcard_count;
insert  into message_mentions  select * from newest.message_mentions;
insert  into message_order  select * from newest.message_order;
insert  into message_orphaned_edit  select * from newest.message_orphaned_edit;
insert  into message_payment  select * from newest.message_payment;
insert  into message_payment_invite  select * from newest.message_payment_invite;
insert  into message_payment_status_update  select * from newest.message_payment_status_update;
insert  into message_payment_transaction_reminder  select * from newest.message_payment_transaction_reminder;
insert  into message_privacy_state  select * from newest.message_privacy_state;
insert  into message_product  select * from newest.message_product;
insert  into message_quote_invoice  select * from newest.message_quote_invoice;
insert  into message_quoted  select * from newest.message_quoted;
insert  into message_quoted_blank_reply  select * from newest.message_quoted_blank_reply;
insert  into message_quoted_group_invite  select * from newest.message_quoted_group_invite;
insert  into message_quoted_group_invite_legacy  select * from newest.message_quoted_group_invite_legacy;
insert  into message_quoted_location  select * from newest.message_quoted_location;
insert  into message_quoted_media  select * from newest.message_quoted_media;
insert  into message_quoted_mentions  select * from newest.message_quoted_mentions;
insert  into message_quoted_order  select * from newest.message_quoted_order;
insert  into message_quoted_payment_invite  select * from newest.message_quoted_payment_invite;
insert  into message_quoted_product  select * from newest.message_quoted_product;
insert  into message_quoted_text  select * from newest.message_quoted_text;
insert  into message_quoted_ui_elements  select * from newest.message_quoted_ui_elements;
insert  into message_quoted_ui_elements_reply  select * from newest.message_quoted_ui_elements_reply;
insert  into message_quoted_ui_elements_reply_legacy  select * from newest.message_quoted_ui_elements_reply_legacy;
insert  into message_quoted_vcard  select * from newest.message_quoted_vcard;
insert  into message_rating  select * from newest.message_rating;
insert  into message_revoked  select * from newest.message_revoked;
insert  into message_send_count  select * from newest.message_send_count;
insert  into message_status_psa_campaign  select * from newest.message_status_psa_campaign;
insert  into message_streaming_sidecar  select * from newest.message_streaming_sidecar;
insert  into message_system  select * from newest.message_system;
insert  into message_system_block_contact  select * from newest.message_system_block_contact;
insert  into message_system_business_state  select * from newest.message_system_business_state;
insert  into message_system_chat_participant  select * from newest.message_system_chat_participant;
insert  into message_system_community_link_changed  select * from newest.message_system_community_link_changed;
insert  into message_system_device_change  select * from newest.message_system_device_change;
insert  into message_system_ephemeral_setting_not_applied  select * from newest.message_system_ephemeral_setting_not_applied;
insert  into message_system_group  select * from newest.message_system_group;
insert  into message_system_initial_privacy_provider  select * from newest.message_system_initial_privacy_provider;
insert  into message_system_linked_group_call  select * from newest.message_system_linked_group_call;
insert  into message_system_number_change  select * from newest.message_system_number_change;
insert  into message_system_payment_invite_setup  select * from newest.message_system_payment_invite_setup;
insert  into message_system_photo_change  select * from newest.message_system_photo_change;
insert  into message_system_sibling_group_link_change  select * from newest.message_system_sibling_group_link_change;
insert  into message_system_value_change  select * from newest.message_system_value_change;
insert  into message_template  select * from newest.message_template;
insert  into message_template_button  select * from newest.message_template_button;
insert  into message_template_quoted  select * from newest.message_template_quoted;
insert  into message_text  select * from newest.message_text;
insert  into message_thumbnail  select * from newest.message_thumbnail;
insert  into message_thumbnails  select * from newest.message_thumbnails;
insert  into message_ui_elements  select * from newest.message_ui_elements;
insert  into message_ui_elements_reply  select * from newest.message_ui_elements_reply;
insert  into message_vcard  select * from newest.message_vcard;
insert  into message_vcard_jid  select * from newest.message_vcard_jid;
insert  into message_view_once_media  select * from newest.message_view_once_media;
insert  into messages  select * from newest.messages;
insert  into messages_fts  select * from newest.messages_fts;
insert  into messages_fts_content  select * from newest.messages_fts_content;
insert  into messages_fts_segdir  select * from newest.messages_fts_segdir;
insert  into messages_fts_segments  select * from newest.messages_fts_segments;
insert  into messages_hydrated_four_row_template  select * from newest.messages_hydrated_four_row_template;
insert  into messages_links  select * from newest.messages_links;
insert  into messages_quotes  select * from newest.messages_quotes;
insert  into messages_quotes_payment_invite_legacy  select * from newest.messages_quotes_payment_invite_legacy;
insert  into messages_vcards  select * from newest.messages_vcards;
insert  into messages_vcards_jids  select * from newest.messages_vcards_jids;
insert  into missed_call_log_participant  select * from newest.missed_call_log_participant;
insert  into missed_call_logs  select * from newest.missed_call_logs;
insert  into mms_thumbnail_metadata  select * from newest.mms_thumbnail_metadata;
insert  into pay_transaction  select * from newest.pay_transaction;
insert  into pay_transactions  select * from newest.pay_transactions;
insert  into payment_background  select * from newest.payment_background;
insert  into payment_background_order  select * from newest.payment_background_order;
insert  into played_self_receipt  select * from newest.played_self_receipt;
insert  into primary_device_version  select * from newest.primary_device_version;
insert  into props  select * from newest.props;
insert  into quick_replies  select * from newest.quick_replies;
insert  into quick_reply_attachments  select * from newest.quick_reply_attachments;
insert  into quick_reply_keywords  select * from newest.quick_reply_keywords;
insert  into quick_reply_usage  select * from newest.quick_reply_usage;
insert  into quoted_message_order  select * from newest.quoted_message_order;
insert  into quoted_message_product  select * from newest.quoted_message_product;
insert  into receipt_device  select * from newest.receipt_device;
insert  into receipt_orphaned  select * from newest.receipt_orphaned;
insert  into receipt_user  select * from newest.receipt_user;
insert  into receipts  select * from newest.receipts;
insert  into status  select * from newest.status;
insert  into status_list  select * from newest.status_list;
insert  into user_device  select * from newest.user_device;
insert  into user_device_info  select * from newest.user_device_info;
---------------------------------------------------------------------------------------------------
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM call_log) WHERE name="call_log";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM call_log_participant_v2) WHERE name="call_log_participant_v2";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM chat) WHERE name="chat";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM deleted_chat_job) WHERE name="deleted_chat_job";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM frequents) WHERE name="frequents";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM group_participant_device) WHERE name="group_participant_device";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM group_participant_user) WHERE name="group_participant_user";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM group_participants) WHERE name="group_participants";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM group_participants_history) WHERE name="group_participants_history";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM jid) WHERE name="jid";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM media_refs) WHERE name="media_refs";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM messages) WHERE name="messages";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_media_interactive_annotation) WHERE name="message_media_interactive_annotation";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_media_interactive_annotation_vertex) WHERE name="message_media_interactive_annotation_vertex";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_vcard_jid) WHERE name="message_vcard_jid";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM messages) WHERE name="messages";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM messages_links) WHERE name="messages_links";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM messages_quotes) WHERE name="messages_quotes";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM messages_vcards) WHERE name="messages_vcards";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM messages_vcards_jids) WHERE name="messages_vcards_jids";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM missed_call_log_participant) WHERE name="missed_call_log_participant";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM missed_call_logs) WHERE name="missed_call_logs";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM props) WHERE name="props";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM receipt_device) WHERE name="receipt_device";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM receipt_orphaned) WHERE name="receipt_orphaned";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM receipt_user) WHERE name="receipt_user";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM receipts) WHERE name="receipts";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM status) WHERE name="status";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM status_list) WHERE name="status_list";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM user_device) WHERE name="user_device";


