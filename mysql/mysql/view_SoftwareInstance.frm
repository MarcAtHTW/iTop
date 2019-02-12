TYPE=VIEW
query=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_softwareinstance`.`functionalci_id` AS `system_id`,`FunctionalCI_system_id_functionalci`.`name` AS `system_name`,`_softwareinstance`.`software_id` AS `software_id`,`Software_software_id_software`.`name` AS `software_name`,`_softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`,`SoftwareLicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`,`_softwareinstance`.`path` AS `path`,`_softwareinstance`.`status` AS `status`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_softwareinstance`.`status` = \'inactive\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,if((`FunctionalCI_system_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id1_functionalci`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\')) as char charset utf8mb4)) AS `system_id_friendlyname`,`FunctionalCI_system_id_functionalci`.`finalclass` AS `system_id_finalclass_recall`,if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_system_id_functionalci`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_system_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_system_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'),0))))))))) AS `system_id_obsolescence_flag`,cast(concat(coalesce(`Software_software_id_software`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Software_software_id_software`.`version`,\'\')) as char charset utf8mb4) AS `software_id_friendlyname`,cast(concat(coalesce(`SoftwareLicence_softwarelicence_id_licence`.`name`,\'\')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`,coalesce(((`SoftwareLicence_softwarelicence_id_licence`.`perpetual` = \'no\') and (isnull(`SoftwareLicence_softwarelicence_id_licence`.`end_date`) = 0) and (`SoftwareLicence_softwarelicence_id_licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `softwarelicence_id_obsolescence_flag` from ((`mysql`.`functionalci` `_functionalci` join `mysql`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join (((`mysql`.`softwareinstance` `_softwareinstance` join ((((((((`mysql`.`functionalci` `FunctionalCI_system_id_functionalci` left join (`mysql`.`softwareinstance` `FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance` join `mysql`.`functionalci` `FunctionalCI_system_id1_functionalci` on((`FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id1_functionalci`.`id`))) on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`id`))) left join `mysql`.`virtualdevice` `FunctionalCI_system_id_fn_VirtualDevice_virtualdevice` on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_VirtualDevice_virtualdevice`.`id`))) left join (`mysql`.`webapplication` `FunctionalCI_system_id_fn_WebApplication_webapplication` join (`mysql`.`functionalci` `WebServer_webserver_id_functionalci` join `mysql`.`softwareinstance` `WebServer_webserver_id_softwareinstance` on((`WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`))) on((`FunctionalCI_system_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`))) on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_WebApplication_webapplication`.`id`))) left join (`mysql`.`databaseschema` `FunctionalCI_system_id_fn_DatabaseSchema_databaseschema` join (`mysql`.`functionalci` `DBServer_dbserver_id_functionalci` join `mysql`.`softwareinstance` `DBServer_dbserver_id_softwareinstance` on((`DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`))) on((`FunctionalCI_system_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`))) on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_DatabaseSchema_databaseschema`.`id`))) left join (`mysql`.`middlewareinstance` `FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance` join (`mysql`.`functionalci` `Middleware_middleware_id_functionalci` join `mysql`.`softwareinstance` `Middleware_middleware_id_softwareinstance` on((`Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`))) on((`FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`))) on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance`.`id`))) left join `mysql`.`businessprocess` `FunctionalCI_system_id_fn_BusinessProcess_businessprocess` on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_BusinessProcess_businessprocess`.`id`))) left join `mysql`.`applicationsolution` `FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution` on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution`.`id`))) left join `mysql`.`physicaldevice` `FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice` on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice`.`id`))) on((`_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`))) left join `mysql`.`software` `Software_software_id_software` on((`_softwareinstance`.`software_id` = `Software_software_id_software`.`id`))) left join `mysql`.`licence` `SoftwareLicence_softwarelicence_id_licence` on((`_softwareinstance`.`softwarelicence_id` = `SoftwareLicence_softwarelicence_id_licence`.`id`))) on((`_functionalci`.`id` = `_softwareinstance`.`id`))) where (coalesce((`_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\',\'SoftwareInstance\')),1) and coalesce((`WebServer_webserver_id_functionalci`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_functionalci`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_functionalci`.`finalclass` = \'Middleware\'),1) and coalesce((`SoftwareLicence_softwarelicence_id_licence`.`finalclass` = \'SoftwareLicence\'),1))
md5=0879853400164b5152cefc8f2d219e94
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_functionalci`.`id` AS `id`, `_functionalci`.`name` AS `name`, `_functionalci`.`description` AS `description`, `_functionalci`.`org_id` AS `org_id`, `Organization_org_id_organization`.`name` AS `organization_name`, `_functionalci`.`business_criticity` AS `business_criticity`, `_functionalci`.`move2production` AS `move2production`, `_softwareinstance`.`functionalci_id` AS `system_id`, `FunctionalCI_system_id_functionalci`.`name` AS `system_name`, `_softwareinstance`.`software_id` AS `software_id`, `Software_software_id_software`.`name` AS `software_name`, `_softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`, `SoftwareLicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`, `_softwareinstance`.`path` AS `path`, `_softwareinstance`.`status` AS `status`, `_functionalci`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_functionalci`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`FunctionalCI_system_id_functionalci`.`name`, \'\')) AS CHAR) AS `friendlyname`, COALESCE((`_softwareinstance`.`status` = \'inactive\'), 0) AS `obsolescence_flag`, `_functionalci`.`obsolescence_date` AS `obsolescence_date`, CAST(CONCAT(COALESCE(`Organization_org_id_organization`.`name`, \'\')) AS CHAR) AS `org_id_friendlyname`, COALESCE((`Organization_org_id_organization`.`status` = \'inactive\'), 0) AS `org_id_obsolescence_flag`, IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), CAST(CONCAT(COALESCE(`FunctionalCI_system_id_functionalci`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`FunctionalCI_system_id1_functionalci`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`FunctionalCI_system_id_functionalci`.`name`, \'\')) AS CHAR)) AS `system_id_friendlyname`, `FunctionalCI_system_id_functionalci`.`finalclass` AS `system_id_finalclass_recall`, IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'FunctionalCI\')), COALESCE(0, 0), IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'Hypervisor\', \'Farm\', \'VirtualMachine\')), COALESCE((`FunctionalCI_system_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'), 0), IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'WebApplication\')), COALESCE(COALESCE((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'DatabaseSchema\')), COALESCE(COALESCE((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'MiddlewareInstance\')), COALESCE(COALESCE((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), COALESCE((`FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'), 0), IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'BusinessProcess\')), COALESCE((`FunctionalCI_system_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'), 0), IF((`FunctionalCI_system_id_functionalci`.`finalclass` IN (\'ApplicationSolution\')), COALESCE((`FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'), 0), COALESCE((`FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'), 0))))))))) AS `system_id_obsolescence_flag`, CAST(CONCAT(COALESCE(`Software_software_id_software`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Software_software_id_software`.`version`, \'\')) AS CHAR) AS `software_id_friendlyname`, CAST(CONCAT(COALESCE(`SoftwareLicence_softwarelicence_id_licence`.`name`, \'\')) AS CHAR) AS `softwarelicence_id_friendlyname`, COALESCE((((`SoftwareLicence_softwarelicence_id_licence`.`perpetual` = \'no\') AND (ISNULL(`SoftwareLicence_softwarelicence_id_licence`.`end_date`) = 0)) AND (`SoftwareLicence_softwarelicence_id_licence`.`end_date` < DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 15 MONTH), \'%Y-%m-%d 00:00:00\'))), 0) AS `softwarelicence_id_obsolescence_flag` FROM `functionalci` AS `_functionalci`INNER JOIN `organization` AS `Organization_org_id_organization` ON `_functionalci`.`org_id` = `Organization_org_id_organization`.`id`INNER JOIN (`softwareinstance` AS `_softwareinstance` INNER JOIN (`functionalci` AS `FunctionalCI_system_id_functionalci` LEFT JOIN (`softwareinstance` AS `FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance` INNER JOIN `functionalci` AS `FunctionalCI_system_id1_functionalci` ON `FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id1_functionalci`.`id`) ON `FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`id`LEFT JOIN `virtualdevice` AS `FunctionalCI_system_id_fn_VirtualDevice_virtualdevice` ON `FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_VirtualDevice_virtualdevice`.`id`LEFT JOIN (`webapplication` AS `FunctionalCI_system_id_fn_WebApplication_webapplication` INNER JOIN (`functionalci` AS `WebServer_webserver_id_functionalci` INNER JOIN `softwareinstance` AS `WebServer_webserver_id_softwareinstance` ON `WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`) ON `FunctionalCI_system_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`) ON `FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_WebApplication_webapplication`.`id`LEFT JOIN (`databaseschema` AS `FunctionalCI_system_id_fn_DatabaseSchema_databaseschema` INNER JOIN (`functionalci` AS `DBServer_dbserver_id_functionalci` INNER JOIN `softwareinstance` AS `DBServer_dbserver_id_softwareinstance` ON `DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`) ON `FunctionalCI_system_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`) ON `FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_DatabaseSchema_databaseschema`.`id`LEFT JOIN (`middlewareinstance` AS `FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance` INNER JOIN (`functionalci` AS `Middleware_middleware_id_functionalci` INNER JOIN `softwareinstance` AS `Middleware_middleware_id_softwareinstance` ON `Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`) ON `FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`) ON `FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance`.`id`LEFT JOIN `businessprocess` AS `FunctionalCI_system_id_fn_BusinessProcess_businessprocess` ON `FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_BusinessProcess_businessprocess`.`id`LEFT JOIN `applicationsolution` AS `FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution` ON `FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution`.`id`LEFT JOIN `physicaldevice` AS `FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice` ON `FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice`.`id`) ON `_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`LEFT JOIN `software` AS `Software_software_id_software` ON `_softwareinstance`.`software_id` = `Software_software_id_software`.`id`LEFT JOIN `licence` AS `SoftwareLicence_softwarelicence_id_licence` ON `_softwareinstance`.`softwarelicence_id` = `SoftwareLicence_softwarelicence_id_licence`.`id`) ON `_functionalci`.`id` = `_softwareinstance`.`id` WHERE ((((COALESCE((`_functionalci`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\', \'SoftwareInstance\')), 1) AND COALESCE((`WebServer_webserver_id_functionalci`.`finalclass` IN (\'WebServer\')), 1)) AND COALESCE((`DBServer_dbserver_id_functionalci`.`finalclass` IN (\'DBServer\')), 1)) AND COALESCE((`Middleware_middleware_id_functionalci`.`finalclass` IN (\'Middleware\')), 1)) AND COALESCE((`SoftwareLicence_softwarelicence_id_licence`.`finalclass` IN (\'SoftwareLicence\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_functionalci`.`id` AS `id`,`_functionalci`.`name` AS `name`,`_functionalci`.`description` AS `description`,`_functionalci`.`org_id` AS `org_id`,`Organization_org_id_organization`.`name` AS `organization_name`,`_functionalci`.`business_criticity` AS `business_criticity`,`_functionalci`.`move2production` AS `move2production`,`_softwareinstance`.`functionalci_id` AS `system_id`,`FunctionalCI_system_id_functionalci`.`name` AS `system_name`,`_softwareinstance`.`software_id` AS `software_id`,`Software_software_id_software`.`name` AS `software_name`,`_softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`,`SoftwareLicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`,`_softwareinstance`.`path` AS `path`,`_softwareinstance`.`status` AS `status`,`_functionalci`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_functionalci`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname`,coalesce((`_softwareinstance`.`status` = \'inactive\'),0) AS `obsolescence_flag`,`_functionalci`.`obsolescence_date` AS `obsolescence_date`,cast(concat(coalesce(`Organization_org_id_organization`.`name`,\'\')) as char charset utf8mb4) AS `org_id_friendlyname`,coalesce((`Organization_org_id_organization`.`status` = \'inactive\'),0) AS `org_id_obsolescence_flag`,if((`FunctionalCI_system_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id1_functionalci`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\')) as char charset utf8mb4)) AS `system_id_friendlyname`,`FunctionalCI_system_id_functionalci`.`finalclass` AS `system_id_finalclass_recall`,if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_system_id_functionalci`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_system_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_system_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'),0),if((`FunctionalCI_system_id_functionalci`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'),0))))))))) AS `system_id_obsolescence_flag`,cast(concat(coalesce(`Software_software_id_software`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`Software_software_id_software`.`version`,\'\')) as char charset utf8mb4) AS `software_id_friendlyname`,cast(concat(coalesce(`SoftwareLicence_softwarelicence_id_licence`.`name`,\'\')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`,coalesce(((`SoftwareLicence_softwarelicence_id_licence`.`perpetual` = \'no\') and (isnull(`SoftwareLicence_softwarelicence_id_licence`.`end_date`) = 0) and (`SoftwareLicence_softwarelicence_id_licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `softwarelicence_id_obsolescence_flag` from ((`mysql`.`functionalci` `_functionalci` join `mysql`.`organization` `Organization_org_id_organization` on((`_functionalci`.`org_id` = `Organization_org_id_organization`.`id`))) join (((`mysql`.`softwareinstance` `_softwareinstance` join ((((((((`mysql`.`functionalci` `FunctionalCI_system_id_functionalci` left join (`mysql`.`softwareinstance` `FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance` join `mysql`.`functionalci` `FunctionalCI_system_id1_functionalci` on((`FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id1_functionalci`.`id`))) on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_SoftwareInstance_softwareinstance`.`id`))) left join `mysql`.`virtualdevice` `FunctionalCI_system_id_fn_VirtualDevice_virtualdevice` on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_VirtualDevice_virtualdevice`.`id`))) left join (`mysql`.`webapplication` `FunctionalCI_system_id_fn_WebApplication_webapplication` join (`mysql`.`functionalci` `WebServer_webserver_id_functionalci` join `mysql`.`softwareinstance` `WebServer_webserver_id_softwareinstance` on((`WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`))) on((`FunctionalCI_system_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`))) on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_WebApplication_webapplication`.`id`))) left join (`mysql`.`databaseschema` `FunctionalCI_system_id_fn_DatabaseSchema_databaseschema` join (`mysql`.`functionalci` `DBServer_dbserver_id_functionalci` join `mysql`.`softwareinstance` `DBServer_dbserver_id_softwareinstance` on((`DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`))) on((`FunctionalCI_system_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`))) on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_DatabaseSchema_databaseschema`.`id`))) left join (`mysql`.`middlewareinstance` `FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance` join (`mysql`.`functionalci` `Middleware_middleware_id_functionalci` join `mysql`.`softwareinstance` `Middleware_middleware_id_softwareinstance` on((`Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`))) on((`FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`))) on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_MiddlewareInstance_middlewareinstance`.`id`))) left join `mysql`.`businessprocess` `FunctionalCI_system_id_fn_BusinessProcess_businessprocess` on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_BusinessProcess_businessprocess`.`id`))) left join `mysql`.`applicationsolution` `FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution` on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_ApplicationSolution_applicationsolution`.`id`))) left join `mysql`.`physicaldevice` `FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice` on((`FunctionalCI_system_id_functionalci`.`id` = `FunctionalCI_system_id_fn_PhysicalDevice_physicaldevice`.`id`))) on((`_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`))) left join `mysql`.`software` `Software_software_id_software` on((`_softwareinstance`.`software_id` = `Software_software_id_software`.`id`))) left join `mysql`.`licence` `SoftwareLicence_softwarelicence_id_licence` on((`_softwareinstance`.`softwarelicence_id` = `SoftwareLicence_softwarelicence_id_licence`.`id`))) on((`_functionalci`.`id` = `_softwareinstance`.`id`))) where (coalesce((`_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\',\'SoftwareInstance\')),1) and coalesce((`WebServer_webserver_id_functionalci`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_functionalci`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_functionalci`.`finalclass` = \'Middleware\'),1) and coalesce((`SoftwareLicence_softwarelicence_id_licence`.`finalclass` = \'SoftwareLicence\'),1))
mariadb-version=100036
