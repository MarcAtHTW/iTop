TYPE=VIEW
query=select distinct `_typology`.`id` AS `id`,`_typology`.`name` AS `name`,`_typology`.`finalclass` AS `finalclass`,if((`_typology`.`finalclass` = \'IOSVersion\'),cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4)) AS `friendlyname` from (`mysql`.`typology` `_typology` left join (`mysql`.`iosversion` `_fn_IOSVersion_iosversion` join `mysql`.`typology` `Brand_brand_id_typology` on((`_fn_IOSVersion_iosversion`.`brand_id` = `Brand_brand_id_typology`.`id`))) on((`_typology`.`id` = `_fn_IOSVersion_iosversion`.`id`))) where coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1)
md5=ec5cc1b44319ca8960fd69329b21273a
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_typology`.`id` AS `id`, `_typology`.`name` AS `name`, `_typology`.`finalclass` AS `finalclass`, IF((`_typology`.`finalclass` IN (\'IOSVersion\')), CAST(CONCAT(COALESCE(`Brand_brand_id_typology`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_typology`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`_typology`.`name`, \'\')) AS CHAR)) AS `friendlyname` FROM `typology` AS `_typology`LEFT JOIN (`iosversion` AS `_fn_IOSVersion_iosversion` INNER JOIN `typology` AS `Brand_brand_id_typology` ON `_fn_IOSVersion_iosversion`.`brand_id` = `Brand_brand_id_typology`.`id`) ON `_typology`.`id` = `_fn_IOSVersion_iosversion`.`id` WHERE COALESCE((`Brand_brand_id_typology`.`finalclass` IN (\'Brand\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_typology`.`id` AS `id`,`_typology`.`name` AS `name`,`_typology`.`finalclass` AS `finalclass`,if((`_typology`.`finalclass` = \'IOSVersion\'),cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4)) AS `friendlyname` from (`mysql`.`typology` `_typology` left join (`mysql`.`iosversion` `_fn_IOSVersion_iosversion` join `mysql`.`typology` `Brand_brand_id_typology` on((`_fn_IOSVersion_iosversion`.`brand_id` = `Brand_brand_id_typology`.`id`))) on((`_typology`.`id` = `_fn_IOSVersion_iosversion`.`id`))) where coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1)
mariadb-version=100036
