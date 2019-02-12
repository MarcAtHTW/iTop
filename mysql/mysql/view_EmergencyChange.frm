TYPE=VIEW
query=select distinct `_ticket`.`id` AS `id`,`_ticket`.`operational_status` AS `operational_status`,`_ticket`.`ref` AS `ref`,`_ticket`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_ticket`.`caller_id` AS `caller_id`,`Person_caller_id_contact`.`name` AS `caller_name`,`_ticket`.`team_id` AS `team_id`,`Team_team_id_contact`.`email` AS `team_name`,`_ticket`.`agent_id` AS `agent_id`,`Person_agent_id_contact`.`name` AS `agent_name`,`_ticket`.`title` AS `title`,`_ticket`.`description` AS `description`,`_ticket`.`description_format` AS `description_format`,`_ticket`.`start_date` AS `start_date`,`_ticket`.`end_date` AS `end_date`,`_ticket`.`last_update` AS `last_update`,`_ticket`.`close_date` AS `close_date`,`_ticket`.`private_log` AS `private_log`,`_ticket`.`private_log_index` AS `private_log_index`,`_change`.`status` AS `status`,`_change`.`reason` AS `reason`,`_change`.`requestor_id` AS `requestor_id`,`Person_requestor_id_contact`.`email` AS `requestor_email`,`_change`.`creation_date` AS `creation_date`,`_change`.`impact` AS `impact`,`_change`.`supervisor_group_id` AS `supervisor_group_id`,`Team_supervisor_group_id_contact`.`name` AS `supervisor_group_name`,`_change`.`supervisor_id` AS `supervisor_id`,`Person_supervisor_id_contact`.`email` AS `supervisor_email`,`_change`.`manager_group_id` AS `manager_group_id`,`Team_manager_group_id_contact`.`name` AS `manager_group_name`,`_change`.`manager_id` AS `manager_id`,`Person_manager_id_contact`.`email` AS `manager_email`,`_change`.`outage` AS `outage`,`_change`.`fallback` AS `fallback`,`_change`.`parent_id` AS `parent_id`,`Change_parent_id_ticket`.`ref` AS `parent_name`,`_change_approved`.`approval_date` AS `approval_date`,`_change_approved`.`approval_comment` AS `approval_comment`,`_ticket`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_ticket`.`ref`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Person_caller_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_caller_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `caller_id_friendlyname`,coalesce((`Person_caller_id_contact`.`status` = \'inactive\'),0) AS `caller_id_obsolescence_flag`,cast(concat(coalesce(`Team_team_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `team_id_friendlyname`,coalesce((`Team_team_id_contact`.`status` = \'inactive\'),0) AS `team_id_obsolescence_flag`,cast(concat(coalesce(`Person_agent_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_agent_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `agent_id_friendlyname`,coalesce((`Person_agent_id_contact`.`status` = \'inactive\'),0) AS `agent_id_obsolescence_flag`,cast(concat(coalesce(`Person_requestor_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_requestor_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `requestor_id_friendlyname`,coalesce((`Person_requestor_id_contact`.`status` = \'inactive\'),0) AS `requestor_id_obsolescence_flag`,cast(concat(coalesce(`Team_supervisor_group_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`,coalesce((`Team_supervisor_group_id_contact`.`status` = \'inactive\'),0) AS `supervisor_group_id_obsolescence_flag`,cast(concat(coalesce(`Person_supervisor_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_supervisor_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `supervisor_id_friendlyname`,coalesce((`Person_supervisor_id_contact`.`status` = \'inactive\'),0) AS `supervisor_id_obsolescence_flag`,cast(concat(coalesce(`Team_manager_group_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `manager_group_id_friendlyname`,coalesce((`Team_manager_group_id_contact`.`status` = \'inactive\'),0) AS `manager_group_id_obsolescence_flag`,cast(concat(coalesce(`Person_manager_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_manager_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `manager_id_friendlyname`,coalesce((`Person_manager_id_contact`.`status` = \'inactive\'),0) AS `manager_id_obsolescence_flag`,cast(concat(coalesce(`Change_parent_id_ticket`.`ref`,\'\')) as char charset utf8mb4) AS `parent_id_friendlyname`,`Change_parent_id_ticket`.`finalclass` AS `parent_id_finalclass_recall` from ((((((`mysql`.`ticket` `_ticket` join `mysql`.`organization` `Organization_org_id_organization` on((`_ticket`.`org_id` = `Organization_org_id_organization`.`id`))) left join (`mysql`.`contact` `Person_caller_id_contact` join `mysql`.`person` `Person_caller_id_person` on((`Person_caller_id_contact`.`id` = `Person_caller_id_person`.`id`))) on((`_ticket`.`caller_id` = `Person_caller_id_contact`.`id`))) left join `mysql`.`contact` `Team_team_id_contact` on((`_ticket`.`team_id` = `Team_team_id_contact`.`id`))) left join (`mysql`.`contact` `Person_agent_id_contact` join `mysql`.`person` `Person_agent_id_person` on((`Person_agent_id_contact`.`id` = `Person_agent_id_person`.`id`))) on((`_ticket`.`agent_id` = `Person_agent_id_contact`.`id`))) join ((((((`mysql`.`change` `_change` left join (`mysql`.`contact` `Person_requestor_id_contact` join `mysql`.`person` `Person_requestor_id_person` on((`Person_requestor_id_contact`.`id` = `Person_requestor_id_person`.`id`))) on((`_change`.`requestor_id` = `Person_requestor_id_contact`.`id`))) left join `mysql`.`contact` `Team_supervisor_group_id_contact` on((`_change`.`supervisor_group_id` = `Team_supervisor_group_id_contact`.`id`))) left join (`mysql`.`contact` `Person_supervisor_id_contact` join `mysql`.`person` `Person_supervisor_id_person` on((`Person_supervisor_id_contact`.`id` = `Person_supervisor_id_person`.`id`))) on((`_change`.`supervisor_id` = `Person_supervisor_id_contact`.`id`))) left join `mysql`.`contact` `Team_manager_group_id_contact` on((`_change`.`manager_group_id` = `Team_manager_group_id_contact`.`id`))) left join (`mysql`.`contact` `Person_manager_id_contact` join `mysql`.`person` `Person_manager_id_person` on((`Person_manager_id_contact`.`id` = `Person_manager_id_person`.`id`))) on((`_change`.`manager_id` = `Person_manager_id_contact`.`id`))) left join `mysql`.`ticket` `Change_parent_id_ticket` on((`_change`.`parent_id` = `Change_parent_id_ticket`.`id`))) on((`_ticket`.`id` = `_change`.`id`))) join `mysql`.`change_approved` `_change_approved` on((`_ticket`.`id` = `_change_approved`.`id`))) where (coalesce((`Person_caller_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`Team_team_id_contact`.`finalclass` = \'Team\'),1) and coalesce((`Person_agent_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`_ticket`.`finalclass` = \'EmergencyChange\'),1) and coalesce((`Person_requestor_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`Team_supervisor_group_id_contact`.`finalclass` = \'Team\'),1) and coalesce((`Person_supervisor_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`Team_manager_group_id_contact`.`finalclass` = \'Team\'),1) and coalesce((`Person_manager_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`Change_parent_id_ticket`.`finalclass` in (\'RoutineChange\',\'ApprovedChange\',\'NormalChange\',\'EmergencyChange\',\'Change\')),1))
md5=75c44bfbb1d4bd0abbfcb944763accbe
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_ticket`.`id` AS `id`, `_ticket`.`operational_status` AS `operational_status`, `_ticket`.`ref` AS `ref`, `_ticket`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `org_name`, `_ticket`.`caller_id` AS `caller_id`, `Person_caller_id_contact`.`name` AS `caller_name`, `_ticket`.`team_id` AS `team_id`, `Team_team_id_contact`.`email` AS `team_name`, `_ticket`.`agent_id` AS `agent_id`, `Person_agent_id_contact`.`name` AS `agent_name`, `_ticket`.`title` AS `title`, `_ticket`.`description` AS `description`, `_ticket`.`description_format` AS `description_format`, `_ticket`.`start_date` AS `start_date`, `_ticket`.`end_date` AS `end_date`, `_ticket`.`last_update` AS `last_update`, `_ticket`.`close_date` AS `close_date`, `_ticket`.`private_log` AS `private_log`, `_ticket`.`private_log_index` AS `private_log_index`, `_change`.`status` AS `status`, `_change`.`reason` AS `reason`, `_change`.`requestor_id` AS `requestor_id`, `Person_requestor_id_contact`.`email` AS `requestor_email`, `_change`.`creation_date` AS `creation_date`, `_change`.`impact` AS `impact`, `_change`.`supervisor_group_id` AS `supervisor_group_id`, `Team_supervisor_group_id_contact`.`name` AS `supervisor_group_name`, `_change`.`supervisor_id` AS `supervisor_id`, `Person_supervisor_id_contact`.`email` AS `supervisor_email`, `_change`.`manager_group_id` AS `manager_group_id`, `Team_manager_group_id_contact`.`name` AS `manager_group_name`, `_change`.`manager_id` AS `manager_id`, `Person_manager_id_contact`.`email` AS `manager_email`, `_change`.`outage` AS `outage`, `_change`.`fallback` AS `fallback`, `_change`.`parent_id` AS `parent_id`, `Change_parent_id_ticket`.`ref` AS `parent_name`, `_change_approved`.`approval_date` AS `approval_date`, `_change_approved`.`approval_comment` AS `approval_comment`, `_ticket`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_ticket`.`ref`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Person_caller_id_person`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_caller_id_contact`.`name`, \'\')) AS CHAR) AS `caller_id_friendlyname`, COALESCE((`Person_caller_id_contact`.`status` = \'inactive\'), 0) AS `caller_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Team_team_id_contact`.`name`, \'\')) AS CHAR) AS `team_id_friendlyname`, COALESCE((`Team_team_id_contact`.`status` = \'inactive\'), 0) AS `team_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Person_agent_id_person`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_agent_id_contact`.`name`, \'\')) AS CHAR) AS `agent_id_friendlyname`, COALESCE((`Person_agent_id_contact`.`status` = \'inactive\'), 0) AS `agent_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Person_requestor_id_person`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_requestor_id_contact`.`name`, \'\')) AS CHAR) AS `requestor_id_friendlyname`, COALESCE((`Person_requestor_id_contact`.`status` = \'inactive\'), 0) AS `requestor_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Team_supervisor_group_id_contact`.`name`, \'\')) AS CHAR) AS `supervisor_group_id_friendlyname`, COALESCE((`Team_supervisor_group_id_contact`.`status` = \'inactive\'), 0) AS `supervisor_group_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Person_supervisor_id_person`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_supervisor_id_contact`.`name`, \'\')) AS CHAR) AS `supervisor_id_friendlyname`, COALESCE((`Person_supervisor_id_contact`.`status` = \'inactive\'), 0) AS `supervisor_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Team_manager_group_id_contact`.`name`, \'\')) AS CHAR) AS `manager_group_id_friendlyname`, COALESCE((`Team_manager_group_id_contact`.`status` = \'inactive\'), 0) AS `manager_group_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Person_manager_id_person`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Person_manager_id_contact`.`name`, \'\')) AS CHAR) AS `manager_id_friendlyname`, COALESCE((`Person_manager_id_contact`.`status` = \'inactive\'), 0) AS `manager_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Change_parent_id_ticket`.`ref`, \'\')) AS CHAR) AS `parent_id_friendlyname`, `Change_parent_id_ticket`.`finalclass` AS `parent_id_finalclass_recall` FROM `ticket` AS `_ticket`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_ticket`.`org_id` = `Organization_org_id_organization`.`id`LEFT JOIN (`contact` AS `Person_caller_id_contact` INNER JOIN `person` AS `Person_caller_id_person` ON `Person_caller_id_contact`.`id` = `Person_caller_id_person`.`id`) ON `_ticket`.`caller_id` = `Person_caller_id_contact`.`id`LEFT JOIN `contact` AS `Team_team_id_contact` ON `_ticket`.`team_id` = `Team_team_id_contact`.`id`LEFT JOIN (`contact` AS `Person_agent_id_contact` INNER JOIN `person` AS `Person_agent_id_person` ON `Person_agent_id_contact`.`id` = `Person_agent_id_person`.`id`) ON `_ticket`.`agent_id` = `Person_agent_id_contact`.`id`INNER JOIN (`change` AS `_change` LEFT JOIN (`contact` AS `Person_requestor_id_contact` INNER JOIN `person` AS `Person_requestor_id_person` ON `Person_requestor_id_contact`.`id` = `Person_requestor_id_person`.`id`) ON `_change`.`requestor_id` = `Person_requestor_id_contact`.`id`LEFT JOIN `contact` AS `Team_supervisor_group_id_contact` ON `_change`.`supervisor_group_id` = `Team_supervisor_group_id_contact`.`id`LEFT JOIN (`contact` AS `Person_supervisor_id_contact` INNER JOIN `person` AS `Person_supervisor_id_person` ON `Person_supervisor_id_contact`.`id` = `Person_supervisor_id_person`.`id`) ON `_change`.`supervisor_id` = `Person_supervisor_id_contact`.`id`LEFT JOIN `contact` AS `Team_manager_group_id_contact` ON `_change`.`manager_group_id` = `Team_manager_group_id_contact`.`id`LEFT JOIN (`contact` AS `Person_manager_id_contact` INNER JOIN `person` AS `Person_manager_id_person` ON `Person_manager_id_contact`.`id` = `Person_manager_id_person`.`id`) ON `_change`.`manager_id` = `Person_manager_id_contact`.`id`LEFT JOIN `ticket` AS `Change_parent_id_ticket` ON `_change`.`parent_id` = `Change_parent_id_ticket`.`id`) ON `_ticket`.`id` = `_change`.`id`INNER JOIN `change_approved` AS `_change_approved` ON `_ticket`.`id` = `_change_approved`.`id` WHERE (((((((((COALESCE((`Person_caller_id_contact`.`finalclass` IN (\'Person\')), 1) AND COALESCE((`Team_team_id_contact`.`finalclass` IN (\'Team\')), 1)) AND COALESCE((`Person_agent_id_contact`.`finalclass` IN (\'Person\')), 1)) AND COALESCE((`_ticket`.`finalclass` IN (\'EmergencyChange\')), 1)) AND COALESCE((`Person_requestor_id_contact`.`finalclass` IN (\'Person\')), 1)) AND COALESCE((`Team_supervisor_group_id_contact`.`finalclass` IN (\'Team\')), 1)) AND COALESCE((`Person_supervisor_id_contact`.`finalclass` IN (\'Person\')), 1)) AND COALESCE((`Team_manager_group_id_contact`.`finalclass` IN (\'Team\')), 1)) AND COALESCE((`Person_manager_id_contact`.`finalclass` IN (\'Person\')), 1)) AND COALESCE((`Change_parent_id_ticket`.`finalclass` IN (\'RoutineChange\', \'ApprovedChange\', \'NormalChange\', \'EmergencyChange\', \'Change\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_ticket`.`id` AS `id`,`_ticket`.`operational_status` AS `operational_status`,`_ticket`.`ref` AS `ref`,`_ticket`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_ticket`.`caller_id` AS `caller_id`,`Person_caller_id_contact`.`name` AS `caller_name`,`_ticket`.`team_id` AS `team_id`,`Team_team_id_contact`.`email` AS `team_name`,`_ticket`.`agent_id` AS `agent_id`,`Person_agent_id_contact`.`name` AS `agent_name`,`_ticket`.`title` AS `title`,`_ticket`.`description` AS `description`,`_ticket`.`description_format` AS `description_format`,`_ticket`.`start_date` AS `start_date`,`_ticket`.`end_date` AS `end_date`,`_ticket`.`last_update` AS `last_update`,`_ticket`.`close_date` AS `close_date`,`_ticket`.`private_log` AS `private_log`,`_ticket`.`private_log_index` AS `private_log_index`,`_change`.`status` AS `status`,`_change`.`reason` AS `reason`,`_change`.`requestor_id` AS `requestor_id`,`Person_requestor_id_contact`.`email` AS `requestor_email`,`_change`.`creation_date` AS `creation_date`,`_change`.`impact` AS `impact`,`_change`.`supervisor_group_id` AS `supervisor_group_id`,`Team_supervisor_group_id_contact`.`name` AS `supervisor_group_name`,`_change`.`supervisor_id` AS `supervisor_id`,`Person_supervisor_id_contact`.`email` AS `supervisor_email`,`_change`.`manager_group_id` AS `manager_group_id`,`Team_manager_group_id_contact`.`name` AS `manager_group_name`,`_change`.`manager_id` AS `manager_id`,`Person_manager_id_contact`.`email` AS `manager_email`,`_change`.`outage` AS `outage`,`_change`.`fallback` AS `fallback`,`_change`.`parent_id` AS `parent_id`,`Change_parent_id_ticket`.`ref` AS `parent_name`,`_change_approved`.`approval_date` AS `approval_date`,`_change_approved`.`approval_comment` AS `approval_comment`,`_ticket`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_ticket`.`ref`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Person_caller_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_caller_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `caller_id_friendlyname`,coalesce((`Person_caller_id_contact`.`status` = \'inactive\'),0) AS `caller_id_obsolescence_flag`,cast(concat(coalesce(`Team_team_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `team_id_friendlyname`,coalesce((`Team_team_id_contact`.`status` = \'inactive\'),0) AS `team_id_obsolescence_flag`,cast(concat(coalesce(`Person_agent_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_agent_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `agent_id_friendlyname`,coalesce((`Person_agent_id_contact`.`status` = \'inactive\'),0) AS `agent_id_obsolescence_flag`,cast(concat(coalesce(`Person_requestor_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_requestor_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `requestor_id_friendlyname`,coalesce((`Person_requestor_id_contact`.`status` = \'inactive\'),0) AS `requestor_id_obsolescence_flag`,cast(concat(coalesce(`Team_supervisor_group_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`,coalesce((`Team_supervisor_group_id_contact`.`status` = \'inactive\'),0) AS `supervisor_group_id_obsolescence_flag`,cast(concat(coalesce(`Person_supervisor_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_supervisor_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `supervisor_id_friendlyname`,coalesce((`Person_supervisor_id_contact`.`status` = \'inactive\'),0) AS `supervisor_id_obsolescence_flag`,cast(concat(coalesce(`Team_manager_group_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `manager_group_id_friendlyname`,coalesce((`Team_manager_group_id_contact`.`status` = \'inactive\'),0) AS `manager_group_id_obsolescence_flag`,cast(concat(coalesce(`Person_manager_id_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Person_manager_id_contact`.`name`,\'\')) as char charset utf8mb4) AS `manager_id_friendlyname`,coalesce((`Person_manager_id_contact`.`status` = \'inactive\'),0) AS `manager_id_obsolescence_flag`,cast(concat(coalesce(`Change_parent_id_ticket`.`ref`,\'\')) as char charset utf8mb4) AS `parent_id_friendlyname`,`Change_parent_id_ticket`.`finalclass` AS `parent_id_finalclass_recall` from ((((((`mysql`.`ticket` `_ticket` join `mysql`.`organization` `Organization_org_id_organization` on((`_ticket`.`org_id` = `Organization_org_id_organization`.`id`))) left join (`mysql`.`contact` `Person_caller_id_contact` join `mysql`.`person` `Person_caller_id_person` on((`Person_caller_id_contact`.`id` = `Person_caller_id_person`.`id`))) on((`_ticket`.`caller_id` = `Person_caller_id_contact`.`id`))) left join `mysql`.`contact` `Team_team_id_contact` on((`_ticket`.`team_id` = `Team_team_id_contact`.`id`))) left join (`mysql`.`contact` `Person_agent_id_contact` join `mysql`.`person` `Person_agent_id_person` on((`Person_agent_id_contact`.`id` = `Person_agent_id_person`.`id`))) on((`_ticket`.`agent_id` = `Person_agent_id_contact`.`id`))) join ((((((`mysql`.`change` `_change` left join (`mysql`.`contact` `Person_requestor_id_contact` join `mysql`.`person` `Person_requestor_id_person` on((`Person_requestor_id_contact`.`id` = `Person_requestor_id_person`.`id`))) on((`_change`.`requestor_id` = `Person_requestor_id_contact`.`id`))) left join `mysql`.`contact` `Team_supervisor_group_id_contact` on((`_change`.`supervisor_group_id` = `Team_supervisor_group_id_contact`.`id`))) left join (`mysql`.`contact` `Person_supervisor_id_contact` join `mysql`.`person` `Person_supervisor_id_person` on((`Person_supervisor_id_contact`.`id` = `Person_supervisor_id_person`.`id`))) on((`_change`.`supervisor_id` = `Person_supervisor_id_contact`.`id`))) left join `mysql`.`contact` `Team_manager_group_id_contact` on((`_change`.`manager_group_id` = `Team_manager_group_id_contact`.`id`))) left join (`mysql`.`contact` `Person_manager_id_contact` join `mysql`.`person` `Person_manager_id_person` on((`Person_manager_id_contact`.`id` = `Person_manager_id_person`.`id`))) on((`_change`.`manager_id` = `Person_manager_id_contact`.`id`))) left join `mysql`.`ticket` `Change_parent_id_ticket` on((`_change`.`parent_id` = `Change_parent_id_ticket`.`id`))) on((`_ticket`.`id` = `_change`.`id`))) join `mysql`.`change_approved` `_change_approved` on((`_ticket`.`id` = `_change_approved`.`id`))) where (coalesce((`Person_caller_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`Team_team_id_contact`.`finalclass` = \'Team\'),1) and coalesce((`Person_agent_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`_ticket`.`finalclass` = \'EmergencyChange\'),1) and coalesce((`Person_requestor_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`Team_supervisor_group_id_contact`.`finalclass` = \'Team\'),1) and coalesce((`Person_supervisor_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`Team_manager_group_id_contact`.`finalclass` = \'Team\'),1) and coalesce((`Person_manager_id_contact`.`finalclass` = \'Person\'),1) and coalesce((`Change_parent_id_ticket`.`finalclass` in (\'RoutineChange\',\'ApprovedChange\',\'NormalChange\',\'EmergencyChange\',\'Change\')),1))
mariadb-version=100036
