
/* Drop Indexes */

DROP INDEX IF EXISTS index_activities_on_activity_type;
DROP INDEX IF EXISTS index_activities_on_lesson_id;
DROP INDEX IF EXISTS index_activities_on_state;
DROP INDEX IF EXISTS index_activity_items_on_activity_id;
DROP INDEX IF EXISTS index_activity_items_on_item_id;
DROP INDEX IF EXISTS activity_join_index;
DROP INDEX IF EXISTS index_aliases_on_response_id;
DROP INDEX IF EXISTS idx_activity_attemptable_and_type_lesson_enrollment;
DROP INDEX IF EXISTS index_attempts_on_enrollment_id;
DROP INDEX IF EXISTS index_attempts_on_response_id;
DROP INDEX IF EXISTS index_attempts_on_student_id;
DROP INDEX IF EXISTS index_attempts_on_student_id_final_attemptable_type;
DROP INDEX IF EXISTS index_attempts_archived_on_attemptable_type_and_attemptable_id;
DROP INDEX IF EXISTS index_attempts_archived_on_classroom_id;
DROP INDEX IF EXISTS index_attempts_archived_on_lesson_enrollment_id;
DROP INDEX IF EXISTS index_attempts_archived_on_student_id;
DROP INDEX IF EXISTS index_audit_log_entries_on_owner_id_and_owner_type;
DROP INDEX IF EXISTS index_audit_log_entries_on_recipient_id_and_recipient_type;
DROP INDEX IF EXISTS index_audit_log_entries_on_trackable_id_and_trackable_type;
DROP INDEX IF EXISTS index_avatars_on_avatar;
DROP INDEX IF EXISTS index_avatars_on_avatar_key;
DROP INDEX IF EXISTS index_avatar_access_restrictions_on_classroom_id_and_weekday;
DROP INDEX IF EXISTS index_benchmark_attempts_on_benchmark_test_id;
DROP INDEX IF EXISTS index_benchmark_attempts_on_item_step_id;
DROP INDEX IF EXISTS index_benchmark_tests_on_benchmark_type;
DROP INDEX IF EXISTS index_benchmark_tests_on_student_id;
DROP INDEX IF EXISTS index_charities_customers_on_charity_id;
DROP INDEX IF EXISTS index_charities_customers_on_customer_id;
DROP INDEX IF EXISTS index_classrooms_on_clever_id;
DROP INDEX IF EXISTS index_classrooms_on_school_id_and_active;
DROP INDEX IF EXISTS index_classrooms_on_sync_id;
DROP INDEX IF EXISTS index_classroom_goals_on_classroom_id_and_redeemeds;
DROP INDEX IF EXISTS index_classroom_goals_on_goal_id;
DROP INDEX IF EXISTS index_classroom_students_on_classroom_id_and_student_id;
DROP INDEX IF EXISTS index_classrooms_students_on_classroom_id;
DROP INDEX IF EXISTS index_classrooms_students_on_student_id;
DROP INDEX IF EXISTS index_classroom_teachings_on_classroom_id_and_user_id;
DROP INDEX IF EXISTS index_classroom_teachings_on_classroom_id;
DROP INDEX IF EXISTS index_classroom_teachings_on_user_id;
DROP INDEX IF EXISTS index_clever_sightings_on_entity_type_and_entity_clever_id;
DROP INDEX IF EXISTS index_clever_sightings_on_sync_batch_id;
DROP INDEX IF EXISTS index_contests_on_end_date_and_active_and_featured_flag;
DROP INDEX IF EXISTS index_contests_customers_on_contest_id_and_customer_id;
DROP INDEX IF EXISTS index_customers_tgrmsearch_name;
DROP INDEX IF EXISTS index_customer_administrations_on_customer_id_and_user_id;
DROP INDEX IF EXISTS index_customer_administrations_on_customer_id;
DROP INDEX IF EXISTS index_customer_administrations_on_user_id;
DROP INDEX IF EXISTS index_customer_archivings_on_customer_id;
DROP INDEX IF EXISTS index_customer_archivings_on_user_id;
DROP INDEX IF EXISTS index_customer_regions_on_customer_id;
DROP INDEX IF EXISTS data_warehouse_events_model_id_idx;
DROP INDEX IF EXISTS index_districts_on_clever_id;
DROP INDEX IF EXISTS index_districts_on_customer_id;
DROP INDEX IF EXISTS index_districts_on_sync_id;
DROP INDEX IF EXISTS index_districts_tgrmsearch_name;
DROP INDEX IF EXISTS index_district_administrations_on_district_id_and_user_id;
DROP INDEX IF EXISTS index_district_administrations_on_district_id;
DROP INDEX IF EXISTS index_district_administrations_on_user_id;
DROP INDEX IF EXISTS index_donations_on_class_id;
DROP INDEX IF EXISTS index_donations_on_donateable_id_and_donateable_type;
DROP INDEX IF EXISTS index_donations_on_school_id;
DROP INDEX IF EXISTS index_donations_on_student_id;
DROP INDEX IF EXISTS index_enrollments_on_classroom_id;
DROP INDEX IF EXISTS index_enrollments_on_pathway_id;
DROP INDEX IF EXISTS index_enrollments_on_student_id;
DROP INDEX IF EXISTS index_enrollment_activities_by_lesson_enrollment_and_activity;
DROP INDEX IF EXISTS index_enrollment_activities_on_activity_id;
DROP INDEX IF EXISTS index_enrollment_activities_on_lesson_enrollment_id;
DROP INDEX IF EXISTS index_feedbacks_on_response_id;
DROP INDEX IF EXISTS index_feedback_steps_on_feedback_id;
DROP INDEX IF EXISTS index_feed_items_on_classroom_id;
DROP INDEX IF EXISTS index_feed_items_on_student_id;
DROP INDEX IF EXISTS index_feed_items_on_type;
DROP INDEX IF EXISTS index_feed_item_interactions_on_feed_item_id;
DROP INDEX IF EXISTS index_feed_item_interactions_on_interaction_type;
DROP INDEX IF EXISTS index_feed_item_interactions_on_student_id;
DROP INDEX IF EXISTS index_feed_item_interactions_on_user_id;
DROP INDEX IF EXISTS index_file_uploads_on_uploadable_id;
DROP INDEX IF EXISTS index_file_upload_requests_on_creator_id;
DROP INDEX IF EXISTS index_file_upload_requests_on_customer_id;
DROP INDEX IF EXISTS index_file_upload_requests_on_district_id;
DROP INDEX IF EXISTS index_file_upload_requests_on_sync_batch_id;
DROP INDEX IF EXISTS index_requestor_email;
DROP INDEX IF EXISTS index_requestor_name;
DROP INDEX IF EXISTS fk_followables;
DROP INDEX IF EXISTS fk_follows;
DROP INDEX IF EXISTS index_glossary_terms_on_active;
DROP INDEX IF EXISTS index_hints_on_active;
DROP INDEX IF EXISTS index_hints_on_item_step_id;
DROP INDEX IF EXISTS index_hints_on_version_of_hint_id;
DROP INDEX IF EXISTS index_hint_steps_on_hint_id;
DROP INDEX IF EXISTS index_hint_views_on_enrollment_id;
DROP INDEX IF EXISTS index_hint_views_on_hint_id_and_enrollment_id;
DROP INDEX IF EXISTS index_hint_views_on_student_id;
DROP INDEX IF EXISTS index_images_on_imageable_id_and_imageable_type;
DROP INDEX IF EXISTS index_imports_on_school_id;
DROP INDEX IF EXISTS index_imports_on_sync_batch_id;
DROP INDEX IF EXISTS index_imports_on_user_id;
DROP INDEX IF EXISTS index_items_on_active_and_state;
DROP INDEX IF EXISTS index_items_on_form_name;
DROP INDEX IF EXISTS index_items_on_grade_level_id;
DROP INDEX IF EXISTS index_items_on_item_presenter_id;
DROP INDEX IF EXISTS index_items_on_strand;
DROP INDEX IF EXISTS index_items_on_test_name;
DROP INDEX IF EXISTS index_items_on_user_id;
DROP INDEX IF EXISTS index_items_on_version_of_item_id;
DROP INDEX IF EXISTS index_item_steps_object_model;
DROP INDEX IF EXISTS index_item_steps_on_item_id;
DROP INDEX IF EXISTS index_item_steps_on_item_step_group_id;
DROP INDEX IF EXISTS index_item_steps_on_version_of_item_step_id;
DROP INDEX IF EXISTS index_item_steps_stem;
DROP INDEX IF EXISTS index_item_step_groups_on_item_id;
DROP INDEX IF EXISTS index_lessons_on_lesson_category_id;
DROP INDEX IF EXISTS index_lessons_standards_on_lesson_id_and_standard_id;
DROP INDEX IF EXISTS index_lesson_enrollments_on_enrollment_id_and_passed;
DROP INDEX IF EXISTS index_lesson_enrollments_on_lesson_id;
DROP INDEX IF EXISTS index_lesson_requisites_on_ancestor_id;
DROP INDEX IF EXISTS index_lesson_requisites_on_descendant_id;
DROP INDEX IF EXISTS index_lesson_requisites_on_direct;
DROP INDEX IF EXISTS index_live_help_transcripts_on_appinstance;
DROP INDEX IF EXISTS index_live_help_transcripts_on_item_step_id;
DROP INDEX IF EXISTS index_live_help_transcripts_on_lesson_enrollment_id;
DROP INDEX IF EXISTS index_live_help_transcripts_on_student_id;
DROP INDEX IF EXISTS index_live_help_transcripts_on_user_id;
DROP INDEX IF EXISTS index_math_words_on_active;
DROP INDEX IF EXISTS index_messages_on_classroom_ids;
DROP INDEX IF EXISTS index_messages_on_contest_ids;
DROP INDEX IF EXISTS index_messages_on_customer_ids;
DROP INDEX IF EXISTS index_messages_on_roles;
DROP INDEX IF EXISTS index_messages_on_school_ids;
DROP INDEX IF EXISTS index_messages_on_state_ids;
DROP INDEX IF EXISTS index_messages_on_student_ids;
DROP INDEX IF EXISTS index_messages_on_user_ids;
DROP INDEX IF EXISTS index_norms_on_gl_period_quantile;
DROP INDEX IF EXISTS index_notifications_on_user_id;
DROP INDEX IF EXISTS index_parents_students_on_parent_id_and_student_id;
DROP INDEX IF EXISTS index_parents_students_on_parent_id;
DROP INDEX IF EXISTS index_parents_students_on_student_id;
DROP INDEX IF EXISTS index_pathways_on_creator_id;
DROP INDEX IF EXISTS index_pathways_on_customer_id;
DROP INDEX IF EXISTS index_pathways_on_grade_level_id;
DROP INDEX IF EXISTS index_pathways_on_state_id;
DROP INDEX IF EXISTS index_pathway_lessons_on_pathway_id_and_lesson_id;
DROP INDEX IF EXISTS index_pathway_lessons_on_pathway_id_and_position;
DROP INDEX IF EXISTS index_point_transactions_on_transactable_id_and_type;
DROP INDEX IF EXISTS index_point_transactions_on_transactor_id_and_transactor_type;
DROP INDEX IF EXISTS index_preferences_on_thing_type_and_thing_id_and_var;
DROP INDEX IF EXISTS index_provisioning_uploads_on_site_id;
DROP INDEX IF EXISTS index_purchases_on_buyer_id_and_buyer_type_and_purchased_type;
DROP INDEX IF EXISTS index_readable_texts_on_readable_id_and_readable_type;
DROP INDEX IF EXISTS index_read_messages_on_readable_id_and_readable_type;
DROP INDEX IF EXISTS index_responses_on_item_step_id;
DROP INDEX IF EXISTS index_responses_on_version_of_response_id;
DROP INDEX IF EXISTS index_review_flags_on_thing_type_and_thing_id_and_var;
DROP INDEX IF EXISTS index_schools_on_clever_id;
DROP INDEX IF EXISTS index_schools_on_customer_id;
DROP INDEX IF EXISTS index_schools_on_district_id_and_active;
DROP INDEX IF EXISTS index_schools_on_name;
DROP INDEX IF EXISTS index_schools_on_state_id;
DROP INDEX IF EXISTS index_schools_on_sync_id;
DROP INDEX IF EXISTS index_schools_tgrmsearch_name;
DROP INDEX IF EXISTS index_school_administrations_on_school_id_and_user_id;
DROP INDEX IF EXISTS index_school_administrations_on_school_id;
DROP INDEX IF EXISTS index_school_administrations_on_user_id;
DROP INDEX IF EXISTS index_school_assignments_on_school_id_and_user_id;
DROP INDEX IF EXISTS index_school_assignments_on_school_id;
DROP INDEX IF EXISTS index_school_assignments_on_user_id;
DROP INDEX IF EXISTS index_sharded_images_on_imageable_id_and_imageable_type;
DROP INDEX IF EXISTS index_sites_on_siteable_type_and_siteable_id;
DROP INDEX IF EXISTS index_sites_on_site_code;
DROP INDEX IF EXISTS index_snippets_on_snippetable_id_and_snippetable_type;
DROP INDEX IF EXISTS index_standards_on_standard_category_id;
DROP INDEX IF EXISTS index_standard_categories_on_state_standard_id;
DROP INDEX IF EXISTS index_state_standards_on_state_id;
DROP INDEX IF EXISTS index_stuck_students_trackings_on_stuck_status;
DROP INDEX IF EXISTS index_stuck_students_trackings_on_student_id;
DROP INDEX IF EXISTS index_students_on_site_id_and_username;
DROP INDEX IF EXISTS index_students_on_alt_student_information_number;
DROP INDEX IF EXISTS index_students_on_bunchball_username;
DROP INDEX IF EXISTS index_students_on_clever_id;
DROP INDEX IF EXISTS index_students_on_customer_id_and_is_active;
DROP INDEX IF EXISTS index_students_on_default_pathway_id;
DROP INDEX IF EXISTS index_students_on_district_id_and_is_active;
DROP INDEX IF EXISTS index_students_on_email;
DROP INDEX IF EXISTS index_students_on_full_name;
DROP INDEX IF EXISTS index_students_on_school_id_and_is_active;
DROP INDEX IF EXISTS index_students_on_sso_id;
DROP INDEX IF EXISTS index_students_on_student_information_number;
DROP INDEX IF EXISTS index_students_on_sync_id;
DROP INDEX IF EXISTS index_students_on_user_id;
DROP INDEX IF EXISTS index_students_on_username;
DROP INDEX IF EXISTS index_students_trgmsearch_first_name;
DROP INDEX IF EXISTS index_students_trgmsearch_last_name;
DROP INDEX IF EXISTS index_students_trgmsearch_username;
DROP INDEX IF EXISTS index_student_file_imports_on_created_at;
DROP INDEX IF EXISTS index_student_file_imports_on_school_id;
DROP INDEX IF EXISTS index_student_file_imports_on_status;
DROP INDEX IF EXISTS index_student_file_imports_on_user_id;
DROP INDEX IF EXISTS index_student_settings_on_thing_type_and_thing_id_and_var;
DROP INDEX IF EXISTS index_sync_batches_on_parent_entity_type_and_parent_entity_id;
DROP INDEX IF EXISTS index_sync_batch_entries_on_entry;
DROP INDEX IF EXISTS index_sync_batch_entries_on_sync_batch_id;
DROP INDEX IF EXISTS index_sync_sightings_on_entity_type_and_entity_sync_id;
DROP INDEX IF EXISTS index_sync_sightings_on_sync_batch_id;
DROP INDEX IF EXISTS taggings_idx;
DROP INDEX IF EXISTS index_taggings_on_taggable_id_and_taggable_type_and_context;
DROP INDEX IF EXISTS index_taggings_on_tagger_id_and_tagger_type;
DROP INDEX IF EXISTS index_translations_on_id_type_language;
DROP INDEX IF EXISTS index_translations_on_translatable_id_and_translatable_type;
DROP INDEX IF EXISTS index_users_on_clever_id;
DROP INDEX IF EXISTS index_users_on_customer_id;
DROP INDEX IF EXISTS index_users_on_sso_id;
DROP INDEX IF EXISTS index_users_on_sync_id;
DROP INDEX IF EXISTS index_users_tgrmsearch_email;
DROP INDEX IF EXISTS index_users_tgrmsearch_first_name;
DROP INDEX IF EXISTS index_users_tgrmsearch_last_name;
DROP INDEX IF EXISTS index_user_connectivity_results_on_customer_id;
DROP INDEX IF EXISTS index_user_connectivity_results_on_user_id;



