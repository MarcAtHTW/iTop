TYPE=VIEW
query=select distinct `_lnkgrouptoci`.`id` AS `id`,`_lnkgrouptoci`.`group_id` AS `group_id`,`Group_group_id_group`.`name` AS `group_name`,`_lnkgrouptoci`.`ci_id` AS `ci_id`,`FunctionalCI_ci_id_functionalci`.`name` AS `ci_name`,`_lnkgrouptoci`.`reason` AS `reason`,cast(concat(coalesce(`_lnkgrouptoci`.`group_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Group_group_id_group`.`name`,\'\')) as char charset utf8mb4) AS `group_id_friendlyname`,coalesce((`Group_group_id_group`.`status` = \'obsolete\'),0) AS `group_id_obsolescence_flag`,if((`FunctionalCI_ci_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_ci_id_functionalci`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_ci_id_functionalci`.`name`,\'\')) as char charset utf8mb4)) AS `ci_id_friendlyname`,`FunctionalCI_ci_id_functionalci`.`finalclass` AS `ci_id_finalclass_recall`,if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_ci_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'),0))))))))) AS `ci_id_obsolescence_flag` from ((`mysql`.`lnkgrouptoci` `_lnkgrouptoci` join `mysql`.`group` `Group_group_id_group` on((`_lnkgrouptoci`.`group_id` = `Group_group_id_group`.`id`))) join ((((((((`mysql`.`functionalci` `FunctionalCI_ci_id_functionalci` left join (`mysql`.`softwareinstance` `FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance` join `mysql`.`functionalci` `FunctionalCI_system_id_functionalci` on((`FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`))) on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`id`))) left join `mysql`.`virtualdevice` `FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice` on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice`.`id`))) left join (`mysql`.`webapplication` `FunctionalCI_ci_id_fn_WebApplication_webapplication` join (`mysql`.`functionalci` `WebServer_webserver_id_functionalci` join `mysql`.`softwareinstance` `WebServer_webserver_id_softwareinstance` on((`WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`))) on((`FunctionalCI_ci_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`))) on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_WebApplication_webapplication`.`id`))) left join (`mysql`.`databaseschema` `FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema` join (`mysql`.`functionalci` `DBServer_dbserver_id_functionalci` join `mysql`.`softwareinstance` `DBServer_dbserver_id_softwareinstance` on((`DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`))) on((`FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`))) on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema`.`id`))) left join (`mysql`.`middlewareinstance` `FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance` join (`mysql`.`functionalci` `Middleware_middleware_id_functionalci` join `mysql`.`softwareinstance` `Middleware_middleware_id_softwareinstance` on((`Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`))) on((`FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`))) on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance`.`id`))) left join `mysql`.`businessprocess` `FunctionalCI_ci_id_fn_BusinessProcess_businessprocess` on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_BusinessProcess_businessprocess`.`id`))) left join `mysql`.`applicationsolution` `FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution` on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution`.`id`))) left join `mysql`.`physicaldevice` `FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice` on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice`.`id`))) on((`_lnkgrouptoci`.`ci_id` = `FunctionalCI_ci_id_functionalci`.`id`))) where (coalesce((`WebServer_webserver_id_functionalci`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_functionalci`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_functionalci`.`finalclass` = \'Middleware\'),1))
md5=2029e5e630302a21d04d87606fd684ee
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_lnkgrouptoci`.`id` AS `id`, `_lnkgrouptoci`.`group_id` AS `group_id`, `Group_group_id_group`.`name` AS `group_name`, `_lnkgrouptoci`.`ci_id` AS `ci_id`, `FunctionalCI_ci_id_functionalci`.`name` AS `ci_name`, `_lnkgrouptoci`.`reason` AS `reason`, CAST(CONCAT(COALESCE(`_lnkgrouptoci`.`group_id`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Group_group_id_group`.`name`, \'\')) AS CHAR) AS `group_id_friendlyname`, COALESCE((`Group_group_id_group`.`status` = \'obsolete\'), 0) AS `group_id_obsolescence_flag`, IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), CAST(CONCAT(COALESCE(`FunctionalCI_ci_id_functionalci`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`FunctionalCI_system_id_functionalci`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`FunctionalCI_ci_id_functionalci`.`name`, \'\')) AS CHAR)) AS `ci_id_friendlyname`, `FunctionalCI_ci_id_functionalci`.`finalclass` AS `ci_id_finalclass_recall`, IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'FunctionalCI\')), COALESCE(0, 0), IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'Hypervisor\', \'Farm\', \'VirtualMachine\')), COALESCE((`FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'), 0), IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'WebApplication\')), COALESCE(COALESCE((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'DatabaseSchema\')), COALESCE(COALESCE((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'MiddlewareInstance\')), COALESCE(COALESCE((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'), 0), 0), IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'Middleware\', \'DBServer\', \'WebServer\', \'PCSoftware\', \'OtherSoftware\')), COALESCE((`FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'), 0), IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'BusinessProcess\')), COALESCE((`FunctionalCI_ci_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'), 0), IF((`FunctionalCI_ci_id_functionalci`.`finalclass` IN (\'ApplicationSolution\')), COALESCE((`FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'), 0), COALESCE((`FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'), 0))))))))) AS `ci_id_obsolescence_flag` FROM `lnkgrouptoci` AS `_lnkgrouptoci`INNER JOIN `group` AS `Group_group_id_group` ON `_lnkgrouptoci`.`group_id` = `Group_group_id_group`.`id`INNER JOIN (`functionalci` AS `FunctionalCI_ci_id_functionalci` LEFT JOIN (`softwareinstance` AS `FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance` INNER JOIN `functionalci` AS `FunctionalCI_system_id_functionalci` ON `FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`) ON `FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`id`LEFT JOIN `virtualdevice` AS `FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice` ON `FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice`.`id`LEFT JOIN (`webapplication` AS `FunctionalCI_ci_id_fn_WebApplication_webapplication` INNER JOIN (`functionalci` AS `WebServer_webserver_id_functionalci` INNER JOIN `softwareinstance` AS `WebServer_webserver_id_softwareinstance` ON `WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`) ON `FunctionalCI_ci_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`) ON `FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_WebApplication_webapplication`.`id`LEFT JOIN (`databaseschema` AS `FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema` INNER JOIN (`functionalci` AS `DBServer_dbserver_id_functionalci` INNER JOIN `softwareinstance` AS `DBServer_dbserver_id_softwareinstance` ON `DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`) ON `FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`) ON `FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema`.`id`LEFT JOIN (`middlewareinstance` AS `FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance` INNER JOIN (`functionalci` AS `Middleware_middleware_id_functionalci` INNER JOIN `softwareinstance` AS `Middleware_middleware_id_softwareinstance` ON `Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`) ON `FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`) ON `FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance`.`id`LEFT JOIN `businessprocess` AS `FunctionalCI_ci_id_fn_BusinessProcess_businessprocess` ON `FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_BusinessProcess_businessprocess`.`id`LEFT JOIN `applicationsolution` AS `FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution` ON `FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution`.`id`LEFT JOIN `physicaldevice` AS `FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice` ON `FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice`.`id`) ON `_lnkgrouptoci`.`ci_id` = `FunctionalCI_ci_id_functionalci`.`id` WHERE ((COALESCE((`WebServer_webserver_id_functionalci`.`finalclass` IN (\'WebServer\')), 1) AND COALESCE((`DBServer_dbserver_id_functionalci`.`finalclass` IN (\'DBServer\')), 1)) AND COALESCE((`Middleware_middleware_id_functionalci`.`finalclass` IN (\'Middleware\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_lnkgrouptoci`.`id` AS `id`,`_lnkgrouptoci`.`group_id` AS `group_id`,`Group_group_id_group`.`name` AS `group_name`,`_lnkgrouptoci`.`ci_id` AS `ci_id`,`FunctionalCI_ci_id_functionalci`.`name` AS `ci_name`,`_lnkgrouptoci`.`reason` AS `reason`,cast(concat(coalesce(`_lnkgrouptoci`.`group_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Group_group_id_group`.`name`,\'\')) as char charset utf8mb4) AS `group_id_friendlyname`,coalesce((`Group_group_id_group`.`status` = \'obsolete\'),0) AS `group_id_obsolescence_flag`,if((`FunctionalCI_ci_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),cast(concat(coalesce(`FunctionalCI_ci_id_functionalci`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`FunctionalCI_system_id_functionalci`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`FunctionalCI_ci_id_functionalci`.`name`,\'\')) as char charset utf8mb4)) AS `ci_id_friendlyname`,`FunctionalCI_ci_id_functionalci`.`finalclass` AS `ci_id_finalclass_recall`,if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'FunctionalCI\'),coalesce(0,0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` in (\'Hypervisor\',\'Farm\',\'VirtualMachine\')),coalesce((`FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice`.`status` = \'obsolete\'),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'WebApplication\'),coalesce(coalesce((`WebServer_webserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'DatabaseSchema\'),coalesce(coalesce((`DBServer_dbserver_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'MiddlewareInstance\'),coalesce(coalesce((`Middleware_middleware_id_softwareinstance`.`status` = \'inactive\'),0),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` in (\'Middleware\',\'DBServer\',\'WebServer\',\'PCSoftware\',\'OtherSoftware\')),coalesce((`FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`status` = \'inactive\'),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'BusinessProcess\'),coalesce((`FunctionalCI_ci_id_fn_BusinessProcess_businessprocess`.`status` = \'inactive\'),0),if((`FunctionalCI_ci_id_functionalci`.`finalclass` = \'ApplicationSolution\'),coalesce((`FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution`.`status` = \'inactive\'),0),coalesce((`FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice`.`status` = \'obsolete\'),0))))))))) AS `ci_id_obsolescence_flag` from ((`mysql`.`lnkgrouptoci` `_lnkgrouptoci` join `mysql`.`group` `Group_group_id_group` on((`_lnkgrouptoci`.`group_id` = `Group_group_id_group`.`id`))) join ((((((((`mysql`.`functionalci` `FunctionalCI_ci_id_functionalci` left join (`mysql`.`softwareinstance` `FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance` join `mysql`.`functionalci` `FunctionalCI_system_id_functionalci` on((`FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`functionalci_id` = `FunctionalCI_system_id_functionalci`.`id`))) on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_SoftwareInstance_softwareinstance`.`id`))) left join `mysql`.`virtualdevice` `FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice` on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_VirtualDevice_virtualdevice`.`id`))) left join (`mysql`.`webapplication` `FunctionalCI_ci_id_fn_WebApplication_webapplication` join (`mysql`.`functionalci` `WebServer_webserver_id_functionalci` join `mysql`.`softwareinstance` `WebServer_webserver_id_softwareinstance` on((`WebServer_webserver_id_functionalci`.`id` = `WebServer_webserver_id_softwareinstance`.`id`))) on((`FunctionalCI_ci_id_fn_WebApplication_webapplication`.`webserver_id` = `WebServer_webserver_id_functionalci`.`id`))) on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_WebApplication_webapplication`.`id`))) left join (`mysql`.`databaseschema` `FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema` join (`mysql`.`functionalci` `DBServer_dbserver_id_functionalci` join `mysql`.`softwareinstance` `DBServer_dbserver_id_softwareinstance` on((`DBServer_dbserver_id_functionalci`.`id` = `DBServer_dbserver_id_softwareinstance`.`id`))) on((`FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema`.`dbserver_id` = `DBServer_dbserver_id_functionalci`.`id`))) on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_DatabaseSchema_databaseschema`.`id`))) left join (`mysql`.`middlewareinstance` `FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance` join (`mysql`.`functionalci` `Middleware_middleware_id_functionalci` join `mysql`.`softwareinstance` `Middleware_middleware_id_softwareinstance` on((`Middleware_middleware_id_functionalci`.`id` = `Middleware_middleware_id_softwareinstance`.`id`))) on((`FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance`.`middleware_id` = `Middleware_middleware_id_functionalci`.`id`))) on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_MiddlewareInstance_middlewareinstance`.`id`))) left join `mysql`.`businessprocess` `FunctionalCI_ci_id_fn_BusinessProcess_businessprocess` on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_BusinessProcess_businessprocess`.`id`))) left join `mysql`.`applicationsolution` `FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution` on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_ApplicationSolution_applicationsolution`.`id`))) left join `mysql`.`physicaldevice` `FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice` on((`FunctionalCI_ci_id_functionalci`.`id` = `FunctionalCI_ci_id_fn_PhysicalDevice_physicaldevice`.`id`))) on((`_lnkgrouptoci`.`ci_id` = `FunctionalCI_ci_id_functionalci`.`id`))) where (coalesce((`WebServer_webserver_id_functionalci`.`finalclass` = \'WebServer\'),1) and coalesce((`DBServer_dbserver_id_functionalci`.`finalclass` = \'DBServer\'),1) and coalesce((`Middleware_middleware_id_functionalci`.`finalclass` = \'Middleware\'),1))
mariadb-version=100036
