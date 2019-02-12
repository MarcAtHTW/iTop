TYPE=VIEW
query=select distinct `_location`.`id` AS `id`,`_location`.`name` AS `name`,`_location`.`status` AS `status`,`_location`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_location`.`address` AS `address`,`_location`.`postal_code` AS `postal_code`,`_location`.`city` AS `city`,`_location`.`country` AS `country`,cast(concat(coalesce(`_location`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_location`.`status` = \'inactive\'),0) AS `obsolescence_flag`,`_location`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`mysql`.`location` `_location` join `mysql`.`organization` `Organization_org_id_organization` on((`_location`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
md5=f8ca246541206c4ceaf3fafceb61a810
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_location`.`id` AS `id`, `_location`.`name` AS `name`, `_location`.`status` AS `status`, `_location`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `org_name`, `_location`.`address` AS `address`, `_location`.`postal_code` AS `postal_code`, `_location`.`city` AS `city`, `_location`.`country` AS `country`, CAST(CONCAT(COALESCE(`_location`.`name`, \'\')) AS CHAR) AS `friendlyname`, COALESCE((`_location`.`status` = \'inactive\'), 0) AS `obsolescence_flag`, `_location`.`obsolescence_date` AS `obsolescence_date`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag` FROM `location` AS `_location`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_location`.`org_id` = `Organization_org_id_organization`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_location`.`id` AS `id`,`_location`.`name` AS `name`,`_location`.`status` AS `status`,`_location`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `org_name`,`_location`.`address` AS `address`,`_location`.`postal_code` AS `postal_code`,`_location`.`city` AS `city`,`_location`.`country` AS `country`,cast(concat(coalesce(`_location`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_location`.`status` = \'inactive\'),0) AS `obsolescence_flag`,`_location`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from (`mysql`.`location` `_location` join `mysql`.`organization` `Organization_org_id_organization` on((`_location`.`org_id` = `Organization_org_id_organization`.`id`))) where 1
mariadb-version=100036
