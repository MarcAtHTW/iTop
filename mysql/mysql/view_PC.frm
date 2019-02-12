TYPE=VIEW
query=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_physicaldevice`.`serialnumber` AS `serialnumber`,`_physicaldevice`.`location_id` AS `location_id`,`Location_location_id_location`.`name` AS `location_name`,`_physicaldevice`.`status` AS `status`,`_physicaldevice`.`brand_id` AS `brand_id`,`Brand_brand_id_typology`.`name` AS `brand_name`,`_physicaldevice`.`model_id` AS `model_id`,`Model_model_id_typology`.`name` AS `model_name`,`_physicaldevice`.`asset_number` AS `asset_number`,`_physicaldevice`.`purchase_date` AS `purchase_date`,`_physicaldevice`.`end_of_warranty` AS `end_of_warranty`,`_pc`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`,`_pc`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_typology`.`name` AS `osversion_name`,`_pc`.`cpu` AS `cpu`,`_pc`.`ram` AS `ram`,`_pc`.`type` AS `type`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_physicaldevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id_location`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id_location`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname`,cast(concat(coalesce(`OSFamily_osfamily_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname` from (((`mysql`.`functionalci` `_functionalci` join `mysql`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join (((`mysql`.`physicaldevice` `_physicaldevice` left join `mysql`.`location` `Location_location_id_location` on((`_physicaldevice`.`location_id` = `Location_location_id_location`.`id`))) left join `mysql`.`typology` `Brand_brand_id_typology` on((`_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`))) left join `mysql`.`typology` `Model_model_id_typology` on((`_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`))) on((`_functionalci`.`id` = `_physicaldevice`.`id`))) join ((`mysql`.`pc` `_pc` left join `mysql`.`typology` `OSFamily_osfamily_id_typology` on((`_pc`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`))) left join `mysql`.`typology` `OSVersion_osversion_id_typology` on((`_pc`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`))) on((`_functionalci`.`id` = `_pc`.`id`))) where (coalesce((`_functionalci`.`finalclass` = \'PC\'),1) and coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_typology`.`finalclass` = \'Model\'),1) and coalesce((`OSFamily_osfamily_id_typology`.`finalclass` = \'OSFamily\'),1) and coalesce((`OSVersion_osversion_id_typology`.`finalclass` = \'OSVersion\'),1))
md5=6d664e0fe99d6570f0441aad3dfc808f
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_functionalci`.`id` AS `id`, `_functionalci`.`name` AS `name`, `_functionalci`.`description` AS `description`, `_functionalci`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `organization_name`, `_functionalci`.`business_criticity` AS `business_criticity`, `_functionalci`.`move2production` AS `move2production`, `_physicaldevice`.`serialnumber` AS `serialnumber`, `_physicaldevice`.`location_id` AS `location_id`, `Location_location_id_location`.`name` AS `location_name`, `_physicaldevice`.`status` AS `status`, `_physicaldevice`.`brand_id` AS `brand_id`, `Brand_brand_id_typology`.`name` AS `brand_name`, `_physicaldevice`.`model_id` AS `model_id`, `Model_model_id_typology`.`name` AS `model_name`, `_physicaldevice`.`asset_number` AS `asset_number`, `_physicaldevice`.`purchase_date` AS `purchase_date`, `_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `_pc`.`osfamily_id` AS `osfamily_id`, `OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`, `_pc`.`osversion_id` AS `osversion_id`, `OSVersion_osversion_id_typology`.`name` AS `osversion_name`, `_pc`.`cpu` AS `cpu`, `_pc`.`ram` AS `ram`, `_pc`.`type` AS `type`, `_functionalci`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_functionalci`.`name`, \'\')) AS CHAR) AS `friendlyname`, COALESCE((`_physicaldevice`.`status` = \'obsolete\'), 0) AS `obsolescence_flag`, `_functionalci`.`obsolescence_date` AS `obsolescence_date`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Location_location_id_location`.`name`, \'\')) AS CHAR) AS `location_id_friendlyname`, COALESCE((`Location_location_id_location`.`status` = \'inactive\'), 0) AS `location_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Brand_brand_id_typology`.`name`, \'\')) AS CHAR) AS `brand_id_friendlyname`, CAST(CONCAT(COALESCE(`Model_model_id_typology`.`name`, \'\')) AS CHAR) AS `model_id_friendlyname`, CAST(CONCAT(COALESCE(`OSFamily_osfamily_id_typology`.`name`, \'\')) AS CHAR) AS `osfamily_id_friendlyname`, CAST(CONCAT(COALESCE(`OSVersion_osversion_id_typology`.`name`, \'\')) AS CHAR) AS `osversion_id_friendlyname` FROM `functionalci` AS `_functionalci`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_functionalci`.`org_id` = `Organization_org_id_organization`.`id`INNER JOIN (`physicaldevice` AS `_physicaldevice` LEFT JOIN `location` AS `Location_location_id_location` ON `_physicaldevice`.`location_id` = `Location_location_id_location`.`id`LEFT JOIN `typology` AS `Brand_brand_id_typology` ON `_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`LEFT JOIN `typology` AS `Model_model_id_typology` ON `_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`) ON `_functionalci`.`id` = `_physicaldevice`.`id`INNER JOIN (`pc` AS `_pc` LEFT JOIN `typology` AS `OSFamily_osfamily_id_typology` ON `_pc`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`LEFT JOIN `typology` AS `OSVersion_osversion_id_typology` ON `_pc`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`) ON `_functionalci`.`id` = `_pc`.`id` WHERE ((((COALESCE((`_functionalci`.`finalclass` IN (\'PC\')), 1) AND COALESCE((`Brand_brand_id_typology`.`finalclass` IN (\'Brand\')), 1)) AND COALESCE((`Model_model_id_typology`.`finalclass` IN (\'Model\')), 1)) AND COALESCE((`OSFamily_osfamily_id_typology`.`finalclass` IN (\'OSFamily\')), 1)) AND COALESCE((`OSVersion_osversion_id_typology`.`finalclass` IN (\'OSVersion\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_physicaldevice`.`serialnumber` AS `serialnumber`,`_physicaldevice`.`location_id` AS `location_id`,`Location_location_id_location`.`name` AS `location_name`,`_physicaldevice`.`status` AS `status`,`_physicaldevice`.`brand_id` AS `brand_id`,`Brand_brand_id_typology`.`name` AS `brand_name`,`_physicaldevice`.`model_id` AS `model_id`,`Model_model_id_typology`.`name` AS `model_name`,`_physicaldevice`.`asset_number` AS `asset_number`,`_physicaldevice`.`purchase_date` AS `purchase_date`,`_physicaldevice`.`end_of_warranty` AS `end_of_warranty`,`_pc`.`osfamily_id` AS `osfamily_id`,`OSFamily_osfamily_id_typology`.`name` AS `osfamily_name`,`_pc`.`osversion_id` AS `osversion_id`,`OSVersion_osversion_id_typology`.`name` AS `osversion_name`,`_pc`.`cpu` AS `cpu`,`_pc`.`ram` AS `ram`,`_pc`.`type` AS `type`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_physicaldevice`.`status` = \'obsolete\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,cast(concat(coalesce(`Location_location_id_location`.`name`,\'\')) as char charset utf8mb4) AS `location_id_friendlyname`,coalesce((`Location_location_id_location`.`status` = \'inactive\'),0) AS `location_id_obsolescence_flag`,cast(concat(coalesce(`Brand_brand_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `brand_id_friendlyname`,cast(concat(coalesce(`Model_model_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `model_id_friendlyname`,cast(concat(coalesce(`OSFamily_osfamily_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osfamily_id_friendlyname`,cast(concat(coalesce(`OSVersion_osversion_id_typology`.`name`,\'\')) as char charset utf8mb4) AS `osversion_id_friendlyname` from (((`mysql`.`functionalci` `_functionalci` join `mysql`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join (((`mysql`.`physicaldevice` `_physicaldevice` left join `mysql`.`location` `Location_location_id_location` on((`_physicaldevice`.`location_id` = `Location_location_id_location`.`id`))) left join `mysql`.`typology` `Brand_brand_id_typology` on((`_physicaldevice`.`brand_id` = `Brand_brand_id_typology`.`id`))) left join `mysql`.`typology` `Model_model_id_typology` on((`_physicaldevice`.`model_id` = `Model_model_id_typology`.`id`))) on((`_functionalci`.`id` = `_physicaldevice`.`id`))) join ((`mysql`.`pc` `_pc` left join `mysql`.`typology` `OSFamily_osfamily_id_typology` on((`_pc`.`osfamily_id` = `OSFamily_osfamily_id_typology`.`id`))) left join `mysql`.`typology` `OSVersion_osversion_id_typology` on((`_pc`.`osversion_id` = `OSVersion_osversion_id_typology`.`id`))) on((`_functionalci`.`id` = `_pc`.`id`))) where (coalesce((`_functionalci`.`finalclass` = \'PC\'),1) and coalesce((`Brand_brand_id_typology`.`finalclass` = \'Brand\'),1) and coalesce((`Model_model_id_typology`.`finalclass` = \'Model\'),1) and coalesce((`OSFamily_osfamily_id_typology`.`finalclass` = \'OSFamily\'),1) and coalesce((`OSVersion_osversion_id_typology`.`finalclass` = \'OSVersion\'),1))
mariadb-version=100036
