TYPE=VIEW
query=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_virtualdevice`.`status` AS `status`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_virtualdevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from ((`mysql`.`functionalci` `_functionalci` join `mysql`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join `mysql`.`virtualdevice` `_virtualdevice` on((`_functionalci`.`id` = `_virtualdevice`.`id`))) where coalesce((`_functionalci`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualHost\')),1)
md5=50348066ba339a59886f162add5453ec
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_functionalci`.`id` AS `id`, `_functionalci`.`name` AS `name`, `_functionalci`.`description` AS `description`, `_functionalci`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `organization_name`, `_functionalci`.`business_criticity` AS `business_criticity`, `_functionalci`.`move2production` AS `move2production`, `_virtualdevice`.`status` AS `status`, `_functionalci`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_functionalci`.`name`, \'\')) AS CHAR) AS `friendlyname`, COALESCE((`_virtualdevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`, `_functionalci`.`obsolescence_date` AS `obsolescence_date`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag` FROM `functionalci` AS `_functionalci`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_functionalci`.`org_id` = `Organization_org_id_organization`.`id`INNER JOIN `virtualdevice` AS `_virtualdevice` ON `_functionalci`.`id` = `_virtualdevice`.`id` WHERE COALESCE((`_functionalci`.`finalclass` IN (\'Hypervisor\', \'Farm\', \'VirtualHost\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_virtualdevice`.`status` AS `status`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_virtualdevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag` from ((`mysql`.`functionalci` `_functionalci` join `mysql`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join `mysql`.`virtualdevice` `_virtualdevice` on((`_functionalci`.`id` = `_virtualdevice`.`id`))) where coalesce((`_functionalci`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualHost\')),1)
mariadb-version=100036
