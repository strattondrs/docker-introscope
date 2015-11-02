-- index names are of the form: <table name>_<index name>
-- this file is ordered alphabetically -- keep it that way please
create index ts_audit_record_props_AuditIdx on ts_audit_record_props (ts_audit_record_id);
create index ts_audit_records_KeyIdx on ts_audit_records (ts_object_key);
create index ts_audit_records_OperatorIdx on ts_audit_records (ts_operator_name);
create index ts_biz_events_DefectIdx on ts_biz_events (ts_defect_def_id);
create index ts_biz_events_StatusIdx on ts_biz_events (ts_status);
create index ts_biz_events_TSIncrnIdIdx on ts_biz_events (ts_transet_incarnation_id);
create index ts_biz_events_TSIdIdx on ts_biz_events (ts_transet_id);
create index ts_cached_reports_EndTimeIdx on ts_cached_reports (ts_end_time);
create index ts_cached_rprts_LstAcsTimeIdx on ts_cached_reports (ts_last_access_time);
create index ts_cached_reports_RprtPathIdx on ts_cached_reports (ts_report_path);
create index ts_cached_reports_StTimeIdx on ts_cached_reports (ts_start_time);
create index ts_defect_defs_TranunitIdx on ts_defect_defs (ts_tranunit_id);
create index ts_defect_defs_TSIdx on ts_defect_defs (ts_transet_id);
CREATE INDEX ts_defects_UserIncIdIdx ON ts_defects (ts_user_incarnation_id);
CREATE INDEX ts_defects_eventIdx ON ts_defects (ts_biz_event_id);
create index ts_defects_interval_DateIdx on ts_defects_interval (ts_occur_date);
create index ts_defects_interval_DefectIdx on ts_defects_interval (ts_defect_def_id);
create index ts_defects_interval_EventIdx on ts_defects_interval (ts_biz_event_id);
create index ts_defects_interval_TSIdx on ts_defects_interval (ts_transet_id);
create index ts_defects_itvl_TSIncrnIdIdx on ts_defects_interval (ts_transet_incarnation_id);
create index ts_defects_itvl_UserIdx on ts_defects_interval (ts_user_id);
create index ts_defects_itvl_UserIncIdIdx on ts_defects_interval (ts_user_incarnation_id);
create unique index ts_defects_reaggr_int_IntIdx on ts_defects_reaggr_intervals (ts_interval) where ts_processed_time is null;
create index ts_login_id_parms_AppIdIdx on ts_login_id_parameters (ts_app_id);
create index ts_monitors_name on ts_monitors (ts_name);
create index ts_oper_role_map_OperIdIdx on ts_operator_role_map (ts_operator_id);
create index ts_operator_role_map_RoleIdIdx on ts_operator_role_map (ts_role_id);
create index ts_params_TranCompIdIdx on ts_params (ts_trancomp_id);
create index ts_record_components_RecordIdx on ts_recording_components (ts_recording_id);
create index ts_recording_comp_SeqNumberIdx on ts_recording_components (ts_sequence_number);
create index ts_rprt_def_prm_val_PrmKeyIdx on ts_report_def_param_values (ts_param_key_id);
create index ts_rprt_def_prm_val_RprtDefIdx on ts_report_def_param_values (ts_report_def_id);
create index ts_rprt_type_prm_val_PrmKeyIdx on ts_report_type_param_values (ts_param_key_id);
create index ts_rprttype_prmval_RprtTypeIdx on ts_report_type_param_values (ts_report_type_id);
create index ts_session_id_parms_AppIdIdx on ts_session_id_parameters (ts_app_id);
create index ts_settings_KeyIdx on ts_settings (ts_key);
create index ts_sm_plcy_servers_SmGrpIdIdx on ts_sm_policy_servers (ts_sm_group_id);
create index ts_sm_web_servers_SmGroupIdIdx on ts_sm_web_servers (ts_sm_group_id);
create index ts_st_ts_all_dly_DayIdx on ts_st_ts_all_dly (ts_day);
create index ts_st_ts_all_dly_HourIdx on ts_st_ts_all_dly (ts_hour);
create index ts_st_ts_all_dly_LAggRow on ts_st_ts_all_dly (ts_last_aggregated_row);
create index ts_st_ts_all_dly_MonthIdx on ts_st_ts_all_dly (ts_month);
create index ts_st_ts_all_dly_StTimeIdx on ts_st_ts_all_dly (ts_interval_start_time);
create index ts_st_ts_all_dly_TSIncIdIdx on ts_st_ts_all_dly (ts_transet_incarnation_id);
create index ts_st_ts_all_dly_TSIdx on ts_st_ts_all_dly (ts_transet_id);
create index ts_st_ts_all_dly_WeekIdx on ts_st_ts_all_dly (ts_week);
create index ts_st_ts_all_dly_YearIdx on ts_st_ts_all_dly (ts_year);
create index ts_st_ts_all_itvl_DayIdx on ts_st_ts_all_int (ts_day);
create index ts_st_ts_all_itvl_HourIdx on ts_st_ts_all_int (ts_hour);
create index ts_st_ts_all_itvl_LastAggRwIdx on ts_st_ts_all_int (ts_last_aggregated_row);
create index ts_st_ts_all_itvl_MonthIdx on ts_st_ts_all_int (ts_month);
create index ts_st_ts_all_itvl_StTimeIdx on ts_st_ts_all_int (ts_interval_start_time);
create index ts_st_ts_all_itvl_TSInIdIdx on ts_st_ts_all_int (ts_transet_incarnation_id);
create index ts_st_ts_all_itvl_TSIdx on ts_st_ts_all_int (ts_transet_id);
create index ts_st_ts_all_itvl_WeekIdx on ts_st_ts_all_int (ts_week);
create index ts_st_ts_all_itvl_YearIdx on ts_st_ts_all_int (ts_year);
create index ts_st_ts_all_mtly_DayIdx on ts_st_ts_all_mly (ts_day);
create index ts_st_ts_all_mtly_HourIdx on ts_st_ts_all_mly (ts_hour);
create index ts_st_ts_all_mtly_LastAggRwIdx on ts_st_ts_all_mly (ts_last_aggregated_row);
create index ts_st_ts_all_mtly_MonthIdx on ts_st_ts_all_mly (ts_month);
create index ts_st_ts_all_mtly_StTimeIdx on ts_st_ts_all_mly (ts_interval_start_time);
create index ts_st_ts_all_mtly_TSInIdIdx on ts_st_ts_all_mly (ts_transet_incarnation_id);
create index ts_st_ts_all_mtly_TSIdx on ts_st_ts_all_mly (ts_transet_id);
create index ts_st_ts_all_mtly_WeekIdx on ts_st_ts_all_mly (ts_week);
create index ts_st_ts_all_mtly_YearIdx on ts_st_ts_all_mly (ts_year);
create index ts_st_ts_all_wkly_DayIdx on ts_st_ts_all_wly (ts_day);
create index ts_st_ts_all_wkly_HourIdx on ts_st_ts_all_wly (ts_hour);
create index ts_st_ts_all_wkly_LastAggRwIdx on ts_st_ts_all_wly (ts_last_aggregated_row);
create index ts_st_ts_all_wkly_MonthIdx on ts_st_ts_all_wly (ts_month);
create index ts_st_ts_all_wkly_StTimeIdx on ts_st_ts_all_wly (ts_interval_start_time);
create index ts_st_ts_all_wkly_TSIncrnIdIdx on ts_st_ts_all_wly (ts_transet_incarnation_id);
create index ts_st_ts_all_wkly_TSIdx on ts_st_ts_all_wly (ts_transet_id, ts_interval_start_time);
create index ts_st_ts_all_wkly_WeekIdx on ts_st_ts_all_wly (ts_week);
create index ts_st_ts_all_wkly_YearIdx on ts_st_ts_all_wly (ts_year);
create index ts_st_tsgrp_all_dly_DayIdx on ts_st_tsgrp_all_dly (ts_day);
create index ts_st_tsgrp_all_dly_HourIdx on ts_st_tsgrp_all_dly (ts_hour);
create index ts_st_tsgrp_all_dly_LAggRowIdx on ts_st_tsgrp_all_dly (ts_last_aggregated_row);
create index ts_st_tsgrp_all_dly_MonthIdx on ts_st_tsgrp_all_dly (ts_month);
create index ts_st_tsgrp_all_dly_StTimeIdx on ts_st_tsgrp_all_dly (ts_interval_start_time);
create index ts_st_tsgrp_all_dly_TSGroupIdx on ts_st_tsgrp_all_dly (ts_transet_group_id);
create index ts_st_tsgrp_all_dly_WeekIdx on ts_st_tsgrp_all_dly (ts_week);
create index ts_st_tsgrp_all_dly_YearIdx on ts_st_tsgrp_all_dly (ts_year);
create index ts_st_tsgrp_all_itvl_DayIdx on ts_st_tsgrp_all_int (ts_day);
create index ts_st_tsgrp_all_itvl_HourIdx on ts_st_tsgrp_all_int (ts_hour);
create index ts_st_tsgrp_all_itvl_LAgRowIdx on ts_st_tsgrp_all_int (ts_last_aggregated_row);
create index ts_st_tsgrp_all_itvl_MonthIdx on ts_st_tsgrp_all_int (ts_month);
create index ts_st_tsgrp_all_itvl_StTimeIdx on ts_st_tsgrp_all_int (ts_interval_start_time);
create index ts_st_tsgrp_all_itvl_TSGrpIdx on ts_st_tsgrp_all_int (ts_transet_group_id);
create index ts_st_tsgrp_all_itvl_WeekIdx on ts_st_tsgrp_all_int (ts_week);
create index ts_st_tsgrp_all_itvl_YearIdx on ts_st_tsgrp_all_int (ts_year);
create index ts_st_tsgrp_all_mtly_DayIdx on ts_st_tsgrp_all_mly (ts_day);
create index ts_st_tsgrp_all_mtly_HourIdx on ts_st_tsgrp_all_mly (ts_hour);
create index ts_st_tsgrp_all_mtly_LAgRowIdx on ts_st_tsgrp_all_mly (ts_last_aggregated_row);
create index ts_st_tsgrp_all_mtly_MonthIdx on ts_st_tsgrp_all_mly (ts_month);
create index ts_st_tsgrp_all_mtly_StTimeIdx on ts_st_tsgrp_all_mly (ts_interval_start_time);
create index ts_st_tsgrp_all_mtly_TSGrpIdx on ts_st_tsgrp_all_mly (ts_transet_group_id);
create index ts_st_tsgrp_all_mtly_WeekIdx on ts_st_tsgrp_all_mly (ts_week);
create index ts_st_tsgrp_all_mtly_YearIdx on ts_st_tsgrp_all_mly (ts_year);
create index ts_st_tsgrp_all_wkly_DayIdx on ts_st_tsgrp_all_wly (ts_day);
create index ts_st_tsgrp_all_wkly_HourIdx on ts_st_tsgrp_all_wly (ts_hour);
create index ts_st_tsgrp_all_wkly_LAgRowIdx on ts_st_tsgrp_all_wly (ts_last_aggregated_row);
create index ts_st_tsgrp_all_wkly_MonthIdx on ts_st_tsgrp_all_wly (ts_month);
create index ts_st_tsgrp_all_wkly_StTimeIdx on ts_st_tsgrp_all_wly (ts_interval_start_time);
create index ts_st_tsgrp_all_wkly_TSGrpIdx on ts_st_tsgrp_all_wly (ts_transet_group_id);
create index ts_st_tsgrp_all_wkly_WeekIdx on ts_st_tsgrp_all_wly (ts_week);
create index ts_st_tsgrp_all_wkly_YearIdx on ts_st_tsgrp_all_wly (ts_year);
create index ts_st_tsgrp_us_dly_DayIdx on ts_st_tsgrp_us_dly (ts_day);
create index ts_st_tsgrp_us_dly_HourIdx on ts_st_tsgrp_us_dly (ts_hour);
create index ts_st_tsgrp_us_dly_LAggRowIdx on ts_st_tsgrp_us_dly (ts_last_aggregated_row);
create index ts_st_tsgrp_us_dly_MonthIdx on ts_st_tsgrp_us_dly (ts_month);
create index ts_st_tsgrp_us_dly_StTimeIdx on ts_st_tsgrp_us_dly (ts_interval_start_time);
create index ts_st_tsgrp_us_dly_TSGroupIdx on ts_st_tsgrp_us_dly (ts_transet_group_id);
create index ts_st_tgrp_us_dly_UsrIncIdIdx on ts_st_tsgrp_us_dly (ts_user_incarnation_id);
create index ts_st_tsgrp_us_dly_UserIdx on ts_st_tsgrp_us_dly (ts_user_id);
create index ts_st_tsgrp_us_dly_WeekIdx on ts_st_tsgrp_us_dly (ts_week);
create index ts_st_tsgrp_us_dly_YearIdx on ts_st_tsgrp_us_dly (ts_year);
create index ts_st_tsgrp_usgrp_dly_DayIdx on ts_st_tsgrp_usgrp_dly (ts_day);
create index ts_st_tsgrp_usgrp_dly_HourIdx on ts_st_tsgrp_usgrp_dly (ts_hour);
create index ts_st_tsgrp_usgrp_dly_LAgRwIdx on ts_st_tsgrp_usgrp_dly (ts_last_aggregated_row);
create index ts_st_tsgrp_usgrp_dly_MonthIdx on ts_st_tsgrp_usgrp_dly (ts_month);
create index ts_st_tsgrp_usgrp_dly_STimeIdx on ts_st_tsgrp_usgrp_dly (ts_interval_start_time);
create index ts_st_tsgrp_usgrp_dly_TSGrpIdx on ts_st_tsgrp_usgrp_dly (ts_transet_group_id);
create index ts_st_tsgrp_usgrp_dly_UsGrpIdx on ts_st_tsgrp_usgrp_dly (ts_usergroup_id);
create index ts_st_tsgrp_usgrp_dly_WeekIdx on ts_st_tsgrp_usgrp_dly (ts_week);
create index ts_st_tsgrp_usgrp_dly_YearIdx on ts_st_tsgrp_usgrp_dly (ts_year);
create index ts_st_tsgrp_usgrp_itvl_DayIdx on ts_st_tsgrp_usgrp_int (ts_day);
create index ts_st_tsgrp_usgrp_itvl_HrIdx on ts_st_tsgrp_usgrp_int (ts_hour);
create index ts_st_tsgrp_usgrp_itvl_LARwIdx on ts_st_tsgrp_usgrp_int (ts_last_aggregated_row);
create index ts_st_tsgrp_usgrp_itvl_MnthIdx on ts_st_tsgrp_usgrp_int (ts_month);
create index ts_st_tsgrp_usgrp_itvl_StTmIdx on ts_st_tsgrp_usgrp_int (ts_interval_start_time);
create index ts_st_tsgrp_usgrp_itvl_TSGpIdx on ts_st_tsgrp_usgrp_int (ts_transet_group_id);
create index ts_st_tsgrp_usgrp_itvl_UsGpIdx on ts_st_tsgrp_usgrp_int (ts_usergroup_id);
create index ts_st_tsgrp_usgrp_itvl_WeekIdx on ts_st_tsgrp_usgrp_int (ts_week);
create index ts_st_tsgrp_usgrp_itvl_YearIdx on ts_st_tsgrp_usgrp_int (ts_year);
create index ts_st_tsgrp_usgrp_mtly_DayIdx on ts_st_tsgrp_usgrp_mly (ts_day);
create index ts_st_tsgrp_usgrp_mtly_HourIdx on ts_st_tsgrp_usgrp_mly (ts_hour);
create index ts_st_tsgrp_usgrp_mtly_LARwIdx on ts_st_tsgrp_usgrp_mly (ts_last_aggregated_row);
create index ts_st_tsgrp_usgrp_mtly_MnthIdx on ts_st_tsgrp_usgrp_mly (ts_month);
create index ts_st_tsgrp_usgrp_mtly_STmIdx on ts_st_tsgrp_usgrp_mly (ts_interval_start_time);
create index ts_st_tsgrp_usgrp_mtly_TSGIdx on ts_st_tsgrp_usgrp_mly (ts_transet_group_id);
create index ts_st_tsgrp_usgrp_mtly_UsGIdx on ts_st_tsgrp_usgrp_mly (ts_usergroup_id);
create index ts_st_tsgrp_usgrp_mtly_WkIdx on ts_st_tsgrp_usgrp_mly (ts_week);
create index ts_st_tsgrp_usgrp_mtly_YrIdx on ts_st_tsgrp_usgrp_mly (ts_year);
create index ts_st_tsgrp_usgrp_wkly_DayIdx on ts_st_tsgrp_usgrp_wly (ts_day);
create index ts_st_tsgrp_usgrp_wkly_HourIdx on ts_st_tsgrp_usgrp_wly (ts_hour);
create index ts_st_tsgrp_usgrp_wkly_LARwIdx on ts_st_tsgrp_usgrp_wly (ts_last_aggregated_row);
create index ts_st_tsgrp_usgrp_wkly_MnthIdx on ts_st_tsgrp_usgrp_wly (ts_month);
create index ts_st_tsgrp_usgrp_wkly_STmIdx on ts_st_tsgrp_usgrp_wly (ts_interval_start_time);
create index ts_st_tsgrp_usgrp_wkly_TSGIdx on ts_st_tsgrp_usgrp_wly (ts_transet_group_id);
create index ts_st_tsgrp_usgrp_wkly_UGrpIdx on ts_st_tsgrp_usgrp_wly (ts_usergroup_id);
create index ts_st_tsgrp_usgrp_wkly_WeekIdx on ts_st_tsgrp_usgrp_wly (ts_week);
create index ts_st_tsgrp_usgrp_wkly_YearIdx on ts_st_tsgrp_usgrp_wly (ts_year);
create index ts_st_tsgrp_us_itvl_DayIdx on ts_st_tsgrp_us_int (ts_day);
create index ts_st_tsgrp_us_itvl_HourIdx on ts_st_tsgrp_us_int (ts_hour);
create index ts_st_tsgrp_us_itvl_LAggRowIdx on ts_st_tsgrp_us_int (ts_last_aggregated_row);
create index ts_st_tsgrp_us_itvl_MonthIdx on ts_st_tsgrp_us_int (ts_month);
create index ts_st_tsgrp_us_itvl_StartIdx on ts_st_tsgrp_us_int (ts_interval_start_time);
create index ts_st_tsgrp_us_itvl_TSGroupIdx on ts_st_tsgrp_us_int (ts_transet_group_id);
create index ts_st_tsgrp_us_itvl_UserIdx on ts_st_tsgrp_us_int (ts_user_id);
create index ts_st_tsgrp_us_itvl_WeekIdx on ts_st_tsgrp_us_int (ts_week);
create index ts_st_tsgrp_us_itvl_YearIdx on ts_st_tsgrp_us_int (ts_year);
create index ts_st_tsgrp_us_mtly_DayIdx on ts_st_tsgrp_us_mly (ts_day);
create index ts_st_tsgrp_us_mtly_HourIdx on ts_st_tsgrp_us_mly (ts_hour);
create index ts_st_tsgrp_us_mtly_LAggRowIdx on ts_st_tsgrp_us_mly (ts_last_aggregated_row);
create index ts_st_tsgrp_us_mtly_MonthIdx on ts_st_tsgrp_us_mly (ts_month);
create index ts_st_tsgrp_us_mtly_StTimeIdx on ts_st_tsgrp_us_mly (ts_interval_start_time);
create index ts_st_tsgrp_us_mtly_TSGroupIdx on ts_st_tsgrp_us_mly (ts_transet_group_id);
create index ts_st_tsgrp_us_mtly_UsrInIdIdx on ts_st_tsgrp_us_mly (ts_user_incarnation_id);
create index ts_st_tsgrp_us_mtly_UserIdx on ts_st_tsgrp_us_mly (ts_user_id);
create index ts_st_tsgrp_us_mtly_WeekIdx on ts_st_tsgrp_us_mly (ts_week);
create index ts_st_tsgrp_us_mtly_YearIdx on ts_st_tsgrp_us_mly (ts_year);
create index ts_st_tsgrp_us_wkly_DayIdx on ts_st_tsgrp_us_wly (ts_day);
create index ts_st_tsgrp_us_wkly_HourIdx on ts_st_tsgrp_us_wly (ts_hour);
create index ts_st_tsgrp_us_wkly_LAggRowIdx on ts_st_tsgrp_us_wly (ts_last_aggregated_row);
create index ts_st_tsgrp_us_wkly_MonthIdx on ts_st_tsgrp_us_wly (ts_month);
create index ts_st_tsgrp_us_wkly_STimeIdx on ts_st_tsgrp_us_wly (ts_interval_start_time);
create index ts_st_tsgrp_us_wkly_TSGroupIdx on ts_st_tsgrp_us_wly (ts_transet_group_id);
create index ts_st_tsgrp_us_wkly_UsrInIdIdx on ts_st_tsgrp_us_wly (ts_user_incarnation_id);
create index ts_st_tsgrp_us_wkly_UserIdx on ts_st_tsgrp_us_wly (ts_user_id);
create index ts_st_tsgrp_us_wkly_WeekIdx on ts_st_tsgrp_us_wly (ts_week);
create index ts_st_tsgrp_us_wkly_YearIdx on ts_st_tsgrp_us_wly (ts_year);
create index ts_st_ts_us_dly_DayIdx on ts_st_ts_us_dly (ts_day);
create index ts_st_ts_us_dly_HourIdx on ts_st_ts_us_dly (ts_hour);
create index ts_st_ts_us_dly_LAggRow on ts_st_ts_us_dly (ts_last_aggregated_row);
create index ts_st_ts_us_dly_MonthIdx on ts_st_ts_us_dly (ts_month);
create index ts_st_ts_us_dly_StTimeIdx on ts_st_ts_us_dly (ts_interval_start_time);
create index ts_st_ts_us_dly_TSIncrnIdIdx on ts_st_ts_us_dly (ts_transet_incarnation_id);
create index ts_st_ts_us_dly_TSIdx on ts_st_ts_us_dly (ts_transet_id);
create index ts_st_ts_us_dly_UserIncIdIdx on ts_st_ts_us_dly (ts_user_incarnation_id);
create index ts_st_ts_us_dly_UserIdx on ts_st_ts_us_dly (ts_user_id);
create index ts_st_ts_us_dly_WeekIdx on ts_st_ts_us_dly (ts_week);
create index ts_st_ts_us_dly_YearIdx on ts_st_ts_us_dly (ts_year);
create index ts_st_ts_usgrp_dly_DayIdx on ts_st_ts_usgrp_dly (ts_day);
create index ts_st_ts_usgrp_dly_HourIdx on ts_st_ts_usgrp_dly (ts_hour);
create index ts_st_ts_usgrp_dly_LAggRowIdx on ts_st_ts_usgrp_dly (ts_last_aggregated_row);
create index ts_st_ts_usgrp_dly_MonthIdx on ts_st_ts_usgrp_dly (ts_month);
create index ts_st_ts_usgrp_dly_StTimeIdx on ts_st_ts_usgrp_dly (ts_interval_start_time);
create index ts_st_ts_usgrp_dly_TSIncrIdIdx on ts_st_ts_usgrp_dly (ts_transet_incarnation_id);
create index ts_st_ts_usgrp_dly_TSIdx on ts_st_ts_usgrp_dly (ts_transet_id);
create index ts_st_ts_usgrp_dly_UserGrpIdx on ts_st_ts_usgrp_dly (ts_usergroup_id);
create index ts_st_ts_usgrp_dly_WeekIdx on ts_st_ts_usgrp_dly (ts_week);
create index ts_st_ts_usgrp_dly_YearIdx on ts_st_ts_usgrp_dly (ts_year);
create index ts_st_ts_usgrp_itvl_DayIdx on ts_st_ts_usgrp_int (ts_day);
create index ts_st_ts_usgrp_itvl_GroupIdx on ts_st_ts_usgrp_int (ts_usergroup_id);
create index ts_st_ts_usgrp_itvl_HourIdx on ts_st_ts_usgrp_int (ts_hour);
create index ts_st_ts_usgrp_itvl_LAggRowIdx on ts_st_ts_usgrp_int (ts_last_aggregated_row);
create index ts_st_ts_usgrp_itvl_MonthIdx on ts_st_ts_usgrp_int (ts_month);
create index ts_st_ts_usgrp_itvl_STimeIdx on ts_st_ts_usgrp_int (ts_interval_start_time);
create index ts_st_ts_usgrp_itvl_TSIncIdIdx on ts_st_ts_usgrp_int (ts_transet_incarnation_id);
create index ts_st_ts_usgrp_itvl_TSIdx on ts_st_ts_usgrp_int (ts_transet_id);
create index ts_st_ts_usgrp_itvl_WeekIdx on ts_st_ts_usgrp_int (ts_week);
create index ts_st_ts_usgrp_itvl_YearIdx on ts_st_ts_usgrp_int (ts_year);
create index ts_st_ts_usgrp_mtly_DayIdx on ts_st_ts_usgrp_mly (ts_day);
create index ts_st_ts_usgrp_mtly_HourIdx on ts_st_ts_usgrp_mly (ts_hour);
create index ts_st_ts_usgrp_mtly_LAggRowIdx on ts_st_ts_usgrp_mly (ts_last_aggregated_row);
create index ts_st_ts_usgrp_mtly_MonthIdx on ts_st_ts_usgrp_mly (ts_month);
create index ts_st_ts_usgrp_mtly_STimeIdx on ts_st_ts_usgrp_mly (ts_interval_start_time);
create index ts_st_ts_usgrp_mtly_TSIncIdIdx on ts_st_ts_usgrp_mly (ts_transet_incarnation_id);
create index ts_st_ts_usgrp_mtly_TSIdx on ts_st_ts_usgrp_mly (ts_transet_id);
create index ts_st_ts_usgrp_mtly_UserGrpIdx on ts_st_ts_usgrp_mly (ts_usergroup_id);
create index ts_st_ts_usgrp_mtly_WeekIdx on ts_st_ts_usgrp_mly (ts_week);
create index ts_st_ts_usgrp_mtly_YearIdx on ts_st_ts_usgrp_mly (ts_year);
create index ts_st_ts_usgrp_wkly_DayIdx on ts_st_ts_usgrp_wly (ts_day);
create index ts_st_ts_usgrp_wkly_HourIdx on ts_st_ts_usgrp_wly (ts_hour);
create index ts_st_ts_usgrp_wkly_LAggRow on ts_st_ts_usgrp_wly (ts_last_aggregated_row);
create index ts_st_ts_usgrp_wkly_MonthIdx on ts_st_ts_usgrp_wly (ts_month);
create index ts_st_ts_usgrp_wkly_StTimeIdx on ts_st_ts_usgrp_wly (ts_interval_start_time);
create index ts_st_ts_usgrp_wkly_TSIncIdIdx on ts_st_ts_usgrp_wly (ts_transet_incarnation_id);
create index ts_st_ts_usgrp_wkly_TSIdx on ts_st_ts_usgrp_wly (ts_transet_id);
create index ts_st_ts_usgrp_wkly_UsGrpIdx on ts_st_ts_usgrp_wly (ts_usergroup_id);
create index ts_st_ts_usgrp_wkly_WeekIdx on ts_st_ts_usgrp_wly (ts_week);
create index ts_st_ts_usgrp_wkly_YearIdx on ts_st_ts_usgrp_wly (ts_year);
create index ts_st_ts_us_itvl_DayIdx on ts_st_ts_us_int (ts_day);
create index ts_st_ts_us_itvl_HourIdx on ts_st_ts_us_int (ts_hour);
create index ts_st_ts_us_itvl_MonthIdx on ts_st_ts_us_int (ts_month);
create index ts_st_ts_us_itvl_StTime on ts_st_ts_us_int (ts_interval_start_time);
create index ts_st_ts_us_itvl_TSIncIdIdx on ts_st_ts_us_int (ts_transet_incarnation_id);
create index ts_st_ts_us_itvl_TSIdx on ts_st_ts_us_int (ts_transet_id);
create index ts_st_ts_us_itvl_UserIncIdIdx on ts_st_ts_us_int (ts_user_incarnation_id);
create index ts_st_ts_us_itvl_UserIdx on ts_st_ts_us_int (ts_user_id);
create index ts_st_ts_us_itvl_WeekIdx on ts_st_ts_us_int (ts_week);
create index ts_st_ts_us_itvl_YearIdx on ts_st_ts_us_int (ts_year);
create index ts_st_ts_us_mtly_DayIdx on ts_st_ts_us_mly (ts_day);
create index ts_st_ts_us_mtly_HourIdx on ts_st_ts_us_mly (ts_hour);
create index ts_st_ts_us_mtly_LAggRow on ts_st_ts_us_mly (ts_last_aggregated_row);
create index ts_st_ts_us_mtly_MonthIdx on ts_st_ts_us_mly (ts_month);
create index ts_st_ts_us_mtly_StTimeIdx on ts_st_ts_us_mly (ts_interval_start_time);
create index ts_st_ts_us_mtly_TSIncIdIdx on ts_st_ts_us_mly (ts_transet_incarnation_id);
create index ts_st_ts_us_mtly_TSIdx on ts_st_ts_us_mly (ts_transet_id);
create index ts_st_ts_us_mtly_UserIncIdIdx on ts_st_ts_us_mly (ts_user_incarnation_id);
create index ts_st_ts_us_mtly_UserIdx on ts_st_ts_us_mly (ts_user_id);
create index ts_st_ts_us_mtly_WeekIdx on ts_st_ts_us_mly (ts_week);
create index ts_st_ts_us_mtly_YearIdx on ts_st_ts_us_mly (ts_year);
create index ts_st_ts_us_wkly_DayIdx on ts_st_ts_us_wly (ts_day);
create index ts_st_ts_us_wkly_HourIdx on ts_st_ts_us_wly (ts_hour);
create index ts_st_ts_us_wkly_LAggRow on ts_st_ts_us_wly (ts_last_aggregated_row);
create index ts_st_ts_us_wkly_MonthIdx on ts_st_ts_us_wly (ts_month);
create index ts_st_ts_us_wkly_StTimeIdx on ts_st_ts_us_wly (ts_interval_start_time);
create index ts_st_ts_us_wkly_TSIncIdIdx on ts_st_ts_us_wly (ts_transet_incarnation_id);
create index ts_st_ts_us_wkly_TSIdx on ts_st_ts_us_wly (ts_transet_id);
create index ts_st_ts_us_wkly_UserIncIdIdx on ts_st_ts_us_wly (ts_user_incarnation_id);
create index ts_st_ts_us_wkly_UserIdx on ts_st_ts_us_wly (ts_user_id);
create index ts_st_ts_us_wkly_WeekIdx on ts_st_ts_us_wly (ts_week);
create index ts_st_ts_us_wkly_YearIdx on ts_st_ts_us_wly (ts_year);
create index ts_st_tu_all_dly_DayIdx on ts_st_tu_all_dly (ts_day);
create index ts_st_tu_all_dly_HourIdx on ts_st_tu_all_dly (ts_hour);
create index ts_st_tu_all_dly_LAggRow on ts_st_tu_all_dly (ts_last_aggregated_row);
create index ts_st_tu_all_dly_MonthIdx on ts_st_tu_all_dly (ts_month);
create index ts_st_tu_all_dly_StTimeIdx on ts_st_tu_all_dly (ts_interval_start_time);
create index ts_st_tu_all_dly_TSIncrnIdIdx on ts_st_tu_all_dly (ts_transet_incarnation_id);
create index ts_st_tu_all_dly_TSIdx on ts_st_tu_all_dly (ts_transet_id);
create index ts_st_tu_all_dly_TUIdx on ts_st_tu_all_dly (ts_tranunit_id);
create index ts_st_tu_all_dly_WeekIdx on ts_st_tu_all_dly (ts_week);
create index ts_st_tu_all_dly_YearIdx on ts_st_tu_all_dly (ts_year);
create index ts_st_tu_all_itvl_DayIdx on ts_st_tu_all_int (ts_day);
create index ts_st_tu_all_itvl_HourIdx on ts_st_tu_all_int (ts_hour);
create index ts_st_tu_all_itvl_LAggRow on ts_st_tu_all_int (ts_last_aggregated_row);
create index ts_st_tu_all_itvl_MonthIdx on ts_st_tu_all_int (ts_month);
create index ts_st_tu_all_itvl_StTimeIdx on ts_st_tu_all_int (ts_interval_start_time);
create index ts_st_tu_all_itvl_TSIncrnIdIdx on ts_st_tu_all_int (ts_transet_incarnation_id);
create index ts_st_tu_all_itvl_TSIdx on ts_st_tu_all_int (ts_transet_id);
create index ts_st_tu_all_itvl_TUIdx on ts_st_tu_all_int (ts_tranunit_id);
create index ts_st_tu_all_itvl_WeekIdx on ts_st_tu_all_int (ts_week);
create index ts_st_tu_all_itvl_YearIdx on ts_st_tu_all_int (ts_year);
create index ts_st_tu_all_mtly_DayIdx on ts_st_tu_all_mly (ts_day);
create index ts_st_tu_all_mtly_HourIdx on ts_st_tu_all_mly (ts_hour);
create index ts_st_tu_all_mtly_LAggRow on ts_st_tu_all_mly (ts_last_aggregated_row);
create index ts_st_tu_all_mtly_MonthIdx on ts_st_tu_all_mly (ts_month);
create index ts_st_tu_all_mtly_StTimeIdx on ts_st_tu_all_mly (ts_interval_start_time);
create index ts_st_tu_all_mtly_TSIncrnIdIdx on ts_st_tu_all_mly (ts_transet_incarnation_id);
create index ts_st_tu_all_mtly_TSIdx on ts_st_tu_all_mly (ts_transet_id);
create index ts_st_tu_all_mtly_TUIdx on ts_st_tu_all_mly (ts_tranunit_id);
create index ts_st_tu_all_mtly_WeekIdx on ts_st_tu_all_mly (ts_week);
create index ts_st_tu_all_mtly_YearIdx on ts_st_tu_all_mly (ts_year);
create index ts_st_tu_all_wkly_DayIdx on ts_st_tu_all_wly (ts_day);
create index ts_st_tu_all_wkly_HourIdx on ts_st_tu_all_wly (ts_hour);
create index ts_st_tu_all_wkly_LAggRow on ts_st_tu_all_wly (ts_last_aggregated_row);
create index ts_st_tu_all_wkly_MonthIdx on ts_st_tu_all_wly (ts_month);
create index ts_st_tu_all_wkly_StTimeIdx on ts_st_tu_all_wly (ts_interval_start_time);
create index ts_st_tu_all_wkly_TSIncrnIdIdx on ts_st_tu_all_wly (ts_transet_incarnation_id);
create index ts_st_tu_all_wkly_TSIdx on ts_st_tu_all_wly (ts_transet_id);
create index ts_st_tu_all_wkly_TUIdx on ts_st_tu_all_wly (ts_tranunit_id);
create index ts_st_tu_all_wkly_WeekIdx on ts_st_tu_all_wly (ts_week);
create index ts_st_tu_all_wkly_YearIdx on ts_st_tu_all_wly (ts_year);
create index ts_st_tu_us_dly_DayIdx on ts_st_tu_us_dly (ts_day);
create index ts_st_tu_us_dly_HourIdx on ts_st_tu_us_dly (ts_hour);
create index ts_st_tu_us_dly_LAggRow on ts_st_tu_us_dly (ts_last_aggregated_row);
create index ts_st_tu_us_dly_MonthIdx on ts_st_tu_us_dly (ts_month);
create index ts_st_tu_us_dly_StTime on ts_st_tu_us_dly (ts_interval_start_time);
create index ts_st_tu_us_dly_TSIncrnIdIdx on ts_st_tu_us_dly (ts_transet_incarnation_id);
create index ts_st_tu_us_dly_TSIdx on ts_st_tu_us_dly (ts_transet_id);
create index ts_st_tu_us_dly_TUIdx on ts_st_tu_us_dly (ts_tranunit_id);
create index ts_st_tu_us_dly_UserIncIdIdx on ts_st_tu_us_dly (ts_user_incarnation_id);
create index ts_st_tu_us_dly_UserIdx on ts_st_tu_us_dly (ts_user_id);
create index ts_st_tu_us_dly_WeekIdx on ts_st_tu_us_dly (ts_week);
create index ts_st_tu_us_dly_YearIdx on ts_st_tu_us_dly (ts_year);
create index ts_st_tu_usgrp_dly_DayIdx on ts_st_tu_usgrp_dly (ts_day);
create index ts_st_tu_usgrp_dly_HourIdx on ts_st_tu_usgrp_dly (ts_hour);
create index ts_st_tu_usgrp_dly_LAggRow on ts_st_tu_usgrp_dly (ts_last_aggregated_row);
create index ts_st_tu_usgrp_dly_MonthIdx on ts_st_tu_usgrp_dly (ts_month);
create index ts_st_tu_usgrp_dly_StTimeIdx on ts_st_tu_usgrp_dly (ts_interval_start_time);
create index ts_st_tu_usgrp_dly_TSIncIdIdx on ts_st_tu_usgrp_dly (ts_transet_incarnation_id);
create index ts_st_tu_usgrp_dly_TSIdx on ts_st_tu_usgrp_dly (ts_transet_id);
create index ts_st_tu_usgrp_dly_TUIdx on ts_st_tu_usgrp_dly (ts_tranunit_id);
create index ts_st_tu_usgrp_dly_UsGrpIdx on ts_st_tu_usgrp_dly (ts_usergroup_id);
create index ts_st_tu_usgrp_dly_WeekIdx on ts_st_tu_usgrp_dly (ts_week);
create index ts_st_tu_usgrp_dly_YearIdx on ts_st_tu_usgrp_dly (ts_year);
create index ts_st_tu_usgrp_itvl_DayIdx on ts_st_tu_usgrp_int (ts_day);
create index ts_st_tu_usgrp_itvl_HourIdx on ts_st_tu_usgrp_int (ts_hour);
create index ts_st_tu_usgrp_itvl_LAggRow on ts_st_tu_usgrp_int (ts_last_aggregated_row);
create index ts_st_tu_usgrp_itvl_MonthIdx on ts_st_tu_usgrp_int (ts_month);
create index ts_st_tu_usgrp_itvl_StTimeIdx on ts_st_tu_usgrp_int (ts_interval_start_time);
create index ts_st_tu_usgrp_itvl_TSIncIdIdx on ts_st_tu_usgrp_int (ts_transet_incarnation_id);
create index ts_st_tu_usgrp_itvl_TSIdx on ts_st_tu_usgrp_int (ts_transet_id);
create index ts_st_tu_usgrp_itvl_TUIdx on ts_st_tu_usgrp_int (ts_tranunit_id);
create index ts_st_tu_usgrp_itvl_UsGrpIdx on ts_st_tu_usgrp_int (ts_usergroup_id);
create index ts_st_tu_usgrp_itvl_WeekIdx on ts_st_tu_usgrp_int (ts_week);
create index ts_st_tu_usgrp_itvl_YearIdx on ts_st_tu_usgrp_int (ts_year);
create index ts_st_tu_usgrp_mtly_DayIdx on ts_st_tu_usgrp_mly (ts_day);
create index ts_st_tu_usgrp_mtly_HourIdx on ts_st_tu_usgrp_mly (ts_hour);
create index ts_st_tu_usgrp_mtly_LastAggRow on ts_st_tu_usgrp_mly (ts_last_aggregated_row);
create index ts_st_tu_usgrp_mtly_MonthIdx on ts_st_tu_usgrp_mly (ts_month);
create index ts_st_tu_usgrp_mtly_StTimeIdx on ts_st_tu_usgrp_mly (ts_interval_start_time);
create index ts_st_tu_usgrp_mtly_TSIncIdIdx on ts_st_tu_usgrp_mly (ts_transet_incarnation_id);
create index ts_st_tu_usgrp_mtly_TSIdx on ts_st_tu_usgrp_mly (ts_transet_id);
create index ts_st_tu_usgrp_mtly_TUIdx on ts_st_tu_usgrp_mly (ts_tranunit_id);
create index ts_st_tu_usgrp_mtly_UserGrpIdx on ts_st_tu_usgrp_mly (ts_usergroup_id);
create index ts_st_tu_usgrp_mtly_WeekIdx on ts_st_tu_usgrp_mly (ts_week);
create index ts_st_tu_usgrp_mtly_YearIdx on ts_st_tu_usgrp_mly (ts_year);
create index ts_st_tu_usgrp_wkly_DayIdx on ts_st_tu_usgrp_wly (ts_day);
create index ts_st_tu_usgrp_wkly_HourIdx on ts_st_tu_usgrp_wly (ts_hour);
create index ts_st_tu_usgrp_wkly_LAggRow on ts_st_tu_usgrp_wly (ts_last_aggregated_row);
create index ts_st_tu_usgrp_wkly_MonthIdx on ts_st_tu_usgrp_wly (ts_month);
create index ts_st_tu_usgrp_wkly_StTimeIdx on ts_st_tu_usgrp_wly (ts_interval_start_time);
create index ts_st_tu_usgrp_wkly_TSIncIdIdx on ts_st_tu_usgrp_wly (ts_transet_incarnation_id);
create index ts_st_tu_usgrp_wkly_TSIdx on ts_st_tu_usgrp_wly (ts_transet_id);
create index ts_st_tu_usgrp_wkly_TUIdx on ts_st_tu_usgrp_wly (ts_tranunit_id);
create index ts_st_tu_usgrp_wkly_UserGrpIdx on ts_st_tu_usgrp_wly (ts_usergroup_id);
create index ts_st_tu_usgrp_wkly_WeekIdx on ts_st_tu_usgrp_wly (ts_week);
create index ts_st_tu_usgrp_wkly_YearIdx on ts_st_tu_usgrp_wly (ts_year);
create index ts_st_tu_us_itvl_DayIdx on ts_st_tu_us_int (ts_day);
create index ts_st_tu_us_itvl_HourIdx on ts_st_tu_us_int (ts_hour);
create index ts_st_tu_us_itvl_MonthIdx on ts_st_tu_us_int (ts_month);
create index ts_st_tu_us_itvl_StTime on ts_st_tu_us_int (ts_interval_start_time);
create index ts_st_tu_us_itvl_TSIncrnIdIdx on ts_st_tu_us_int (ts_transet_incarnation_id);
create index ts_st_tu_us_itvl_TSIdx on ts_st_tu_us_int (ts_transet_id);
create index ts_st_tu_us_itvl_TUIdx on ts_st_tu_us_int (ts_tranunit_id);
create index ts_st_tu_us_itvl_UserIncIdIdx on ts_st_tu_us_int (ts_user_incarnation_id);
create index ts_st_tu_us_itvl_UserIdx on ts_st_tu_us_int (ts_user_id);
create index ts_st_tu_us_itvl_WeekIdx on ts_st_tu_us_int (ts_week);
create index ts_st_tu_us_itvl_YearIdx on ts_st_tu_us_int (ts_year);
create index ts_st_tu_us_mtly_DayIdx on ts_st_tu_us_mly (ts_day);
create index ts_st_tu_us_mtly_HourIdx on ts_st_tu_us_mly (ts_hour);
create index ts_st_tu_us_mtly_LAggRow on ts_st_tu_us_mly (ts_last_aggregated_row);
create index ts_st_tu_us_mtly_MonthIdx on ts_st_tu_us_mly (ts_month);
create index ts_st_tu_us_mtly_StTime on ts_st_tu_us_mly (ts_interval_start_time);
create index ts_st_tu_us_mtly_TSIncrnIdIdx on ts_st_tu_us_mly (ts_transet_incarnation_id);
create index ts_st_tu_us_mtly_TSIdx on ts_st_tu_us_mly (ts_transet_id);
create index ts_st_tu_us_mtly_TUIdx on ts_st_tu_us_mly (ts_tranunit_id);
create index ts_st_tu_us_mtly_UserIncIdIdx on ts_st_tu_us_mly (ts_user_incarnation_id);
create index ts_st_tu_us_mtly_UserIdx on ts_st_tu_us_mly (ts_user_id);
create index ts_st_tu_us_mtly_WeekIdx on ts_st_tu_us_mly (ts_week);
create index ts_st_tu_us_mtly_YearIdx on ts_st_tu_us_mly (ts_year);
create index ts_st_tu_us_wkly_DayIdx on ts_st_tu_us_wly (ts_day);
create index ts_st_tu_us_wkly_HourIdx on ts_st_tu_us_wly (ts_hour);
create index ts_st_tu_us_wkly_LastAggRow on ts_st_tu_us_wly (ts_last_aggregated_row);
create index ts_st_tu_us_wkly_MonthIdx on ts_st_tu_us_wly (ts_month);
create index ts_st_tu_us_wkly_StTime on ts_st_tu_us_wly (ts_interval_start_time);
create index ts_st_tu_us_wkly_TSIncrnIdIdx on ts_st_tu_us_wly (ts_transet_incarnation_id);
create index ts_st_tu_us_wkly_TSIdx on ts_st_tu_us_wly (ts_transet_id);
create index ts_st_tu_us_wkly_TUIdx on ts_st_tu_us_wly (ts_tranunit_id);
create index ts_st_tu_us_wkly_UserIncIdIdx on ts_st_tu_us_wly (ts_user_incarnation_id);
create index ts_st_tu_us_wkly_UserIdx on ts_st_tu_us_wly (ts_user_id);
create index ts_st_tu_us_wkly_WeekIdx on ts_st_tu_us_wly (ts_week);
create index ts_st_tu_us_wkly_YearIdx on ts_st_tu_us_wly (ts_year);
create index ts_st_t_us_itvl_StTimeIdx on ts_st_t_us_int (ts_interval_start_time);
create index ts_st_t_us_itvl_TSIncrnIdx on ts_st_t_us_int (ts_transet_incarnation_id);
create index ts_st_t_us_itvl_TSIdx on ts_st_t_us_int (ts_transet_id);
create index ts_st_t_us_itvl_TUIdx on ts_st_t_us_int (ts_tranunit_id);
create index ts_trancomps_TranunitIdx on ts_trancomps (ts_tranunit_id);
create index ts_tran_comp_dtls_TTGuidIdx on ts_tran_comp_details (ts_trantrace_guid);
create index ts_tsgrp_ts_map_TSGroupIdIdx on ts_transetgroup_transets_map (ts_transet_group_id);
create index ts_tsgrp_ts_map_TSIdIdx on ts_transetgroup_transets_map (ts_transet_id);
create index ts_tsgrp_ts_map_TSIncrnIdx on ts_transetgroup_transets_map (ts_transet_incarnation_id);
create index ts_transets_AppIdx on ts_transets (ts_app_id);
create unique index ts_transets_IncrnIdx on ts_transets (ts_incarnation_id);
create index ts_tranunits_TsIdx on ts_tranunits (ts_transet_id);
create unique index ts_user_def_groups_NameIdx on ts_user_def_groups (ts_name);
create index ts_user_groups_DefGroupIdx on ts_user_groups(ts_userdef_group_id);
create index ts_user_groups_GroupByIdx on ts_user_groups(ts_group_by_ip_enabled);
create unique index ts_user_groups_NameIdx on ts_user_groups (ts_name);
create index ts_usgrp_ts_slas_TSIdx on ts_usergroup_transet_slas(ts_transet_id);
create index ts_usgrp_ts_slas_UsGrpIdx on ts_usergroup_transet_slas(ts_usergroup_id);
create index ts_usgrp_users_map_UsGrpIdx on ts_usergroup_users_map(ts_usergroup_id);
create unique index ts_usgrp_users_map_UsIncIdx on ts_usergroup_users_map(ts_user_incarnation_id);
create index ts_usgrp_users_map_UserIdx on ts_usergroup_users_map(ts_user_id);
create index ts_user_logins_map_AppIdx on ts_user_logins_map (ts_app_id);
create index ts_user_logins_map_NameIdx on ts_user_logins_map (ts_login_name);
create index ts_user_logins_map_UserIdx on ts_user_logins_map (ts_user_id);
create index ts_us_ses_map_AppIdx on ts_us_sessions_map (ts_app_id);
create index ts_us_ses_map_InterimSesIdIdx on ts_us_sessions_map (ts_interim_session_id);
create index ts_us_ses_map_SessionIdIdx on ts_us_sessions_map (ts_session_id);
create unique index ts_users_IncrnIdx on ts_users (ts_incarnation_id);
create index ts_users_UserDefGroupIdx on ts_users (ts_userdef_group_id);
create index ts_web_servers_MonitorIdx on ts_web_servers (ts_monitor_id);

