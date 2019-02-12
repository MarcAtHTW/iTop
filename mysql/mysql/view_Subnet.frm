TYPE=VIEW
query=select distinct `_subnet`.`id` AS `id`,`_subnet`.`description` AS `description`,`_subnet`.`subnet_name` AS `subnet_name`,`_subnet`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_subnet`.`ip` AS `ip`,`_subnet`.`ip_mask` AS `ip_mask`,cast(concat(coalesce(`_subnet`.`ip`,\'\'),coalesce(\' \',\'\'),coalesce(`_subnet`.`ip_mask`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`mysql`.`subnet` `_subnet` join `mysql`.`organization` `Organization_org_id_organization` on((`_subnet`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
md5=e8d9dc16536140e045c4d46ecf0bfaf4
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_subnet`.`id` AS `id`, `_subnet`.`description` AS `description`, `_subnet`.`subnet_name` AS `subnet_name`, `_subnet`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `org_name`, `_subnet`.`ip` AS `ip`, `_subnet`.`ip_mask` AS `ip_mask`, CAST(CONCAT(COALESCE(`_subnet`.`ip`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_subnet`.`ip_mask`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag` FROM `subnet` AS `_subnet`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_subnet`.`org_id` = `Organization_org_id_organization`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_subnet`.`id` AS `id`,`_subnet`.`description` AS `description`,`_subnet`.`subnet_name` AS `subnet_name`,`_subnet`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_subnet`.`ip` AS `ip`,`_subnet`.`ip_mask` AS `ip_mask`,cast(concat(coalesce(`_subnet`.`ip`,\'\'),coalesce(\' \',\'\'),coalesce(`_subnet`.`ip_mask`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`mysql`.`subnet` `_subnet` join `mysql`.`organization` `Organization_org_id_organization` on((`_subnet`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
mariadb-version=100036
