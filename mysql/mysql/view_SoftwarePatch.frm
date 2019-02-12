TYPE=VIEW
query=select distinct `_patch`.`id` AS `id`,`_patch`.`name` AS `name`,`_patch`.`description` AS `description`,`_softwarepatch`.`software_id` AS `software_id`,`Software_software_id_software`.`name` AS `software_name`,`_patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Software_software_id_software`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Software_software_id_software`.`version`,\'\')) as char charset utf8mb4) AS `software_id_friendlyname` from (`mysql`.`patch` `_patch` join (`mysql`.`softwarepatch` `_softwarepatch` join `mysql`.`software` `Software_software_id_software` on((`_softwarepatch`.`software_id` = `Software_software_id_software`.`id`))) on((`_patch`.`id` = `_softwarepatch`.`id`))) where coalesce((`_patch`.`finalclass` = \'SoftwarePatch\'),1)
md5=d10bb984d1996cfb3a94b4cffc67267b
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_patch`.`id` AS `id`, `_patch`.`name` AS `name`, `_patch`.`description` AS `description`, `_softwarepatch`.`software_id` AS `software_id`, `Software_software_id_software`.`name` AS `software_name`, `_patch`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_patch`.`name`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Software_software_id_software`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Software_software_id_software`.`version`, \'\')) AS CHAR) AS `software_id_friendlyname` FROM `patch` AS `_patch`INNER JOIN (`softwarepatch` AS `_softwarepatch` INNER JOIN `software` AS `Software_software_id_software` ON `_softwarepatch`.`software_id` = `Software_software_id_software`.`id`) ON `_patch`.`id` = `_softwarepatch`.`id` WHERE COALESCE((`_patch`.`finalclass` IN (\'SoftwarePatch\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_patch`.`id` AS `id`,`_patch`.`name` AS `name`,`_patch`.`description` AS `description`,`_softwarepatch`.`software_id` AS `software_id`,`Software_software_id_software`.`name` AS `software_name`,`_patch`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_patch`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Software_software_id_software`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Software_software_id_software`.`version`,\'\')) as char charset utf8mb4) AS `software_id_friendlyname` from (`mysql`.`patch` `_patch` join (`mysql`.`softwarepatch` `_softwarepatch` join `mysql`.`software` `Software_software_id_software` on((`_softwarepatch`.`software_id` = `Software_software_id_software`.`id`))) on((`_patch`.`id` = `_softwarepatch`.`id`))) where coalesce((`_patch`.`finalclass` = \'SoftwarePatch\'),1)
mariadb-version=100036