/* Drop Views */

DROP VIEW IF EXISTS public.pg_stat_statements;



/* Drop Tables */

DROP TABLE IF EXISTS public.activities;
DROP TABLE IF EXISTS public.activity_items;
DROP TABLE IF EXISTS public.activity_join;
DROP TABLE IF EXISTS public.aliases;
DROP TABLE IF EXISTS public.archive_tracking;
DROP TABLE IF EXISTS public.attempts;
DROP TABLE IF EXISTS public.attempts_archived;
DROP TABLE IF EXISTS public.audit_log_entries;
DROP TABLE IF EXISTS public.avatars;
DROP TABLE IF EXISTS public.avatar_access_restrictions;
DROP TABLE IF EXISTS public.avatar_pieces;
DROP TABLE IF EXISTS public.backgrounds;
DROP TABLE IF EXISTS public.benchmark_attempts;
DROP TABLE IF EXISTS public.benchmark_tests;
DROP TABLE IF EXISTS public.categorized_lessons;
DROP TABLE IF EXISTS public.charities;
DROP TABLE IF EXISTS public.charities_customers;
DROP TABLE IF EXISTS public.classrooms;
DROP TABLE IF EXISTS public.classroom_goals;
DROP TABLE IF EXISTS public.classroom_students;
DROP TABLE IF EXISTS public.classroom_teachings;
DROP TABLE IF EXISTS public.clever_sightings;
DROP TABLE IF EXISTS public.contests;
DROP TABLE IF EXISTS public.contests_customers;
DROP TABLE IF EXISTS public.file_upload_requests;
DROP TABLE IF EXISTS public.imports;
DROP TABLE IF EXISTS public.schools;
DROP TABLE IF EXISTS public.customers;
DROP TABLE IF EXISTS public.customer_administrations;
DROP TABLE IF EXISTS public.customer_archivings;
DROP TABLE IF EXISTS public.customer_regions;
DROP TABLE IF EXISTS public.custom_backgrounds;
DROP TABLE IF EXISTS public.data_warehouse_events;
DROP TABLE IF EXISTS public.districts;
DROP TABLE IF EXISTS public.district_administrations;
DROP TABLE IF EXISTS public.donations;
DROP TABLE IF EXISTS public.enrollments;
DROP TABLE IF EXISTS public.enrollment_activities;
DROP TABLE IF EXISTS public.evaluated_feedbacks;
DROP TABLE IF EXISTS public.feedbacks;
DROP TABLE IF EXISTS public.feedback_steps;
DROP TABLE IF EXISTS public.feed_items;
DROP TABLE IF EXISTS public.feed_item_interactions;
DROP TABLE IF EXISTS public.file_uploads;
DROP TABLE IF EXISTS public.follows;
DROP TABLE IF EXISTS public.formulas;
DROP TABLE IF EXISTS public.game_assets_versions;
DROP TABLE IF EXISTS public.gamification_challenges;
DROP TABLE IF EXISTS public.glossary_terms;
DROP TABLE IF EXISTS public.goals;
DROP TABLE IF EXISTS public.grade_levels;
DROP TABLE IF EXISTS public.hints;
DROP TABLE IF EXISTS public.hint_steps;
DROP TABLE IF EXISTS public.hint_views;
DROP TABLE IF EXISTS public.images;
DROP TABLE IF EXISTS public.items;
DROP TABLE IF EXISTS public.item_presenters;
DROP TABLE IF EXISTS public.item_steps;
DROP TABLE IF EXISTS public.item_step_groups;
DROP TABLE IF EXISTS public.lessons;
DROP TABLE IF EXISTS public.lessons_standards;
DROP TABLE IF EXISTS public.lesson_categories;
DROP TABLE IF EXISTS public.lesson_enrollments;
DROP TABLE IF EXISTS public.lesson_requisites;
DROP TABLE IF EXISTS public.live_help_transcripts;
DROP TABLE IF EXISTS public.math_words;
DROP TABLE IF EXISTS public.messages;
DROP TABLE IF EXISTS public.meta_metrics_norms;
DROP TABLE IF EXISTS public.notifications;
DROP TABLE IF EXISTS public.omniusers;
DROP TABLE IF EXISTS public.omni_auth_configs;
DROP TABLE IF EXISTS public.opt_ins;
DROP TABLE IF EXISTS public.parents_students;
DROP TABLE IF EXISTS public.pathways;
DROP TABLE IF EXISTS public.pathway_lessons;
DROP TABLE IF EXISTS public.phrases;
DROP TABLE IF EXISTS public.point_transactions;
DROP TABLE IF EXISTS public.preferences;
DROP TABLE IF EXISTS public.product_feedbacks;
DROP TABLE IF EXISTS public.provisioning_uploads;
DROP TABLE IF EXISTS public.purchases;
DROP TABLE IF EXISTS public.readable_texts;
DROP TABLE IF EXISTS public.read_messages;
DROP TABLE IF EXISTS public.reporting_groups;
DROP TABLE IF EXISTS public.reporting_groups_schools;
DROP TABLE IF EXISTS public.report_monkeys;
DROP TABLE IF EXISTS public.responses;
DROP TABLE IF EXISTS public.response_prompts;
DROP TABLE IF EXISTS public.review_flags;
DROP TABLE IF EXISTS public.schema_migrations;
DROP TABLE IF EXISTS public.school_administrations;
DROP TABLE IF EXISTS public.school_assignments;
DROP TABLE IF EXISTS public.services_schedule_entries;
DROP TABLE IF EXISTS public.sharded_images;
DROP TABLE IF EXISTS public.students;
DROP TABLE IF EXISTS public.sites;
DROP TABLE IF EXISTS public.snippets;
DROP TABLE IF EXISTS public.standards;
DROP TABLE IF EXISTS public.standard_categories;
DROP TABLE IF EXISTS public.states;
DROP TABLE IF EXISTS public.state_standards;
DROP TABLE IF EXISTS public.stuck_students_trackings;
DROP TABLE IF EXISTS public.student_file_imports;
DROP TABLE IF EXISTS public.student_settings;
DROP TABLE IF EXISTS public.sync_batch_entries;
DROP TABLE IF EXISTS public.sync_batches;
DROP TABLE IF EXISTS public.sync_sightings;
DROP TABLE IF EXISTS public.taggings;
DROP TABLE IF EXISTS public.tags;
DROP TABLE IF EXISTS public.translations;
DROP TABLE IF EXISTS public.units;
DROP TABLE IF EXISTS public.users;
DROP TABLE IF EXISTS public.user_connectivity_results;
DROP TABLE IF EXISTS public.user_file_imports;



/* Drop Sequences */

