TYPE=VIEW
query=select distinct `_document`.`id` AS `id`,`_document`.`name` AS `name`,`_document`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_document`.`documenttype_id` AS `documenttype_id`,`DocumentType_documenttype_id_typology`.`name` AS `documenttype_name`,`_document`.`version` AS `version`,`_document`.`description` AS `description`,`_document`.`status` AS `status`,`_documentweb`.`url` AS `url`,`_document`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_document`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_document`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_document`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`DocumentType_documenttype_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `documenttype_id_friendlyname` from (((`mysql`.`document` `_document` join `mysql`.`organization` `Organization_org_id_organization` on((`_document`.`org_id` = `Organization_org_id_organization`.`id`))) left join `mysql`.`typology` `DocumentType_documenttype_id_typology` on((`_document`.`documenttype_id` = `DocumentType_documenttype_id_typology`.`id`))) join `mysql`.`documentweb` `_documentweb` on((`_document`.`id` = `_documentweb`.`id`))) where (coalesce((`DocumentType_documenttype_id_typology`.`finalclass` = \'DocumentType\'),1) and coalesce((`_document`.`finalclass` = \'DocumentWeb\'),1))
md5=27d35ab447205f2f917c4904b4131ff9
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_document`.`id` AS `id`, `_document`.`name` AS `name`, `_document`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `org_name`, `_document`.`documenttype_id` AS `documenttype_id`, `DocumentType_documenttype_id_typology`.`name` AS `documenttype_name`, `_document`.`version` AS `version`, `_document`.`description` AS `description`, `_document`.`status` AS `status`, `_documentweb`.`url` AS `url`, `_document`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_document`.`name`, \'\')) AS CHAR) AS `friendlyname`, COALESCE((`_document`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`, `_document`.`obsolescence_date` AS `obsolescence_date`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`DocumentType_documenttype_id_typology`.`name`, \'\')) AS CHAR) AS `documenttype_id_friendlyname` FROM `document` AS `_document`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_document`.`org_id` = `Organization_org_id_organization`.`id`LEFT JOIN `typology` AS `DocumentType_documenttype_id_typology` ON `_document`.`documenttype_id` = `DocumentType_documenttype_id_typology`.`id`INNER JOIN `documentweb` AS `_documentweb` ON `_document`.`id` = `_documentweb`.`id` WHERE (COALESCE((`DocumentType_documenttype_id_typology`.`finalclass` IN (\'DocumentType\')), 1) AND COALESCE((`_document`.`finalclass` IN (\'DocumentWeb\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_document`.`id` AS `id`,`_document`.`name` AS `name`,`_document`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_document`.`documenttype_id` AS `documenttype_id`,`DocumentType_documenttype_id_typology`.`name` AS `documenttype_name`,`_document`.`version` AS `version`,`_document`.`description` AS `description`,`_document`.`status` AS `status`,`_documentweb`.`url` AS `url`,`_document`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_document`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_document`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_document`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`DocumentType_documenttype_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `documenttype_id_friendlyname` from (((`mysql`.`document` `_document` join `mysql`.`organization` `Organization_org_id_organization` on((`_document`.`org_id` = `Organization_org_id_organization`.`id`))) left join `mysql`.`typology` `DocumentType_documenttype_id_typology` on((`_document`.`documenttype_id` = `DocumentType_documenttype_id_typology`.`id`))) join `mysql`.`documentweb` `_documentweb` on((`_document`.`id` = `_documentweb`.`id`))) where (coalesce((`DocumentType_documenttype_id_typology`.`finalclass` = \'DocumentType\'),1) and coalesce((`_document`.`finalclass` = \'DocumentWeb\'),1))
mariadb-version=100036