-- appmap
CREATE UNIQUE INDEX appmap_id_mappings_idx ON appmap_id_mappings(type, external_id);
CREATE INDEX appmap_vertices_time_idx ON appmap_vertices(end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_service_idx ON appmap_vertices(business_service, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_app_idx ON appmap_vertices(application_id, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib1_idx ON appmap_vertices(search_attrib1, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib2_idx ON appmap_vertices(search_attrib2, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib3_idx ON appmap_vertices(search_attrib3, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib4_idx ON appmap_vertices(search_attrib4, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib5_idx ON appmap_vertices(search_attrib5, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib_lookup ON appmap_vertices
   (vertex_id, start_time, application_id, search_attrib1, search_attrib2, search_attrib3, search_attrib4, search_attrib5, business_service);

CREATE UNIQUE INDEX appmap_edges_idx ON appmap_edges(end_time, start_time, source_id, target_id, transaction_id);
        
CREATE INDEX appmap_edges_fk1_idx ON appmap_edges(source_id);
CREATE INDEX appmap_edges_fk2_idx ON appmap_edges(target_id);
CREATE INDEX appmap_edges_fk3_idx ON appmap_edges(transaction_id);

CREATE INDEX appmap_settings_user_id_idx ON appmap_settings(user_id);
CREATE INDEX appmap_settings_type_idx ON appmap_settings(type, deleted_at);

CREATE INDEX appmap_model_vertices_idx ON appmap_model_vertices(update_time DESC);
-- /appmap