DROP SEQUENCE IF EXISTS public.activities_id_seq;
DROP SEQUENCE IF EXISTS public.activity_items_id_seq;
DROP SEQUENCE IF EXISTS public.activity_join_id_seq;
DROP SEQUENCE IF EXISTS public.aliases_id_seq;
DROP SEQUENCE IF EXISTS public.archive_tracking_id_seq;
DROP SEQUENCE IF EXISTS public.attempts_archived_id_seq;
DROP SEQUENCE IF EXISTS public.attempts_id_seq;
DROP SEQUENCE IF EXISTS public.audit_log_entries_id_seq;
DROP SEQUENCE IF EXISTS public.avatars_id_seq;
DROP SEQUENCE IF EXISTS public.avatar_access_restrictions_id_seq;
DROP SEQUENCE IF EXISTS public.avatar_pieces_id_seq;
DROP SEQUENCE IF EXISTS public.backgrounds_id_seq;
DROP SEQUENCE IF EXISTS public.benchmark_attempts_id_seq;
DROP SEQUENCE IF EXISTS public.benchmark_tests_id_seq;
DROP SEQUENCE IF EXISTS public.categorized_lessons_id_seq;
DROP SEQUENCE IF EXISTS public.charities_customers_id_seq;
DROP SEQUENCE IF EXISTS public.charities_id_seq;
DROP SEQUENCE IF EXISTS public.classrooms_id_seq;
DROP SEQUENCE IF EXISTS public.classroom_goals_id_seq;
DROP SEQUENCE IF EXISTS public.classroom_students_id_seq;
DROP SEQUENCE IF EXISTS public.classroom_teachings_id_seq;
DROP SEQUENCE IF EXISTS public.clever_sightings_id_seq;
DROP SEQUENCE IF EXISTS public.contests_customers_id_seq;
DROP SEQUENCE IF EXISTS public.contests_id_seq;
DROP SEQUENCE IF EXISTS public.customers_id_seq;
DROP SEQUENCE IF EXISTS public.customer_administrations_id_seq;
DROP SEQUENCE IF EXISTS public.customer_archivings_id_seq;
DROP SEQUENCE IF EXISTS public.customer_regions_id_seq;
DROP SEQUENCE IF EXISTS public.custom_backgrounds_id_seq;
DROP SEQUENCE IF EXISTS public.data_warehouse_events_id_seq;
DROP SEQUENCE IF EXISTS public.districts_id_seq;
DROP SEQUENCE IF EXISTS public.district_administrations_id_seq;
DROP SEQUENCE IF EXISTS public.donations_id_seq;
DROP SEQUENCE IF EXISTS public.enrollments_id_seq;
DROP SEQUENCE IF EXISTS public.enrollment_activities_id_seq;
DROP SEQUENCE IF EXISTS public.enrollment_activity_attemptables_id_seq;
DROP SEQUENCE IF EXISTS public.evaluated_feedbacks_id_seq;
DROP SEQUENCE IF EXISTS public.feedbacks_id_seq;
DROP SEQUENCE IF EXISTS public.feedback_steps_id_seq;
DROP SEQUENCE IF EXISTS public.feed_items_id_seq;
DROP SEQUENCE IF EXISTS public.feed_item_interactions_id_seq;
DROP SEQUENCE IF EXISTS public.file_uploads_id_seq;
DROP SEQUENCE IF EXISTS public.file_upload_requests_id_seq;
DROP SEQUENCE IF EXISTS public.follows_id_seq;
DROP SEQUENCE IF EXISTS public.formulas_id_seq;
DROP SEQUENCE IF EXISTS public.game_assets_versions_id_seq;
DROP SEQUENCE IF EXISTS public.gamification_challenges_id_seq;
DROP SEQUENCE IF EXISTS public.glossary_terms_id_seq;
DROP SEQUENCE IF EXISTS public.goals_id_seq;
DROP SEQUENCE IF EXISTS public.grade_levels_id_seq;
DROP SEQUENCE IF EXISTS public.hints_id_seq;
DROP SEQUENCE IF EXISTS public.hint_steps_id_seq;
DROP SEQUENCE IF EXISTS public.hint_views_id_seq;
DROP SEQUENCE IF EXISTS public.images_id_seq;
DROP SEQUENCE IF EXISTS public.imports_id_seq;
DROP SEQUENCE IF EXISTS public.items_id_seq;
DROP SEQUENCE IF EXISTS public.item_presenters_id_seq;
DROP SEQUENCE IF EXISTS public.item_steps_id_seq;
DROP SEQUENCE IF EXISTS public.item_step_groups_id_seq;
DROP SEQUENCE IF EXISTS public.lessons_id_seq;
DROP SEQUENCE IF EXISTS public.lessons_standards_id_seq;
DROP SEQUENCE IF EXISTS public.lesson_categories_id_seq;
DROP SEQUENCE IF EXISTS public.lesson_enrollments_id_seq;
DROP SEQUENCE IF EXISTS public.lesson_requisites_id_seq;
DROP SEQUENCE IF EXISTS public.live_help_transcripts_id_seq;
DROP SEQUENCE IF EXISTS public.math_words_id_seq;
DROP SEQUENCE IF EXISTS public.messages_id_seq;
DROP SEQUENCE IF EXISTS public.meta_metrics_norms_id_seq;
DROP SEQUENCE IF EXISTS public.notifications_id_seq;
DROP SEQUENCE IF EXISTS public.omniusers_id_seq;
DROP SEQUENCE IF EXISTS public.omni_auth_configs_id_seq;
DROP SEQUENCE IF EXISTS public.opt_ins_id_seq;
DROP SEQUENCE IF EXISTS public.pathways_id_seq;
DROP SEQUENCE IF EXISTS public.pathway_lessons_id_seq;
DROP SEQUENCE IF EXISTS public.phrases_id_seq;
DROP SEQUENCE IF EXISTS public.point_transactions_id_seq;
DROP SEQUENCE IF EXISTS public.preferences_id_seq;
DROP SEQUENCE IF EXISTS public.product_feedbacks_id_seq;
DROP SEQUENCE IF EXISTS public.provisioning_uploads_id_seq;
DROP SEQUENCE IF EXISTS public.purchases_id_seq;
DROP SEQUENCE IF EXISTS public.readable_texts_id_seq;
DROP SEQUENCE IF EXISTS public.read_messages_id_seq;
DROP SEQUENCE IF EXISTS public.reporting_groups_id_seq;
DROP SEQUENCE IF EXISTS public.report_monkeys_id_seq;
DROP SEQUENCE IF EXISTS public.responses_id_seq;
DROP SEQUENCE IF EXISTS public.response_prompts_id_seq;
DROP SEQUENCE IF EXISTS public.review_flags_id_seq;
DROP SEQUENCE IF EXISTS public.schools_id_seq;
DROP SEQUENCE IF EXISTS public.school_administrations_id_seq;
DROP SEQUENCE IF EXISTS public.school_assignments_id_seq;
DROP SEQUENCE IF EXISTS public.school_csv_imports_id_seq;
DROP SEQUENCE IF EXISTS public.services_schedule_entries_id_seq;
DROP SEQUENCE IF EXISTS public.sharded_images_id_seq;
DROP SEQUENCE IF EXISTS public.sites_id_seq;
DROP SEQUENCE IF EXISTS public.sketches_id_seq;
DROP SEQUENCE IF EXISTS public.snippets_id_seq;
DROP SEQUENCE IF EXISTS public.standards_id_seq;
DROP SEQUENCE IF EXISTS public.standard_categories_id_seq;
DROP SEQUENCE IF EXISTS public.states_id_seq;
DROP SEQUENCE IF EXISTS public.state_standards_id_seq;
DROP SEQUENCE IF EXISTS public.stuck_students_trackings_id_seq;
DROP SEQUENCE IF EXISTS public.students_id_seq;
DROP SEQUENCE IF EXISTS public.student_csv_imports_id_seq;
DROP SEQUENCE IF EXISTS public.student_file_imports_id_seq;
DROP SEQUENCE IF EXISTS public.student_settings_id_seq;
DROP SEQUENCE IF EXISTS public.sync_batches_id_seq;
DROP SEQUENCE IF EXISTS public.sync_batch_entries_id_seq;
DROP SEQUENCE IF EXISTS public.sync_sightings_id_seq;
DROP SEQUENCE IF EXISTS public.taggings_id_seq;
DROP SEQUENCE IF EXISTS public.tags_id_seq;
DROP SEQUENCE IF EXISTS public.translations_id_seq;
DROP SEQUENCE IF EXISTS public.units_id_seq;
DROP SEQUENCE IF EXISTS public.users_id_seq;
DROP SEQUENCE IF EXISTS public.user_connectivity_results_id_seq;
DROP SEQUENCE IF EXISTS public.user_csv_imports_id_seq;
DROP SEQUENCE IF EXISTS public.user_file_imports_id_seq;




/* Create Sequences */

CREATE SEQUENCE public.enrollment_activity_attemptables_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
CREATE SEQUENCE public.school_csv_imports_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
CREATE SEQUENCE public.sketches_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
CREATE SEQUENCE public.student_csv_imports_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
CREATE SEQUENCE public.user_csv_imports_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;



/* Create Tables */

