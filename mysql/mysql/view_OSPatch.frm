TYPE=VIEW
query=select distinct `_patch`.`id` AS `id`,`_patch`.`name` AS `name`,`_patch`.`description` AS `description`,`_ospatch`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_typology`.`name` AS `osversion_name`,`_patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname` from (`mysql`.`patch` `_patch` join (`mysql`.`ospatch` `_ospatch` join `mysql`.`typology` `OSVersion_osversion_id_typology` on((`_ospatch`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`))) on((`_patch`.`id` = `_ospatch`.`id`))) where (coalesce((`_patch`.`finalclass` = \'OSPatch\'),1) and coalesce((`OSVersion_osversion_id_typology`.`finalclass` = \'OSVersion\'),1))
md5=385a74622ef6ab54c57418a66bf79078
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_patch`.`id` AS `id`, `_patch`.`name` AS `name`, `_patch`.`description` AS `description`, `_ospatch`.`osversion_id` AS `osversion_id`, `OSVersion_osversion_id_typology`.`name` AS `osversion_name`, `_patch`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_patch`.`name`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`OSVersion_osversion_id_typology`.`name`, \'\')) AS CHAR) AS `osversion_id_friendlyname` FROM `patch` AS `_patch`INNER JOIN (`ospatch` AS `_ospatch` INNER JOIN `typology` AS `OSVersion_osversion_id_typology` ON `_ospatch`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`) ON `_patch`.`id` = `_ospatch`.`id` WHERE (COALESCE((`_patch`.`finalclass` IN (\'OSPatch\')), 1) AND COALESCE((`OSVersion_osversion_id_typology`.`finalclass` IN (\'OSVersion\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_patch`.`id` AS `id`,`_patch`.`name` AS `name`,`_patch`.`description` AS `description`,`_ospatch`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_typology`.`name` AS `osversion_name`,`_patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname` from (`mysql`.`patch` `_patch` join (`mysql`.`ospatch` `_ospatch` join `mysql`.`typology` `OSVersion_osversion_id_typology` on((`_ospatch`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`))) on((`_patch`.`id` = `_ospatch`.`id`))) where (coalesce((`_patch`.`finalclass` = \'OSPatch\'),1) and coalesce((`OSVersion_osversion_id_typology`.`finalclass` = \'OSVersion\'),1))
mariadb-version=100036
