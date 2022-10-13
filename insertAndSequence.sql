--
-- This script take the data from the newest database to insert into the oldest, exec connected on the oldest
--
--

ATTACH DATABASE '/home/benjamin/Bureau/samsung.db' AS newest;


insert or ignore into agent_devices  select * from newest.agent_devices;
insert or ignore into audio_data  select * from newest.audio_data;
insert or ignore into away_messages  select * from newest.away_messages;
insert or ignore into call_log  select * from newest.call_log;
insert or ignore into call_log_participant_v2  select * from newest.call_log_participant_v2;
-- add to set the value of unseen_message_reaction_count manually because sqlite was complaining about null constraint error that wasn't there
insert or ignore into chat(_id,archived,change_number_notified_message_row_id,created_timestamp,display_message_row_id,
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
insert or ignore into conversion_tuples  select * from newest.conversion_tuples;
insert or ignore into deleted_chat_job  select * from newest.deleted_chat_job;
insert or ignore into frequent  select * from newest.frequent;
insert or ignore into frequents  select * from newest.frequents;
insert or ignore into group_notification_version  select * from newest.group_notification_version;
insert or ignore into group_participant_device  select * from newest.group_participant_device;
insert or ignore into group_participant_user  select * from newest.group_participant_user;
insert or ignore into group_participants  select * from newest.group_participants;
insert or ignore into group_participants_history  select * from newest.group_participants_history;
insert or ignore into invoice_transactions  select * from newest.invoice_transactions;
insert or ignore into jid  select * from newest.jid;
insert or ignore into jid_map  select * from newest.jid_map;
insert or ignore into joinable_call_log  select * from newest.joinable_call_log;
insert or ignore into keywords  select * from newest.keywords;
insert or ignore into labeled_jid  select * from newest.labeled_jid;
insert or ignore into labeled_jids  select * from newest.labeled_jids;
insert or ignore into labeled_messages  select * from newest.labeled_messages;
insert or ignore into labeled_messages_fts  select * from newest.labeled_messages_fts;
insert or ignore into labeled_messages_fts_content  select * from newest.labeled_messages_fts_content;
insert or ignore into labeled_messages_fts_segdir  select * from newest.labeled_messages_fts_segdir;
insert or ignore into labeled_messages_fts_segments  select * from newest.labeled_messages_fts_segments;
insert or ignore into labels  select * from newest.labels;
insert or ignore into media_hash_thumbnail  select * from newest.media_hash_thumbnail;
insert or ignore into media_refs  select * from newest.media_refs;
insert or ignore into message  select * from newest.message;
insert or ignore into message_add_on  select * from newest.message_add_on;
insert or ignore into message_add_on_orphan  select * from newest.message_add_on_orphan;
insert or ignore into message_add_on_reaction  select * from newest.message_add_on_reaction;
insert or ignore into message_add_on_receipt_device  select * from newest.message_add_on_receipt_device;
insert or ignore into message_broadcast_ephemeral  select * from newest.message_broadcast_ephemeral;
insert or ignore into message_ephemeral  select * from newest.message_ephemeral;
insert or ignore into message_ephemeral_setting  select * from newest.message_ephemeral_setting;
insert or ignore into message_external_ad_content  select * from newest.message_external_ad_content;
insert or ignore into message_forwarded  select * from newest.message_forwarded;
insert or ignore into message_ftsv2  select * from newest.message_ftsv2;
insert or ignore into message_ftsv2_content  select * from newest.message_ftsv2_content;
insert or ignore into message_ftsv2_docsize  select * from newest.message_ftsv2_docsize;
insert or ignore into message_ftsv2_segdir  select * from newest.message_ftsv2_segdir;
insert or ignore into message_ftsv2_segments  select * from newest.message_ftsv2_segments;
insert or ignore into message_ftsv2_stat  select * from newest.message_ftsv2_stat;
insert or ignore into message_future  select * from newest.message_future;
insert or ignore into message_group_invite  select * from newest.message_group_invite;
insert or ignore into message_invoice  select * from newest.message_invoice;
insert or ignore into message_link  select * from newest.message_link;
insert or ignore into message_location  select * from newest.message_location;
insert or ignore into message_media  select * from newest.message_media;
insert or ignore into message_media_interactive_annotation  select * from newest.message_media_interactive_annotation;
insert or ignore into message_media_interactive_annotation_vertex  select * from newest.message_media_interactive_annotation_vertex;
insert or ignore into message_media_vcard_count  select * from newest.message_media_vcard_count;
insert or ignore into message_mentions  select * from newest.message_mentions;
insert or ignore into message_order  select * from newest.message_order;
insert or ignore into message_orphaned_edit  select * from newest.message_orphaned_edit;
insert or ignore into message_payment  select * from newest.message_payment;
insert or ignore into message_payment_invite  select * from newest.message_payment_invite;
insert or ignore into message_payment_status_update  select * from newest.message_payment_status_update;
insert or ignore into message_payment_transaction_reminder  select * from newest.message_payment_transaction_reminder;
insert or ignore into message_privacy_state  select * from newest.message_privacy_state;
insert or ignore into message_product  select * from newest.message_product;
insert or ignore into message_quote_invoice  select * from newest.message_quote_invoice;
insert or ignore into message_quoted  select * from newest.message_quoted;
insert or ignore into message_quoted_blank_reply  select * from newest.message_quoted_blank_reply;
insert or ignore into message_quoted_group_invite  select * from newest.message_quoted_group_invite;
insert or ignore into message_quoted_group_invite_legacy  select * from newest.message_quoted_group_invite_legacy;
insert or ignore into message_quoted_location  select * from newest.message_quoted_location;
insert or ignore into message_quoted_media  select * from newest.message_quoted_media;
insert or ignore into message_quoted_mentions  select * from newest.message_quoted_mentions;
insert or ignore into message_quoted_order  select * from newest.message_quoted_order;
insert or ignore into message_quoted_payment_invite  select * from newest.message_quoted_payment_invite;
insert or ignore into message_quoted_product  select * from newest.message_quoted_product;
insert or ignore into message_quoted_text  select * from newest.message_quoted_text;
insert or ignore into message_quoted_ui_elements  select * from newest.message_quoted_ui_elements;
insert or ignore into message_quoted_ui_elements_reply  select * from newest.message_quoted_ui_elements_reply;
insert or ignore into message_quoted_ui_elements_reply_legacy  select * from newest.message_quoted_ui_elements_reply_legacy;
insert or ignore into message_quoted_vcard  select * from newest.message_quoted_vcard;
insert or ignore into message_rating  select * from newest.message_rating;
insert or ignore into message_revoked  select * from newest.message_revoked;
insert or ignore into message_send_count  select * from newest.message_send_count;
insert or ignore into message_status_psa_campaign  select * from newest.message_status_psa_campaign;
insert or ignore into message_streaming_sidecar  select * from newest.message_streaming_sidecar;
insert or ignore into message_system  select * from newest.message_system;
insert or ignore into message_system_block_contact  select * from newest.message_system_block_contact;
insert or ignore into message_system_business_state  select * from newest.message_system_business_state;
insert or ignore into message_system_chat_participant  select * from newest.message_system_chat_participant;
insert or ignore into message_system_community_link_changed  select * from newest.message_system_community_link_changed;
insert or ignore into message_system_device_change  select * from newest.message_system_device_change;
insert or ignore into message_system_ephemeral_setting_not_applied  select * from newest.message_system_ephemeral_setting_not_applied;
insert or ignore into message_system_group  select * from newest.message_system_group;
insert or ignore into message_system_initial_privacy_provider  select * from newest.message_system_initial_privacy_provider;
insert or ignore into message_system_linked_group_call  select * from newest.message_system_linked_group_call;
insert or ignore into message_system_number_change  select * from newest.message_system_number_change;
insert or ignore into message_system_payment_invite_setup  select * from newest.message_system_payment_invite_setup;
insert or ignore into message_system_photo_change  select * from newest.message_system_photo_change;
insert or ignore into message_system_sibling_group_link_change  select * from newest.message_system_sibling_group_link_change;
insert or ignore into message_system_value_change  select * from newest.message_system_value_change;
insert or ignore into message_template  select * from newest.message_template;
insert or ignore into message_template_button  select * from newest.message_template_button;
insert or ignore into message_template_quoted  select * from newest.message_template_quoted;
insert or ignore into message_text  select * from newest.message_text;
insert or ignore into message_thumbnail  select * from newest.message_thumbnail;
insert or ignore into message_thumbnails  select * from newest.message_thumbnails;
insert or ignore into message_ui_elements  select * from newest.message_ui_elements;
insert or ignore into message_ui_elements_reply  select * from newest.message_ui_elements_reply;
insert or ignore into message_vcard  select * from newest.message_vcard;
insert or ignore into message_vcard_jid  select * from newest.message_vcard_jid;
insert or ignore into message_view_once_media  select * from newest.message_view_once_media;
insert or ignore into messages  select * from newest.messages;
insert or ignore into messages_fts  select * from newest.messages_fts;
insert or ignore into messages_fts_content  select * from newest.messages_fts_content;
insert or ignore into messages_fts_segdir  select * from newest.messages_fts_segdir;
insert or ignore into messages_fts_segments  select * from newest.messages_fts_segments;
insert or ignore into messages_hydrated_four_row_template  select * from newest.messages_hydrated_four_row_template;
insert or ignore into messages_links  select * from newest.messages_links;
insert or ignore into messages_quotes  select * from newest.messages_quotes;
insert or ignore into messages_quotes_payment_invite_legacy  select * from newest.messages_quotes_payment_invite_legacy;
insert or ignore into messages_vcards  select * from newest.messages_vcards;
insert or ignore into messages_vcards_jids  select * from newest.messages_vcards_jids;
insert or ignore into missed_call_log_participant  select * from newest.missed_call_log_participant;
insert or ignore into missed_call_logs  select * from newest.missed_call_logs;
insert or ignore into mms_thumbnail_metadata  select * from newest.mms_thumbnail_metadata;
insert or ignore into pay_transaction  select * from newest.pay_transaction;
insert or ignore into pay_transactions  select * from newest.pay_transactions;
insert or ignore into payment_background  select * from newest.payment_background;
insert or ignore into payment_background_order  select * from newest.payment_background_order;
insert or ignore into played_self_receipt  select * from newest.played_self_receipt;
insert or ignore into primary_device_version  select * from newest.primary_device_version;
insert or ignore into props  select * from newest.props;
insert or ignore into quick_replies  select * from newest.quick_replies;
insert or ignore into quick_reply_attachments  select * from newest.quick_reply_attachments;
insert or ignore into quick_reply_keywords  select * from newest.quick_reply_keywords;
insert or ignore into quick_reply_usage  select * from newest.quick_reply_usage;
insert or ignore into quoted_message_order  select * from newest.quoted_message_order;
insert or ignore into quoted_message_product  select * from newest.quoted_message_product;
insert or ignore into receipt_device  select * from newest.receipt_device;
insert or ignore into receipt_orphaned  select * from newest.receipt_orphaned;
insert or ignore into receipt_user  select * from newest.receipt_user;
insert or ignore into receipts  select * from newest.receipts;
insert or ignore into status  select * from newest.status;
insert or ignore into status_list  select * from newest.status_list;
insert or ignore into user_device  select * from newest.user_device;
insert or ignore into user_device_info  select * from newest.user_device_info;
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
-- Next 2 lines are legacy tables which are duplicated and left here
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM messages) WHERE name="messages";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM messages_vcards_jids) WHERE name="messages_vcards_jids";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_media_interactive_annotation) WHERE name="message_media_interactive_annotation";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_media_interactive_annotation_vertex) WHERE name="message_media_interactive_annotation_vertex";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message) WHERE name="message";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_link) WHERE name="message_link";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_quoted) WHERE name="message_quoted";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_vcard) WHERE name="message_vcard";
UPDATE sqlite_sequence SET seq = (SELECT MAX(_id) FROM message_vcard_jid) WHERE name="message_vcard_jid";
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