CREATE TABLE public.activities
(
	id serial NOT NULL,
	name varchar,
	activity_type varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	state varchar,
	lesson_id int,
	position int,
	randomize_items boolean,
	CONSTRAINT activities_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.activity_items
(
	id serial NOT NULL,
	activity_id int,
	item_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	position int,
	CONSTRAINT activity_items_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.activity_join
(
	id serial NOT NULL,
	lesson_id int,
	activity_id int,
	attemptable_id int,
	attemptable_type varchar,
	activity_position int,
	activity_item_position int,
	item_step_groups_position int,
	attemptable_position int,
	CONSTRAINT activity_join_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.aliases
(
	id serial NOT NULL,
	text varchar,
	response_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT aliases_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.archive_tracking
(
	id serial NOT NULL,
	customer_name varchar NOT NULL,
	customer_id int NOT NULL,
	school_name varchar NOT NULL,
	school_id int NOT NULL,
	school_shard varchar NOT NULL,
	archive_checksum varchar NOT NULL,
	archive_url varchar NOT NULL,
	archive_size varchar NOT NULL,
	seconds_to_archive int NOT NULL,
	seconds_to_restore int NOT NULL,
	schema_version varchar NOT NULL,
	created_at timestamp NOT NULL,
	CONSTRAINT archive_tracking_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.attempts
(
	id bigserial NOT NULL,
	text text,
	correct boolean DEFAULT 'false' NOT NULL,
	response_id int,
	student_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	final boolean DEFAULT 'false' NOT NULL,
	pathway_id int NOT NULL,
	activity_id int NOT NULL,
	lesson_enrollment_id int NOT NULL,
	attemptable_type varchar,
	attemptable_id int,
	earned_points int,
	possible_points int,
	enrollment_id int,
	time_to_solve int DEFAULT 0 NOT NULL,
	math_problem boolean,
	parts int,
	correct_parts int,
	CONSTRAINT attempts_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.attempts_archived
(
	id bigserial NOT NULL,
	classroom_id int,
	student_id int,
	pathway_id int NOT NULL,
	pathway_is_demo boolean,
	lesson_id int,
	created_at timestamp NOT NULL,
	correct boolean DEFAULT 'false' NOT NULL,
	final boolean DEFAULT 'false' NOT NULL,
	activity_id int NOT NULL,
	lesson_enrollment_id int NOT NULL,
	attemptable_type varchar,
	attemptable_id int,
	earned_points int,
	possible_points int,
	enrollment_id int,
	time_to_solve int DEFAULT 0 NOT NULL,
	math_problem boolean,
	activity_type varchar,
	item_id int,
	response_id int,
	text text,
	parts int,
	correct_parts int,
	CONSTRAINT attempts_archived_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.audit_log_entries
(
	id serial NOT NULL,
	trackable_id int,
	trackable_type varchar,
	owner_id int,
	owner_type varchar,
	key varchar,
	parameters text,
	recipient_id int,
	recipient_type varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.avatars
(
	id serial NOT NULL,
	student_id int UNIQUE,
	avatar  DEFAULT '{}'::jsonb,
	avatar_key varchar,
	CONSTRAINT avatars_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.avatar_access_restrictions
(
	id serial NOT NULL,
	classroom_id int,
	weekday varchar,
	start_hour varchar,
	start_minute varchar,
	start_period varchar,
	end_hour varchar,
	end_minute varchar,
	end_period varchar,
	is_active boolean,
	created_at timestamp,
	updated_at timestamp,
	CONSTRAINT avatar_access_restrictions_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.avatar_pieces
(
	id serial NOT NULL,
	price int DEFAULT 100 NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	path varchar DEFAULT '''''::character varying' NOT NULL,
	piece_id varchar NOT NULL,
	default_color varchar,
	category varchar NOT NULL,
	has_skin boolean DEFAULT 'false' NOT NULL,
	has_colorizable boolean DEFAULT 'false' NOT NULL,
	dual_layer boolean DEFAULT 'false' NOT NULL,
	display_name text,
	active boolean DEFAULT 'true' NOT NULL,
	layers  DEFAULT '{}'::text[],
	CONSTRAINT avatar_pieces_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.backgrounds
(
	id serial NOT NULL,
	custom_background_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT backgrounds_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.benchmark_attempts
(
	id serial NOT NULL,
	benchmark_test_id int NOT NULL,
	item_step_id int NOT NULL,
	correct boolean NOT NULL,
	time_to_solve int DEFAULT 0 NOT NULL,
	text text,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT benchmark_attempts_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.benchmark_tests
(
	id serial NOT NULL,
	student_id int NOT NULL,
	started_at timestamp,
	completed_at timestamp,
	benchmark_type varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	quantile int,
	uncertainty int,
	invalidated boolean,
	percentile int,
	nce int,
	performance_level varchar,
	rounded_quantile int,
	simulated boolean,
	CONSTRAINT benchmark_tests_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.categorized_lessons
(
	id serial NOT NULL,
	lesson_id int,
	lesson_category_id int,
	CONSTRAINT categorized_lessons_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.charities
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	name varchar,
	description text,
	active boolean DEFAULT 'true',
	points int DEFAULT 5000 NOT NULL,
	bunchball_user varchar,
	bunchball_action varchar,
	dollar_limit int DEFAULT 7500 NOT NULL,
	goal_reached_text text,
	CONSTRAINT charities_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.charities_customers
(
	id serial NOT NULL,
	charity_id int,
	customer_id int,
	CONSTRAINT charities_customers_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.classrooms
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	school_id int,
	name varchar,
	guid varchar,
	external_id varchar,
	active boolean DEFAULT 'true' NOT NULL,
	allow_calculator boolean DEFAULT 'true' NOT NULL,
	allow_ttm_managed_enrollments boolean DEFAULT 'true' NOT NULL,
	clever_id varchar DEFAULT '''''::character varying',
	sync_id varchar,
	allow_lesson_player_sound_effects boolean DEFAULT 'true' NOT NULL,
	CONSTRAINT classrooms_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.classroom_goals
(
	id serial NOT NULL,
	classroom_id int NOT NULL,
	goal_id int NOT NULL,
	points_redeemed int DEFAULT 0,
	redeemed boolean DEFAULT 'false' NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	active boolean DEFAULT 'true',
	CONSTRAINT classroom_goals_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.classroom_students
(
	id serial NOT NULL,
	classroom_id int,
	student_id int,
	created_at timestamp,
	updated_at timestamp,
	CONSTRAINT classroom_students_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.classroom_teachings
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	classroom_id int,
	user_id int,
	CONSTRAINT classroom_teachings_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.clever_sightings
(
	id serial NOT NULL,
	sync_batch_id int,
	entity_type varchar,
	entity_clever_id varchar,
	classroom_assigned_user_ids ,
	classroom_assigned_student_ids ,
	CONSTRAINT clever_sightings_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.contests
(
	id serial NOT NULL,
	name varchar,
	is_news boolean DEFAULT 'true',
	start_date timestamp,
	end_date timestamp,
	description text,
	rules varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	secondary_image varchar,
	home_page_hero_image varchar,
	active boolean DEFAULT 'true',
	featured_flag varchar,
	CONSTRAINT contests_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.contests_customers
(
	id serial NOT NULL,
	contest_id int,
	customer_id int,
	CONSTRAINT contests_customers_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.customers
(
	id serial NOT NULL,
	name varchar,
	guid varchar,
	license_type varchar,
	number_of_seats int,
	contract_end_date date,
	salesforce_id varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	state_id int,
	status varchar,
	promotional_copy text,
	api_key varchar,
	is_demo boolean DEFAULT 'false',
	student_count int,
	hide_common_core boolean DEFAULT 'false',
	nces_district_id varchar,
	is_higher_ed boolean DEFAULT 'false',
	benchmark_min_days_between int,
	allow_second_languages boolean DEFAULT 'true' NOT NULL,
	require_student_info_num boolean DEFAULT 'false' NOT NULL,
	student_info_length int,
	restrict_student_info_numericality boolean DEFAULT 'false' NOT NULL,
	default_state_id int,
	assessments_enabled boolean DEFAULT 'true',
	curriculum_enabled boolean DEFAULT 'true',
	CONSTRAINT customers_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.customer_administrations
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	customer_id int,
	user_id int,
	CONSTRAINT customer_administrations_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.customer_archivings
(
	id serial NOT NULL,
	customer_id int,
	user_id int,
	date_selected_at timestamp,
	archive_date date,
	created_at timestamp,
	updated_at timestamp,
	archived boolean DEFAULT 'false' NOT NULL,
	archived_at timestamp,
	CONSTRAINT customer_archivings_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.customer_regions
(
	id serial NOT NULL,
	customer_id int NOT NULL,
	name varchar NOT NULL,
	position int NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT customer_regions_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.custom_backgrounds
(
	id serial NOT NULL,
	name text,
	active boolean DEFAULT 'true' NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT custom_backgrounds_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.data_warehouse_events
(
	id serial NOT NULL,
	fact_name varchar NOT NULL,
	model_id int NOT NULL,
	created_at timestamp,
	event_at timestamp NOT NULL,
	payload text,
	CONSTRAINT data_warehouse_events_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.districts
(
	id serial NOT NULL,
	name varchar,
	customer_id int,
	active boolean DEFAULT 'true',
	created_at timestamp,
	updated_at timestamp,
	clever_id varchar DEFAULT '''''::character varying',
	last_clever_event varchar,
	username_prefix varchar,
	student_count int,
	clever_auth_token varchar DEFAULT '''''::character varying',
	nces_id varchar,
	lti_client_id varchar,
	lti_client_secret varchar,
	benchmark_min_days_between int,
	clever_last_paused_at timestamp,
	allow_student_create boolean DEFAULT 'true' NOT NULL,
	sync_id varchar,
	CONSTRAINT districts_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.district_administrations
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	district_id int,
	user_id int,
	CONSTRAINT district_administrations_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.donations
(
	id serial NOT NULL,
	donateable_id int NOT NULL,
	donateable_type varchar NOT NULL,
	student_id int NOT NULL,
	class_id int,
	school_id int,
	district_id int,
	customer_id int,
	points int NOT NULL,
	dollars int NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	refunded boolean DEFAULT 'false',
	CONSTRAINT donations_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.enrollments
(
	id serial NOT NULL,
	student_id int,
	pathway_id int,
	created_at timestamp,
	updated_at timestamp,
	classroom_id int,
	placement_test_completed boolean,
	completed boolean DEFAULT 'false',
	completed_at timestamp,
	hint_view_count int DEFAULT '-1'::integer,
	archived boolean,
	withdrawn boolean DEFAULT 'false',
	use_benchmark_remediation boolean,
	CONSTRAINT enrollments_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.enrollment_activities
(
	id serial NOT NULL,
	activity_id int,
	lesson_enrollment_id int,
	completed boolean DEFAULT 'false',
	excluded boolean DEFAULT 'false',
	excluded_reason varchar,
	position int,
	points_possible int DEFAULT 0,
	points_achieved int DEFAULT 0,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	activity_type varchar,
	attemptable_ids  DEFAULT '{}'::integer[],
	attemptable_ids_remaining  DEFAULT '{}'::integer[],
	attemptable_ids_problem  DEFAULT '{}'::integer[],
	attemptable_type varchar,
	CONSTRAINT enrollment_activities_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.evaluated_feedbacks
(
	id serial NOT NULL,
	item_step_id int,
	operator varchar,
	value float DEFAULT 0.0,
	position int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	text text,
	CONSTRAINT evaluated_feedbacks_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.feedbacks
(
	id serial NOT NULL,
	response_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT feedbacks_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.feedback_steps
(
	id serial NOT NULL,
	text text,
	feedback_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	position int,
	CONSTRAINT feedback_steps_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.feed_items
(
	id serial NOT NULL,
	student_id int,
	classroom_id int,
	item_type varchar,
	context text,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT feed_items_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.feed_item_interactions
(
	id serial NOT NULL,
	student_id int,
	user_id int,
	feed_item_id int,
	interaction_type varchar,
	message_text text,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	message_id int,
	CONSTRAINT feed_item_interactions_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.file_uploads
(
	id serial NOT NULL,
	file_name varchar,
	bucket varchar,
	key varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	uploadable_id int,
	uploadable_type varchar,
	CONSTRAINT file_uploads_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.file_upload_requests
(
	id serial NOT NULL,
	customer_id int,
	district_id int,
	creator_id int,
	link_token varchar,
	requestor_email varchar,
	requestor_name varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	submitted_at timestamp,
	status varchar DEFAULT '''pending_upload''::character varying' NOT NULL,
	sync_batch_id int,
	CONSTRAINT file_upload_requests_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.follows
(
	id serial NOT NULL,
	followable_id int NOT NULL,
	followable_type varchar NOT NULL,
	follower_id int NOT NULL,
	follower_type varchar NOT NULL,
	blocked boolean DEFAULT 'false' NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT follows_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.formulas
(
	id serial NOT NULL,
	name varchar,
	active boolean DEFAULT 'true',
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT formulas_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.game_assets_versions
(
	id serial NOT NULL,
	version varchar,
	name varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT game_assets_versions_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.gamification_challenges
(
	id serial NOT NULL,
	name varchar NOT NULL,
	start_date date NOT NULL,
	end_date date NOT NULL,
	start_time varchar DEFAULT '''00:00''::character varying' NOT NULL,
	end_time varchar DEFAULT '''23:59''::character varying' NOT NULL,
	lessons_passed int DEFAULT 1 NOT NULL,
	points int NOT NULL,
	finished boolean DEFAULT 'false' NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT gamification_challenges_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.glossary_terms
(
	id serial NOT NULL,
	name varchar,
	content ,
	active boolean DEFAULT 'false' NOT NULL,
	CONSTRAINT glossary_terms_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.goals
(
	id serial NOT NULL,
	title varchar,
	description text,
	goal_type varchar,
	points int,
	active boolean DEFAULT 'true' NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT goals_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.grade_levels
(
	id serial NOT NULL,
	guid varchar,
	name varchar,
	number int,
	sort_order int,
	is_active boolean DEFAULT 'true' NOT NULL,
	is_assignable boolean DEFAULT 'true' NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT grade_levels_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.hints
(
	id serial NOT NULL,
	item_step_id int,
	position int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	version_of_hint_id int,
	active boolean DEFAULT 'true' NOT NULL,
	CONSTRAINT hints_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.hint_steps
(
	id serial NOT NULL,
	text text,
	hint_id int,
	position int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT hint_steps_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.hint_views
(
	id serial NOT NULL,
	hint_id int,
	student_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	enrollment_id int NOT NULL,
	item_step_id int,
	hint_index int,
	lesson_enrollment_id int,
	CONSTRAINT hint_views_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.images
(
	id serial NOT NULL,
	image varchar,
	imageable_id int,
	imageable_type varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	notes text,
	CONSTRAINT images_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.imports
(
	id serial NOT NULL,
	user_id int,
	sync_batch_id int,
	school_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	import_type text,
	wizard_data  DEFAULT '{}'::jsonb NOT NULL,
	CONSTRAINT imports_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.items
(
	id serial NOT NULL,
	state varchar DEFAULT '''New''::character varying',
	jit_id int,
	item_number int,
	grade_level_id int,
	use_for_placement boolean DEFAULT 'false' NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	active boolean DEFAULT 'true' NOT NULL,
	guid varchar,
	item_presenter_id int,
	version_of_item_id int,
	user_id int,
	test_name varchar,
	form_name varchar,
	strand int,
	qsc_id int,
	dok_level int,
	mm_cms_id varchar,
	player_settings text DEFAULT '''{}''::text',
	qsc_measure int,
	benchmark_position int,
	CONSTRAINT items_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.item_presenters
(
	id serial NOT NULL,
	rows int,
	cols int,
	name varchar,
	steps int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	css_class varchar,
	item_type varchar,
	CONSTRAINT item_presenters_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.item_steps
(
	id serial NOT NULL,
	stem text,
	item_id int,
	position int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	guid varchar,
	item_step_group_id int,
	unit_number varchar,
	unknown boolean DEFAULT 'false',
	responses_display_class varchar,
	version_of_item_step_id int,
	object_model text DEFAULT '''{}''::text',
	evaluation_precision int DEFAULT 2 NOT NULL,
	guessing_threshold int DEFAULT 0 NOT NULL,
	guessing_metadata text DEFAULT '''{}''::text' NOT NULL,
	CONSTRAINT item_steps_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.item_step_groups
(
	id serial NOT NULL,
	name varchar,
	position int,
	item_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT item_step_groups_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.lessons
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	guid varchar,
	name varchar,
	grade_level_id int,
	active boolean DEFAULT 'false' NOT NULL,
	live_help_allowed boolean DEFAULT 'false' NOT NULL,
	display_text text,
	unit_id int,
	is_booster_pack boolean DEFAULT 'false',
	is_final boolean DEFAULT 'false',
	lesson_category_id int,
	retired boolean DEFAULT 'false',
	CONSTRAINT lessons_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.lessons_standards
(
	id serial NOT NULL,
	lesson_id int,
	standard_id int,
	CONSTRAINT lessons_standards_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.lesson_categories
(
	id serial NOT NULL,
	name varchar NOT NULL,
	created_at timestamp,
	updated_at timestamp,
	CONSTRAINT lesson_categories_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.lesson_enrollments
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	enrollment_id int NOT NULL,
	lesson_id int NOT NULL,
	position int NOT NULL,
	reason varchar NOT NULL,
	passed boolean,
	tested_out boolean,
	pre_quiz_score float,
	post_quiz_score float,
	earned_points int,
	completed_at timestamp,
	other_enrollments_failed_count int,
	remediation_for_id int,
	placement_for_lesson_id int,
	time_to_solve int DEFAULT 0,
	possible_points int DEFAULT 0,
	archived boolean,
	problems_solved int,
	first_attempt_at timestamp,
	adjusted_grade_level int,
	simulated boolean,
	bonus_points int,
	CONSTRAINT lesson_enrollments_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.lesson_requisites
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	ancestor_id int,
	descendant_id int,
	direct boolean NOT NULL,
	count int,
	position int,
	CONSTRAINT lesson_requisites_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.live_help_transcripts
(
	id serial NOT NULL,
	user_id int,
	student_id int,
	item_step_id int,
	lesson_enrollment_id int,
	engaged_at timestamp,
	ended_at timestamp,
	transcript text,
	reason varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	session_type varchar,
	appinstance varchar,
	classroom_id int,
	stale_exported boolean,
	origin varchar DEFAULT '''{}''::character varying' NOT NULL,
	student_user_agent varchar,
	teacher_user_agent varchar,
	flash_audio_clicks int DEFAULT 0,
	wb_transcript text,
	wb_message_count int,
	rtc_audio_clicks int DEFAULT 0,
	CONSTRAINT live_help_transcripts_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.math_words
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	guid varchar,
	name varchar,
	description text,
	active boolean DEFAULT 'true',
	CONSTRAINT math_words_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.messages
(
	id serial NOT NULL,
	subject varchar,
	body text,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	ttm_message boolean DEFAULT 'false',
	state_ids  DEFAULT '{}'::integer[],
	roles  DEFAULT '{}'::text[],
	customer_ids  DEFAULT '{}'::integer[],
	school_ids  DEFAULT '{}'::integer[],
	user_ids  DEFAULT '{}'::integer[],
	contest_ids  DEFAULT '{}'::integer[],
	student_ids  DEFAULT '{}'::integer[],
	classroom_ids  DEFAULT '{}'::integer[],
	CONSTRAINT messages_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.meta_metrics_norms
(
	id serial NOT NULL,
	grade_level_number int,
	period varchar,
	quantile int,
	percentile int,
	stanine int,
	nce int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT meta_metrics_norms_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.notifications
(
	id serial NOT NULL,
	user_id int NOT NULL,
	content text NOT NULL,
	read boolean DEFAULT 'false' NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT notifications_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.omniusers
(
	id serial NOT NULL,
	provider varchar,
	uid varchar,
	omniuserable_id int,
	omniuserable_type varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT omniusers_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.omni_auth_configs
(
	id serial NOT NULL,
	name varchar,
	strategy varchar,
	json text,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT omni_auth_configs_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.opt_ins
(
	id serial NOT NULL,
	user_id int,
	active boolean DEFAULT 'false',
	opt_in_at timestamp,
	opt_out_at timestamp,
	product varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT opt_ins_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.parents_students
(
	parent_id int,
	student_id int
) WITHOUT OIDS;


CREATE TABLE public.pathways
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	name varchar,
	grade_level_id int,
	state_id int,
	skip_problem_solving_process boolean DEFAULT 'false' NOT NULL,
	allow_test_out boolean DEFAULT 'true' NOT NULL,
	require_pre_quiz boolean DEFAULT 'false' NOT NULL,
	creator_id int,
	customer_id int,
	use_remediation boolean DEFAULT 'true' NOT NULL,
	published boolean DEFAULT 'false',
	demo boolean DEFAULT 'false',
	is_default boolean DEFAULT 'false',
	pathway_lessons_by_grade text,
	use_benchmark_remediation boolean DEFAULT 'true',
	CONSTRAINT pathways_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.pathway_lessons
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	pathway_id int,
	lesson_id int,
	position int,
	CONSTRAINT pathway_lessons_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.phrases
(
	id serial NOT NULL,
	user_id int,
	phrase text,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT phrases_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.point_transactions
(
	id serial NOT NULL,
	amount int DEFAULT 0 NOT NULL,
	transactable_id int,
	transactable_type varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	transactor_id int NOT NULL,
	transactor_type varchar NOT NULL,
	reason text,
	CONSTRAINT point_transactions_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.preferences
(
	id serial NOT NULL,
	var varchar NOT NULL,
	value text,
	thing_id int,
	thing_type varchar(30),
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT preferences_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.product_feedbacks
(
	id serial NOT NULL,
	submitted_by int NOT NULL,
	from_url varchar NOT NULL,
	feedback_text text NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT product_feedbacks_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.provisioning_uploads
(
	id serial NOT NULL,
	creator_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	submitted_at timestamp,
	status varchar DEFAULT '''pending_upload''::character varying' NOT NULL,
	sync_batch_id int,
	site_id int,
	CONSTRAINT provisioning_uploads_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.purchases
(
	id serial NOT NULL,
	price int NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	buyer_id int,
	buyer_type varchar,
	purchased_id int,
	purchased_type varchar,
	refunded boolean DEFAULT 'false',
	CONSTRAINT purchases_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.readable_texts
(
	id serial NOT NULL,
	text text,
	readable_id int,
	readable_type varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT readable_texts_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.read_messages
(
	id serial NOT NULL,
	readable_id int,
	readable_type varchar,
	message_id int,
	CONSTRAINT read_messages_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.reporting_groups
(
	id serial NOT NULL,
	name varchar NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT reporting_groups_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.reporting_groups_schools
(
	reporting_group_id int,
	school_id int
) WITHOUT OIDS;


CREATE TABLE public.report_monkeys
(
	id serial NOT NULL,
	name varchar,
	sql text,
	start_at timestamp,
	end_at timestamp,
	emails text,
	active boolean,
	interval varchar,
	index_of_interval int,
	row_titles text,
	description text,
	warehouse_type varchar,
	CONSTRAINT report_monkeys_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.responses
(
	id serial NOT NULL,
	rationale text,
	is_correct boolean DEFAULT 'false' NOT NULL,
	position int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	item_step_id int,
	response_text text,
	guid varchar,
	version_of_response_id int,
	active boolean DEFAULT 'true' NOT NULL,
	CONSTRAINT responses_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.response_prompts
(
	id serial NOT NULL,
	item_step_id int,
	text text,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT response_prompts_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.review_flags
(
	id serial NOT NULL,
	var varchar NOT NULL,
	value text,
	thing_id int,
	thing_type varchar(30),
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT review_flags_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.schema_migrations
(
	version varchar NOT NULL UNIQUE
) WITHOUT OIDS;


CREATE TABLE public.schools
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	customer_id int NOT NULL,
	name varchar,
	guid varchar,
	external_id varchar,
	active boolean DEFAULT 'true' NOT NULL,
	time_zone varchar,
	district_id int NOT NULL,
	average_completed_lessons numeric DEFAULT 0.0,
	shard_name varchar,
	clever_id varchar DEFAULT '''''::character varying',
	customer_region_id int,
	is_home_school boolean DEFAULT 'false',
	nces_id varchar,
	sync_id varchar,
	state_id int,
	CONSTRAINT schools_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.school_administrations
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	school_id int,
	user_id int,
	CONSTRAINT school_administrations_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.school_assignments
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	school_id int,
	user_id int,
	CONSTRAINT school_assignments_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.services_schedule_entries
(
	id serial NOT NULL,
	service varchar,
	weekday varchar,
	start_time varchar,
	end_time varchar,
	enabled boolean,
	created_at timestamp,
	updated_at timestamp,
	CONSTRAINT services_schedule_entries_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.sharded_images
(
	id serial NOT NULL,
	image varchar,
	imageable_id int,
	imageable_type varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	notes text,
	movie_data varchar DEFAULT '''{"hit_points":[]}''::character varying',
	movie varchar,
	CONSTRAINT sharded_images_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.sites
(
	id serial NOT NULL,
	site_code varchar NOT NULL,
	created_at timestamp,
	updated_at timestamp,
	siteable_id int NOT NULL,
	siteable_type varchar NOT NULL,
	CONSTRAINT sites_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.snippets
(
	id serial NOT NULL,
	snippetable_id int,
	snippetable_type varchar,
	language varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	female_voice varchar,
	legacy_female_voice_url varchar,
	CONSTRAINT snippets_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.standards
(
	id serial NOT NULL,
	guid varchar,
	code varchar,
	details text,
	position int,
	standard_category_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT standards_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.standard_categories
(
	id serial NOT NULL,
	name varchar(600),
	guid varchar,
	description text,
	state_standard_id int,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	position int,
	CONSTRAINT standard_categories_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.states
(
	id serial NOT NULL,
	code varchar,
	description varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT states_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.state_standards
(
	id serial NOT NULL,
	name varchar,
	description text,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	state_id int,
	CONSTRAINT state_standards_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.stuck_students_trackings
(
	id serial NOT NULL,
	student_id int NOT NULL,
	stuck_status varchar DEFAULT '''potentially''::character varying' NOT NULL,
	out_of_sync_count int DEFAULT 0 NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	exception_message text DEFAULT '''''::text',
	CONSTRAINT stuck_students_trackings_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.students
(
	id serial NOT NULL,
	email varchar DEFAULT '''''::character varying' NOT NULL,
	encrypted_password varchar DEFAULT '''''::character varying' NOT NULL,
	reset_password_token varchar UNIQUE,
	reset_password_sent_at timestamp,
	remember_created_at timestamp,
	sign_in_count int DEFAULT 0,
	current_sign_in_at timestamp,
	last_sign_in_at timestamp,
	current_sign_in_ip varchar,
	last_sign_in_ip varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	username varchar,
	first_name varchar,
	last_name varchar,
	guid varchar,
	is_active boolean DEFAULT 'true' NOT NULL,
	is_demo boolean DEFAULT 'false' NOT NULL,
	grade_level_id int,
	alt_student_information_number varchar,
	cleartext_password varchar,
	second_language varchar,
	performance_grade_level_id int,
	student_information_number varchar,
	user_id int,
	time_on_system int DEFAULT 0,
	night_and_weekend_time_on_system int DEFAULT 0,
	bunchball_username varchar,
	started boolean DEFAULT 'false',
	clever_id varchar DEFAULT '''''::character varying',
	current_enrollment_id int,
	default_pathway_id int,
	current_classroom_id int,
	customer_id int,
	district_id int,
	school_id int,
	first_math_action_on timestamp,
	current_points int DEFAULT 0,
	custom_background_id int,
	lifetime_points int DEFAULT 0,
	is_iep boolean DEFAULT 'false' NOT NULL,
	is_ell boolean DEFAULT 'false' NOT NULL,
	auto_login_disabled boolean DEFAULT 'false' NOT NULL,
	sync_id varchar,
	site_id int,
	sso_id varchar,
	CONSTRAINT students_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.student_file_imports
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	user_id int,
	school_id int,
	status varchar,
	output text,
	bucket varchar,
	key varchar,
	CONSTRAINT student_file_imports_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.student_settings
(
	id serial NOT NULL,
	var varchar NOT NULL,
	value text,
	thing_id int,
	thing_type varchar(30),
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT student_settings_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.sync_batches
(
	id serial NOT NULL,
	kind varchar,
	error_count int DEFAULT 0 NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	sync_preparation_started_at timestamp,
	sync_preparation_finished_at timestamp,
	sync_application_approved_at timestamp,
	sync_application_expired_at timestamp,
	sync_application_started_at timestamp,
	sync_application_finished_at timestamp,
	sync_application_approved_by_id int,
	lifecycle_subscriber varchar,
	sync_rejected_at timestamp,
	parent_entity_id int,
	parent_entity_type varchar,
	CONSTRAINT sync_batches_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.sync_batch_entries
(
	id serial NOT NULL,
	sync_batch_id int,
	entry_type varchar,
	associated_entities ,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	started_at timestamp,
	finished_at timestamp,
	entry ,
	applied_by varchar,
	context ,
	CONSTRAINT sync_batch_entries_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.sync_sightings
(
	id serial NOT NULL,
	sync_batch_id int,
	entity_type varchar,
	entity_sync_id varchar,
	classroom_assigned_user_ids ,
	classroom_assigned_student_ids ,
	CONSTRAINT sync_sightings_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.taggings
(
	id serial NOT NULL,
	tag_id int,
	taggable_id int,
	taggable_type varchar,
	tagger_id int,
	tagger_type varchar,
	context varchar(128),
	created_at timestamp,
	CONSTRAINT taggings_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.tags
(
	id serial NOT NULL,
	name varchar UNIQUE,
	taggings_count int DEFAULT 0,
	CONSTRAINT tags_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.translations
(
	id serial NOT NULL,
	translated_text text,
	translatable_id int,
	translatable_type varchar,
	language varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT translations_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.units
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	title varchar NOT NULL,
	CONSTRAINT units_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.users
(
	id serial NOT NULL,
	email varchar DEFAULT '''''::character varying' NOT NULL UNIQUE,
	encrypted_password varchar DEFAULT '''''::character varying' NOT NULL,
	reset_password_token varchar UNIQUE,
	reset_password_sent_at timestamp,
	remember_created_at timestamp,
	sign_in_count int DEFAULT 0,
	current_sign_in_at timestamp,
	last_sign_in_at timestamp,
	current_sign_in_ip varchar,
	last_sign_in_ip varchar,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	role varchar,
	username varchar,
	first_name varchar,
	last_name varchar,
	max_students int,
	nickname varchar,
	second_language varchar,
	state_id int,
	invitation_accepted_at timestamp,
	invitation_token varchar,
	account_sponsor_email varchar,
	account_sponsor_name varchar,
	active boolean DEFAULT 'true' NOT NULL,
	zip_code varchar,
	phone_number varchar,
	street_address varchar,
	city varchar,
	ip_address varchar,
	school_district_provider_id int,
	clever_id varchar DEFAULT '''''::character varying',
	customer_id int,
	live_teaching_demo_ready boolean,
	auto_login_disabled boolean DEFAULT 'false' NOT NULL,
	sync_id varchar,
	current_association_type varchar,
	current_association_id int,
	sso_id varchar,
	CONSTRAINT users_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.user_connectivity_results
(
	id serial NOT NULL,
	user_id int,
	customer_id int,
	url varchar,
	is_accessible boolean,
	created_at timestamp,
	updated_at timestamp,
	CONSTRAINT user_connectivity_results_pkey PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE public.user_file_imports
(
	id serial NOT NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	user_id int,
	status varchar,
	output text,
	bucket varchar,
	key varchar,
	CONSTRAINT user_file_imports_pkey PRIMARY KEY (id)
) WITHOUT OIDS;



/* Create Foreign Keys */

ALTER TABLE public.file_upload_requests
	ADD CONSTRAINT fk_rails_71a4f9cfe6 FOREIGN KEY (customer_id)
	REFERENCES public.customers (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.schools
	ADD CONSTRAINT fk_rails_94b0227ec9 FOREIGN KEY (customer_id)
	REFERENCES public.customers (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.file_upload_requests
	ADD CONSTRAINT fk_rails_aca43fe7f8 FOREIGN KEY (district_id)
	REFERENCES public.districts (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.schools
	ADD CONSTRAINT fk_rails_bf9778ac51 FOREIGN KEY (district_id)
	REFERENCES public.districts (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.lessons
	ADD CONSTRAINT fk_rails_ded8baf415 FOREIGN KEY (lesson_category_id)
	REFERENCES public.lesson_categories (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.imports
	ADD CONSTRAINT fk_rails_a6bed9a21c FOREIGN KEY (school_id)
	REFERENCES public.schools (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.students
	ADD CONSTRAINT fk_rails_0004f8869e FOREIGN KEY (site_id)
	REFERENCES public.sites (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.customers
	ADD CONSTRAINT fk_rails_c8458bb2e3 FOREIGN KEY (default_state_id)
	REFERENCES public.states (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.schools
	ADD CONSTRAINT fk_rails_5f3d3f12c3 FOREIGN KEY (state_id)
	REFERENCES public.states (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.avatars
	ADD CONSTRAINT fk_rails_e50b96f495 FOREIGN KEY (student_id)
	REFERENCES public.students (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.file_upload_requests
	ADD CONSTRAINT fk_rails_9fa20d3bb0 FOREIGN KEY (sync_batch_id)
	REFERENCES public.sync_batches (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.imports
	ADD CONSTRAINT fk_rails_2084c1a09b FOREIGN KEY (sync_batch_id)
	REFERENCES public.sync_batches (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.sync_batch_entries
	ADD CONSTRAINT fk_rails_d5a8b696f3 FOREIGN KEY (sync_batch_id)
	REFERENCES public.sync_batches (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.file_upload_requests
	ADD CONSTRAINT fk_rails_7967a476fc FOREIGN KEY (creator_id)
	REFERENCES public.users (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.imports
	ADD CONSTRAINT fk_rails_b1e2154c26 FOREIGN KEY (user_id)
	REFERENCES public.users (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;


ALTER TABLE public.product_feedbacks
	ADD CONSTRAINT fk_rails_998c315ed8 FOREIGN KEY (submitted_by)
	REFERENCES public.users (id)
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
;



/* Create Views */

CREATE VIEW public.pg_stat_statements AS  SELECT pg_stat_statements.userid,
    pg_stat_statements.dbid,
    pg_stat_statements.queryid,
    pg_stat_statements.query,
    pg_stat_statements.calls,
    pg_stat_statements.total_time,
    pg_stat_statements.min_time,
    pg_stat_statements.max_time,
    pg_stat_statements.mean_time,
    pg_stat_statements.stddev_time,
    pg_stat_statements.rows,
    pg_stat_statements.shared_blks_hit,
    pg_stat_statements.shared_blks_read,
    pg_stat_statements.shared_blks_dirtied,
    pg_stat_statements.shared_blks_written,
    pg_stat_statements.local_blks_hit,
    pg_stat_statements.local_blks_read,
    pg_stat_statements.local_blks_dirtied,
    pg_stat_statements.local_blks_written,
    pg_stat_statements.temp_blks_read,
    pg_stat_statements.temp_blks_written,
    pg_stat_statements.blk_read_time,
    pg_stat_statements.blk_write_time
   FROM pg_stat_statements(true) pg_stat_statements(userid, dbid, queryid, query, calls, total_time, min_time, max_time, mean_time, stddev_time, rows, shared_blks_hit, shared_blks_read, shared_blks_dirtied, shared_blks_written, local_blks_hit, local_blks_read, local_blks_dirtied, local_blks_written, temp_blks_read, temp_blks_written, blk_read_time, blk_write_time);



/* Create Indexes */

CREATE INDEX index_activities_on_activity_type ON public.activities USING BTREE (activity_type);
CREATE INDEX index_activities_on_lesson_id ON public.activities USING BTREE (lesson_id);
CREATE INDEX index_activities_on_state ON public.activities USING BTREE (state);
CREATE INDEX index_activity_items_on_activity_id ON public.activity_items USING BTREE (activity_id);
CREATE INDEX index_activity_items_on_item_id ON public.activity_items USING BTREE (item_id);
CREATE INDEX activity_join_index ON public.activity_join USING BTREE (lesson_id, activity_id, attemptable_id, attemptable_type);
CREATE INDEX index_aliases_on_response_id ON public.aliases USING BTREE (response_id);
CREATE INDEX idx_activity_attemptable_and_type_lesson_enrollment ON public.attempts USING BTREE (lesson_enrollment_id, activity_id, attemptable_type, attemptable_id);
CREATE INDEX index_attempts_on_enrollment_id ON public.attempts USING BTREE (enrollment_id);
CREATE INDEX index_attempts_on_response_id ON public.attempts USING BTREE (response_id);
CREATE INDEX index_attempts_on_student_id ON public.attempts USING BTREE (student_id);
CREATE INDEX index_attempts_on_student_id_final_attemptable_type ON public.attempts USING BTREE (student_id, final, attemptable_type);
CREATE INDEX index_attempts_archived_on_attemptable_type_and_attemptable_id ON public.attempts_archived USING BTREE (attemptable_type, attemptable_id);
CREATE INDEX index_attempts_archived_on_classroom_id ON public.attempts_archived USING BTREE (classroom_id);
CREATE INDEX index_attempts_archived_on_lesson_enrollment_id ON public.attempts_archived USING BTREE (lesson_enrollment_id);
CREATE INDEX index_attempts_archived_on_student_id ON public.attempts_archived USING BTREE (student_id);
CREATE INDEX index_audit_log_entries_on_owner_id_and_owner_type ON public.audit_log_entries USING BTREE (owner_id, owner_type);
CREATE INDEX index_audit_log_entries_on_recipient_id_and_recipient_type ON public.audit_log_entries USING BTREE (recipient_id, recipient_type);
CREATE INDEX index_audit_log_entries_on_trackable_id_and_trackable_type ON public.audit_log_entries USING BTREE (trackable_id, trackable_type);
CREATE INDEX index_avatars_on_avatar ON public.avatars USING BTREE (avatar);
CREATE INDEX index_avatars_on_avatar_key ON public.avatars USING BTREE (avatar_key);
CREATE UNIQUE INDEX index_avatar_access_restrictions_on_classroom_id_and_weekday ON public.avatar_access_restrictions USING BTREE (classroom_id, weekday);
CREATE INDEX index_benchmark_attempts_on_benchmark_test_id ON public.benchmark_attempts USING BTREE (benchmark_test_id);
CREATE INDEX index_benchmark_attempts_on_item_step_id ON public.benchmark_attempts USING BTREE (item_step_id);
CREATE INDEX index_benchmark_tests_on_benchmark_type ON public.benchmark_tests USING BTREE (benchmark_type);
CREATE INDEX index_benchmark_tests_on_student_id ON public.benchmark_tests USING BTREE (student_id);
CREATE INDEX index_charities_customers_on_charity_id ON public.charities_customers USING BTREE (charity_id);
CREATE INDEX index_charities_customers_on_customer_id ON public.charities_customers USING BTREE (customer_id);
CREATE INDEX index_classrooms_on_clever_id ON public.classrooms USING BTREE (clever_id);
CREATE INDEX index_classrooms_on_school_id_and_active ON public.classrooms USING BTREE (school_id, active);
CREATE INDEX index_classrooms_on_sync_id ON public.classrooms USING BTREE (sync_id);
CREATE INDEX index_classroom_goals_on_classroom_id_and_redeemeds ON public.classroom_goals USING BTREE (classroom_id, points_redeemed, redeemed);
CREATE INDEX index_classroom_goals_on_goal_id ON public.classroom_goals USING BTREE (goal_id);
CREATE UNIQUE INDEX index_classroom_students_on_classroom_id_and_student_id ON public.classroom_students USING BTREE (classroom_id, student_id);
CREATE INDEX index_classrooms_students_on_classroom_id ON public.classroom_students USING BTREE (classroom_id);
CREATE INDEX index_classrooms_students_on_student_id ON public.classroom_students USING BTREE (student_id);
CREATE UNIQUE INDEX index_classroom_teachings_on_classroom_id_and_user_id ON public.classroom_teachings USING BTREE (classroom_id, user_id);
CREATE INDEX index_classroom_teachings_on_classroom_id ON public.classroom_teachings USING BTREE (classroom_id);
CREATE INDEX index_classroom_teachings_on_user_id ON public.classroom_teachings USING BTREE (user_id);
CREATE INDEX index_clever_sightings_on_entity_type_and_entity_clever_id ON public.clever_sightings USING BTREE (entity_type, entity_clever_id);
CREATE INDEX index_clever_sightings_on_sync_batch_id ON public.clever_sightings USING BTREE (sync_batch_id);
CREATE INDEX index_contests_on_end_date_and_active_and_featured_flag ON public.contests USING BTREE (end_date, active, featured_flag);
CREATE UNIQUE INDEX index_contests_customers_on_contest_id_and_customer_id ON public.contests_customers USING BTREE (contest_id, customer_id);
CREATE INDEX index_customers_tgrmsearch_name ON public.customers USING BTREE (name);
CREATE UNIQUE INDEX index_customer_administrations_on_customer_id_and_user_id ON public.customer_administrations USING BTREE (customer_id, user_id);
CREATE INDEX index_customer_administrations_on_customer_id ON public.customer_administrations USING BTREE (customer_id);
CREATE INDEX index_customer_administrations_on_user_id ON public.customer_administrations USING BTREE (user_id);
CREATE INDEX index_customer_archivings_on_customer_id ON public.customer_archivings USING BTREE (customer_id);
CREATE INDEX index_customer_archivings_on_user_id ON public.customer_archivings USING BTREE (user_id);
CREATE INDEX index_customer_regions_on_customer_id ON public.customer_regions USING BTREE (customer_id);
CREATE INDEX data_warehouse_events_model_id_idx ON public.data_warehouse_events USING BTREE (model_id);
CREATE INDEX index_districts_on_clever_id ON public.districts USING BTREE (clever_id);
CREATE INDEX index_districts_on_customer_id ON public.districts USING BTREE (customer_id);
CREATE INDEX index_districts_on_sync_id ON public.districts USING BTREE (sync_id);
CREATE INDEX index_districts_tgrmsearch_name ON public.districts USING BTREE (name);
CREATE UNIQUE INDEX index_district_administrations_on_district_id_and_user_id ON public.district_administrations USING BTREE (district_id, user_id);
CREATE INDEX index_district_administrations_on_district_id ON public.district_administrations USING BTREE (district_id);
CREATE INDEX index_district_administrations_on_user_id ON public.district_administrations USING BTREE (user_id);
CREATE INDEX index_donations_on_class_id ON public.donations USING BTREE (class_id);
CREATE INDEX index_donations_on_donateable_id_and_donateable_type ON public.donations USING BTREE (donateable_id, donateable_type);
CREATE INDEX index_donations_on_school_id ON public.donations USING BTREE (school_id);
CREATE INDEX index_donations_on_student_id ON public.donations USING BTREE (student_id);
CREATE INDEX index_enrollments_on_classroom_id ON public.enrollments USING BTREE (classroom_id);
CREATE INDEX index_enrollments_on_pathway_id ON public.enrollments USING BTREE (pathway_id);
CREATE INDEX index_enrollments_on_student_id ON public.enrollments USING BTREE (student_id);
CREATE UNIQUE INDEX index_enrollment_activities_by_lesson_enrollment_and_activity ON public.enrollment_activities USING BTREE (lesson_enrollment_id, activity_id);
CREATE INDEX index_enrollment_activities_on_activity_id ON public.enrollment_activities USING BTREE (activity_id);
CREATE INDEX index_enrollment_activities_on_lesson_enrollment_id ON public.enrollment_activities USING BTREE (lesson_enrollment_id);
CREATE INDEX index_feedbacks_on_response_id ON public.feedbacks USING BTREE (response_id);
CREATE INDEX index_feedback_steps_on_feedback_id ON public.feedback_steps USING BTREE (feedback_id);
CREATE INDEX index_feed_items_on_classroom_id ON public.feed_items USING BTREE (classroom_id);
CREATE INDEX index_feed_items_on_student_id ON public.feed_items USING BTREE (student_id);
CREATE INDEX index_feed_items_on_type ON public.feed_items USING BTREE (item_type);
CREATE INDEX index_feed_item_interactions_on_feed_item_id ON public.feed_item_interactions USING BTREE (feed_item_id);
CREATE INDEX index_feed_item_interactions_on_interaction_type ON public.feed_item_interactions USING BTREE (interaction_type);
CREATE INDEX index_feed_item_interactions_on_student_id ON public.feed_item_interactions USING BTREE (student_id);
CREATE INDEX index_feed_item_interactions_on_user_id ON public.feed_item_interactions USING BTREE (user_id);
CREATE INDEX index_file_uploads_on_uploadable_id ON public.file_uploads USING BTREE (uploadable_id);
CREATE INDEX index_file_upload_requests_on_creator_id ON public.file_upload_requests USING BTREE (creator_id);
CREATE INDEX index_file_upload_requests_on_customer_id ON public.file_upload_requests USING BTREE (customer_id);
CREATE INDEX index_file_upload_requests_on_district_id ON public.file_upload_requests USING BTREE (district_id);
CREATE INDEX index_file_upload_requests_on_sync_batch_id ON public.file_upload_requests USING BTREE (sync_batch_id);
CREATE INDEX index_requestor_email ON public.file_upload_requests USING BTREE (requestor_email);
CREATE INDEX index_requestor_name ON public.file_upload_requests USING BTREE (requestor_name);
CREATE INDEX fk_followables ON public.follows USING BTREE (followable_id, followable_type);
CREATE INDEX fk_follows ON public.follows USING BTREE (follower_id, follower_type);
CREATE INDEX index_glossary_terms_on_active ON public.glossary_terms USING BTREE (active);
CREATE INDEX index_hints_on_active ON public.hints USING BTREE (active);
CREATE INDEX index_hints_on_item_step_id ON public.hints USING BTREE (item_step_id);
CREATE INDEX index_hints_on_version_of_hint_id ON public.hints USING BTREE (version_of_hint_id);
CREATE INDEX index_hint_steps_on_hint_id ON public.hint_steps USING BTREE (hint_id);
CREATE INDEX index_hint_views_on_enrollment_id ON public.hint_views USING BTREE (enrollment_id);
CREATE INDEX index_hint_views_on_hint_id_and_enrollment_id ON public.hint_views USING BTREE (hint_id, enrollment_id);
CREATE INDEX index_hint_views_on_student_id ON public.hint_views USING BTREE (student_id);
CREATE INDEX index_images_on_imageable_id_and_imageable_type ON public.images USING BTREE (imageable_id, imageable_type);
CREATE INDEX index_imports_on_school_id ON public.imports USING BTREE (school_id);
CREATE INDEX index_imports_on_sync_batch_id ON public.imports USING BTREE (sync_batch_id);
CREATE INDEX index_imports_on_user_id ON public.imports USING BTREE (user_id);
CREATE INDEX index_items_on_active_and_state ON public.items USING BTREE (active, state);
CREATE INDEX index_items_on_form_name ON public.items USING BTREE (form_name);
CREATE INDEX index_items_on_grade_level_id ON public.items USING BTREE (grade_level_id);
CREATE INDEX index_items_on_item_presenter_id ON public.items USING BTREE (item_presenter_id);
CREATE INDEX index_items_on_strand ON public.items USING BTREE (strand);
CREATE INDEX index_items_on_test_name ON public.items USING BTREE (test_name);
CREATE INDEX index_items_on_user_id ON public.items USING BTREE (user_id);
CREATE INDEX index_items_on_version_of_item_id ON public.items USING BTREE (version_of_item_id);
CREATE INDEX index_item_steps_object_model ON public.item_steps USING BTREE (object_model);
CREATE INDEX index_item_steps_on_item_id ON public.item_steps USING BTREE (item_id);
CREATE INDEX index_item_steps_on_item_step_group_id ON public.item_steps USING BTREE (item_step_group_id);
CREATE INDEX index_item_steps_on_version_of_item_step_id ON public.item_steps USING BTREE (version_of_item_step_id);
CREATE INDEX index_item_steps_stem ON public.item_steps USING BTREE (stem);
CREATE INDEX index_item_step_groups_on_item_id ON public.item_step_groups USING BTREE (item_id);
CREATE INDEX index_lessons_on_lesson_category_id ON public.lessons USING BTREE (lesson_category_id);
CREATE INDEX index_lessons_standards_on_lesson_id_and_standard_id ON public.lessons_standards USING BTREE (lesson_id, standard_id);
CREATE INDEX index_lesson_enrollments_on_enrollment_id_and_passed ON public.lesson_enrollments USING BTREE (enrollment_id, passed);
CREATE INDEX index_lesson_enrollments_on_lesson_id ON public.lesson_enrollments USING BTREE (lesson_id);
CREATE INDEX index_lesson_requisites_on_ancestor_id ON public.lesson_requisites USING BTREE (ancestor_id);
CREATE INDEX index_lesson_requisites_on_descendant_id ON public.lesson_requisites USING BTREE (descendant_id);
CREATE INDEX index_lesson_requisites_on_direct ON public.lesson_requisites USING BTREE (direct);
CREATE INDEX index_live_help_transcripts_on_appinstance ON public.live_help_transcripts USING BTREE (appinstance);
CREATE INDEX index_live_help_transcripts_on_item_step_id ON public.live_help_transcripts USING BTREE (item_step_id);
CREATE INDEX index_live_help_transcripts_on_lesson_enrollment_id ON public.live_help_transcripts USING BTREE (lesson_enrollment_id);
CREATE INDEX index_live_help_transcripts_on_student_id ON public.live_help_transcripts USING BTREE (student_id);
CREATE INDEX index_live_help_transcripts_on_user_id ON public.live_help_transcripts USING BTREE (user_id);
CREATE INDEX index_math_words_on_active ON public.math_words USING BTREE (active);
CREATE INDEX index_messages_on_classroom_ids ON public.messages USING BTREE (classroom_ids);
CREATE INDEX index_messages_on_contest_ids ON public.messages USING BTREE (contest_ids);
CREATE INDEX index_messages_on_customer_ids ON public.messages USING BTREE (customer_ids);
CREATE INDEX index_messages_on_roles ON public.messages USING BTREE (roles);
CREATE INDEX index_messages_on_school_ids ON public.messages USING BTREE (school_ids);
CREATE INDEX index_messages_on_state_ids ON public.messages USING BTREE (state_ids);
CREATE INDEX index_messages_on_student_ids ON public.messages USING BTREE (student_ids);
CREATE INDEX index_messages_on_user_ids ON public.messages USING BTREE (user_ids);
CREATE INDEX index_norms_on_gl_period_quantile ON public.meta_metrics_norms USING BTREE (grade_level_number, period, quantile);
CREATE INDEX index_notifications_on_user_id ON public.notifications USING BTREE (user_id);
CREATE UNIQUE INDEX index_parents_students_on_parent_id_and_student_id ON public.parents_students USING BTREE (parent_id, student_id);
CREATE INDEX index_parents_students_on_parent_id ON public.parents_students USING BTREE (parent_id);
CREATE INDEX index_parents_students_on_student_id ON public.parents_students USING BTREE (student_id);
CREATE INDEX index_pathways_on_creator_id ON public.pathways USING BTREE (creator_id);
CREATE INDEX index_pathways_on_customer_id ON public.pathways USING BTREE (customer_id);
CREATE INDEX index_pathways_on_grade_level_id ON public.pathways USING BTREE (grade_level_id);
CREATE INDEX index_pathways_on_state_id ON public.pathways USING BTREE (state_id);
CREATE UNIQUE INDEX index_pathway_lessons_on_pathway_id_and_lesson_id ON public.pathway_lessons USING BTREE (pathway_id, lesson_id);
CREATE INDEX index_pathway_lessons_on_pathway_id_and_position ON public.pathway_lessons USING BTREE (pathway_id, position);
CREATE INDEX index_point_transactions_on_transactable_id_and_type ON public.point_transactions USING BTREE (transactable_id, transactable_type);
CREATE INDEX index_point_transactions_on_transactor_id_and_transactor_type ON public.point_transactions USING BTREE (transactor_id, transactor_type);
CREATE UNIQUE INDEX index_preferences_on_thing_type_and_thing_id_and_var ON public.preferences USING BTREE (thing_type, thing_id, var);
CREATE INDEX index_provisioning_uploads_on_site_id ON public.provisioning_uploads USING BTREE (site_id);
CREATE INDEX index_purchases_on_buyer_id_and_buyer_type_and_purchased_type ON public.purchases USING BTREE (buyer_id, buyer_type, purchased_type);
CREATE INDEX index_readable_texts_on_readable_id_and_readable_type ON public.readable_texts USING BTREE (readable_id, readable_type);
CREATE INDEX index_read_messages_on_readable_id_and_readable_type ON public.read_messages USING BTREE (readable_id, readable_type);
CREATE INDEX index_responses_on_item_step_id ON public.responses USING BTREE (item_step_id);
CREATE INDEX index_responses_on_version_of_response_id ON public.responses USING BTREE (version_of_response_id);
CREATE UNIQUE INDEX index_review_flags_on_thing_type_and_thing_id_and_var ON public.review_flags USING BTREE (thing_type, thing_id, var);
CREATE INDEX index_schools_on_clever_id ON public.schools USING BTREE (clever_id);
CREATE INDEX index_schools_on_customer_id ON public.schools USING BTREE (customer_id);
CREATE INDEX index_schools_on_district_id_and_active ON public.schools USING BTREE (district_id, active);
CREATE INDEX index_schools_on_name ON public.schools USING BTREE (name);
CREATE INDEX index_schools_on_state_id ON public.schools USING BTREE (state_id);
CREATE INDEX index_schools_on_sync_id ON public.schools USING BTREE (sync_id);
CREATE INDEX index_schools_tgrmsearch_name ON public.schools USING BTREE (name);
CREATE UNIQUE INDEX index_school_administrations_on_school_id_and_user_id ON public.school_administrations USING BTREE (school_id, user_id);
CREATE INDEX index_school_administrations_on_school_id ON public.school_administrations USING BTREE (school_id);
CREATE INDEX index_school_administrations_on_user_id ON public.school_administrations USING BTREE (user_id);
CREATE UNIQUE INDEX index_school_assignments_on_school_id_and_user_id ON public.school_assignments USING BTREE (school_id, user_id);
CREATE INDEX index_school_assignments_on_school_id ON public.school_assignments USING BTREE (school_id);
CREATE INDEX index_school_assignments_on_user_id ON public.school_assignments USING BTREE (user_id);
CREATE INDEX index_sharded_images_on_imageable_id_and_imageable_type ON public.sharded_images USING BTREE (imageable_id, imageable_type);
CREATE UNIQUE INDEX index_sites_on_siteable_type_and_siteable_id ON public.sites USING BTREE (siteable_type, siteable_id);
CREATE INDEX index_sites_on_site_code ON public.sites USING BTREE (site_code);
CREATE INDEX index_snippets_on_snippetable_id_and_snippetable_type ON public.snippets USING BTREE (snippetable_id, snippetable_type);
CREATE INDEX index_standards_on_standard_category_id ON public.standards USING BTREE (standard_category_id);
CREATE INDEX index_standard_categories_on_state_standard_id ON public.standard_categories USING BTREE (state_standard_id);
CREATE INDEX index_state_standards_on_state_id ON public.state_standards USING BTREE (state_id);
CREATE INDEX index_stuck_students_trackings_on_stuck_status ON public.stuck_students_trackings USING BTREE (stuck_status);
CREATE INDEX index_stuck_students_trackings_on_student_id ON public.stuck_students_trackings USING BTREE (student_id);
CREATE UNIQUE INDEX index_students_on_site_id_and_username ON public.students USING BTREE (site_id, username);
CREATE INDEX index_students_on_alt_student_information_number ON public.students USING BTREE (alt_student_information_number);
CREATE INDEX index_students_on_bunchball_username ON public.students USING BTREE (bunchball_username);
CREATE INDEX index_students_on_clever_id ON public.students USING BTREE (clever_id);
CREATE INDEX index_students_on_customer_id_and_is_active ON public.students USING BTREE (customer_id, is_active);
CREATE INDEX index_students_on_default_pathway_id ON public.students USING BTREE (default_pathway_id);
CREATE INDEX index_students_on_district_id_and_is_active ON public.students USING BTREE (district_id, is_active);
CREATE INDEX index_students_on_email ON public.students USING BTREE (email);
CREATE INDEX index_students_on_full_name ON public.students USING BTREE (last_name, first_name);
CREATE INDEX index_students_on_school_id_and_is_active ON public.students USING BTREE (school_id, is_active);
CREATE INDEX index_students_on_sso_id ON public.students USING BTREE (sso_id);
CREATE INDEX index_students_on_student_information_number ON public.students USING BTREE (student_information_number);
CREATE INDEX index_students_on_sync_id ON public.students USING BTREE (sync_id);
CREATE INDEX index_students_on_user_id ON public.students USING BTREE (user_id);
CREATE INDEX index_students_on_username ON public.students USING BTREE (username);
CREATE INDEX index_students_trgmsearch_first_name ON public.students USING BTREE (first_name);
CREATE INDEX index_students_trgmsearch_last_name ON public.students USING BTREE (last_name);
CREATE INDEX index_students_trgmsearch_username ON public.students USING BTREE (username);
CREATE INDEX index_student_file_imports_on_created_at ON public.student_file_imports USING BTREE (created_at);
CREATE INDEX index_student_file_imports_on_school_id ON public.student_file_imports USING BTREE (school_id);
CREATE INDEX index_student_file_imports_on_status ON public.student_file_imports USING BTREE (status);
CREATE INDEX index_student_file_imports_on_user_id ON public.student_file_imports USING BTREE (user_id);
CREATE UNIQUE INDEX index_student_settings_on_thing_type_and_thing_id_and_var ON public.student_settings USING BTREE (thing_type, thing_id, var);
CREATE INDEX index_sync_batches_on_parent_entity_type_and_parent_entity_id ON public.sync_batches USING BTREE (parent_entity_type, parent_entity_id);
CREATE INDEX index_sync_batch_entries_on_entry ON public.sync_batch_entries USING BTREE (entry);
CREATE INDEX index_sync_batch_entries_on_sync_batch_id ON public.sync_batch_entries USING BTREE (sync_batch_id);
CREATE INDEX index_sync_sightings_on_entity_type_and_entity_sync_id ON public.sync_sightings USING BTREE (entity_type, entity_sync_id);
CREATE INDEX index_sync_sightings_on_sync_batch_id ON public.sync_sightings USING BTREE (sync_batch_id);
CREATE UNIQUE INDEX taggings_idx ON public.taggings USING BTREE (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);
CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON public.taggings USING BTREE (taggable_id, taggable_type, context);
CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING BTREE (tagger_id, tagger_type);
CREATE INDEX index_translations_on_id_type_language ON public.translations USING BTREE (translatable_id, translatable_type, language);
CREATE INDEX index_translations_on_translatable_id_and_translatable_type ON public.translations USING BTREE (translatable_id, translatable_type);
CREATE INDEX index_users_on_clever_id ON public.users USING BTREE (clever_id);
CREATE INDEX index_users_on_customer_id ON public.users USING BTREE (customer_id);
CREATE INDEX index_users_on_sso_id ON public.users USING BTREE (sso_id);
CREATE INDEX index_users_on_sync_id ON public.users USING BTREE (sync_id);
CREATE INDEX index_users_tgrmsearch_email ON public.users USING BTREE (email);
CREATE INDEX index_users_tgrmsearch_first_name ON public.users USING BTREE (first_name);
CREATE INDEX index_users_tgrmsearch_last_name ON public.users USING BTREE (last_name);
CREATE INDEX index_user_connectivity_results_on_customer_id ON public.user_connectivity_results USING BTREE (customer_id);
CREATE INDEX index_user_connectivity_results_on_user_id ON public.user_connectivity_results USING BTREE (user_id);



