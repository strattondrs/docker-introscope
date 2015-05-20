-- migration from 9.6.0.0 to higher version
ALTER TABLE ts_login_id_parameters ALTER COLUMN ts_name TYPE VARCHAR(1000);
ALTER TABLE ts_session_id_parameters ALTER COLUMN ts_name TYPE VARCHAR(1000);
ALTER TABLE ts_usergroup_id_parameters ALTER COLUMN ts_name TYPE VARCHAR(1000);

--START enhanced btstats db changes
-- global flags/settings keeping in settings table
insert into ts_settings (ts_id, version_info, ts_key, ts_value, ts_description, ts_default, ts_soft_delete) values(DEFAULT, 1, 'btstats.enabled', 'true', 'enable/disable btstats collection', 'true',false);
insert into ts_settings (ts_id, version_info, ts_key, ts_value, ts_description, ts_default, ts_soft_delete) values(DEFAULT, 1, 'btstats.urlpathenabled', 'false', 'enable/disable url path matching and collection for btstats', 'false', false);
insert into ts_settings (ts_id, version_info, ts_key, ts_value, ts_description, ts_default, ts_soft_delete) values(DEFAULT, 1, 'btstats.usergroupenabled', 'false', 'enable/disable user group matching and collection for btstats', 'false', false);
insert into ts_settings (ts_id, version_info, ts_key, ts_value, ts_description, ts_default, ts_soft_delete) values(DEFAULT, 1, 'btstats.maxstatspertim', '600', 'max number of btstats possible per interval per tim', '600', false);

-- table for matcher specific configuration
create table ts_btstats_matchers
(
	ts_id integer not null,
	ts_matcher_type integer not null,
	ts_pattern varchar(200) not null,
	ts_alias varchar(100) not null,
	ts_type integer not null,
	primary key (ts_id)
);
create sequence ts_btstats_matchers_ts_id_sq start with 1000;
alter sequence ts_btstats_matchers_ts_id_sq owned by ts_btstats_matchers.ts_id;
alter table ts_btstats_matchers alter column ts_id set default nextval('ts_btstats_matchers_ts_id_sq');

--END enhanced btstats db changes
