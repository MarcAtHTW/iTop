TYPE=VIEW
query=select distinct `_networkinterface`.`id` AS `id`,`_networkinterface`.`name` AS `name`,`_networkinterface`.`finalclass` AS `finalclass`,if((`_networkinterface`.`finalclass` = \'NetworkInterface\'),cast(concat(coalesce(`_networkinterface`.`name`,\'\')) as char charset utf8mb4),if((`_networkinterface`.`finalclass` = \'LogicalInterface\'),cast(concat(coalesce(`_networkinterface`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`VirtualMachine_virtualmachine_id_functionalci`.`name`,\'\')) as char charset utf8mb4),if((`_networkinterface`.`finalclass` = \'FiberChannelInterface\'),cast(concat(coalesce(`_networkinterface`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`DatacenterDevice_datacenterdevice_id_functionalci`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`_networkinterface`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`ConnectableCI_connectableci_id_functionalci`.`name`,\'\')) as char charset utf8mb4)))) AS `friendlyname`,if((`_networkinterface`.`finalclass` = \'NetworkInterface\'),coalesce(0,0),if((`_networkinterface`.`finalclass` = \'LogicalInterface\'),coalesce(coalesce((`VirtualMachine_virtualmachine_id_virtualdevice`.`status` = \'obsolete\'),0),0),if((`_networkinterface`.`finalclass` = \'FiberChannelInterface\'),coalesce(coalesce((`DatacenterDevice_datacenterdevice_id_physicaldevice`.`status` = \'obsolete\'),0),0),coalesce(coalesce((`ConnectableCI_connectableci_id_physicaldevice`.`status` = \'obsolete\'),0),0)))) AS `obsolescence_flag`,`_networkinterface`.`obsolescence_date` AS `obsolescence_date` from (((`mysql`.`networkinterface` `_networkinterface` left join (`mysql`.`logicalinterface` `_fn_LogicalInterface_logicalinterface` join (`mysql`.`functionalci` `VirtualMachine_virtualmachine_id_functionalci` join `mysql`.`virtualdevice` `VirtualMachine_virtualmachine_id_virtualdevice` on((`VirtualMachine_virtualmachine_id_functionalci`.`id` = `VirtualMachine_virtualmachine_id_virtualdevice`.`id`))) on((`_fn_LogicalInterface_logicalinterface`.`virtualmachine_id` = `VirtualMachine_virtualmachine_id_functionalci`.`id`))) on((`_networkinterface`.`id` = `_fn_LogicalInterface_logicalinterface`.`id`))) left join (`mysql`.`fiberchannelinterface` `_fn_FiberChannelInterface_fiberchannelinterface` join (`mysql`.`functionalci` `DatacenterDevice_datacenterdevice_id_functionalci` join `mysql`.`physicaldevice` `DatacenterDevice_datacenterdevice_id_physicaldevice` on((`DatacenterDevice_datacenterdevice_id_functionalci`.`id` = `DatacenterDevice_datacenterdevice_id_physicaldevice`.`id`))) on((`_fn_FiberChannelInterface_fiberchannelinterface`.`datacenterdevice_id` = `DatacenterDevice_datacenterdevice_id_functionalci`.`id`))) on((`_networkinterface`.`id` = `_fn_FiberChannelInterface_fiberchannelinterface`.`id`))) left join (`mysql`.`physicalinterface` `_fn_PhysicalInterface_physicalinterface` join (`mysql`.`functionalci` `ConnectableCI_connectableci_id_functionalci` join `mysql`.`physicaldevice` `ConnectableCI_connectableci_id_physicaldevice` on((`ConnectableCI_connectableci_id_functionalci`.`id` = `ConnectableCI_connectableci_id_physicaldevice`.`id`))) on((`_fn_PhysicalInterface_physicalinterface`.`connectableci_id` = `ConnectableCI_connectableci_id_functionalci`.`id`))) on((`_networkinterface`.`id` = `_fn_PhysicalInterface_physicalinterface`.`id`))) where (coalesce((`VirtualMachine_virtualmachine_id_functionalci`.`finalclass` = \'VirtualMachine\'),1) and coalesce((`DatacenterDevice_datacenterdevice_id_functionalci`.`finalclass` in (\'NetworkDevice\',\'Server\',\'StorageSystem\',\'SANSwitch\',\'TapeLibrary\',\'NAS\',\'DatacenterDevice\')),1) and coalesce((`ConnectableCI_connectableci_id_functionalci`.`finalclass` in (\'DatacenterDevice\',\'NetworkDevice\',\'Server\',\'PC\',\'Printer\',\'StorageSystem\',\'SANSwitch\',\'TapeLibrary\',\'NAS\',\'ConnectableCI\')),1))
md5=bd06ddc48039e93214b45f31b456993d
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_networkinterface`.`id` AS `id`, `_networkinterface`.`name` AS `name`, `_networkinterface`.`finalclass` AS `finalclass`, IF((`_networkinterface`.`finalclass` IN (\'NetworkInterface\')), CAST(CONCAT(COALESCE(`_networkinterface`.`name`, \'\')) AS CHAR), IF((`_networkinterface`.`finalclass` IN (\'LogicalInterface\')), CAST(CONCAT(COALESCE(`_networkinterface`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`VirtualMachine_virtualmachine_id_functionalci`.`name`, \'\')) AS CHAR), IF((`_networkinterface`.`finalclass` IN (\'FiberChannelInterface\')), CAST(CONCAT(COALESCE(`_networkinterface`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`DatacenterDevice_datacenterdevice_id_functionalci`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`_networkinterface`.`name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`ConnectableCI_connectableci_id_functionalci`.`name`, \'\')) AS CHAR)))) AS `friendlyname`, IF((`_networkinterface`.`finalclass` IN (\'NetworkInterface\')), COALESCE(0, 0), IF((`_networkinterface`.`finalclass` IN (\'LogicalInterface\')), COALESCE(COALESCE((`VirtualMachine_virtualmachine_id_virtualdevice`.`status` = \'obsolete\'), 0), 0), IF((`_networkinterface`.`finalclass` IN (\'FiberChannelInterface\')), COALESCE(COALESCE((`DatacenterDevice_datacenterdevice_id_physicaldevice`.`status` = \'obsolete\'), 0), 0), COALESCE(COALESCE((`ConnectableCI_connectableci_id_physicaldevice`.`status` = \'obsolete\'), 0), 0)))) AS `obsolescence_flag`, `_networkinterface`.`obsolescence_date` AS `obsolescence_date` FROM `networkinterface` AS `_networkinterface`LEFT JOIN (`logicalinterface` AS `_fn_LogicalInterface_logicalinterface` INNER JOIN (`functionalci` AS `VirtualMachine_virtualmachine_id_functionalci` INNER JOIN `virtualdevice` AS `VirtualMachine_virtualmachine_id_virtualdevice` ON `VirtualMachine_virtualmachine_id_functionalci`.`id` = `VirtualMachine_virtualmachine_id_virtualdevice`.`id`) ON `_fn_LogicalInterface_logicalinterface`.`virtualmachine_id` = `VirtualMachine_virtualmachine_id_functionalci`.`id`) ON `_networkinterface`.`id` = `_fn_LogicalInterface_logicalinterface`.`id`LEFT JOIN (`fiberchannelinterface` AS `_fn_FiberChannelInterface_fiberchannelinterface` INNER JOIN (`functionalci` AS `DatacenterDevice_datacenterdevice_id_functionalci` INNER JOIN `physicaldevice` AS `DatacenterDevice_datacenterdevice_id_physicaldevice` ON `DatacenterDevice_datacenterdevice_id_functionalci`.`id` = `DatacenterDevice_datacenterdevice_id_physicaldevice`.`id`) ON `_fn_FiberChannelInterface_fiberchannelinterface`.`datacenterdevice_id` = `DatacenterDevice_datacenterdevice_id_functionalci`.`id`) ON `_networkinterface`.`id` = `_fn_FiberChannelInterface_fiberchannelinterface`.`id`LEFT JOIN (`physicalinterface` AS `_fn_PhysicalInterface_physicalinterface` INNER JOIN (`functionalci` AS `ConnectableCI_connectableci_id_functionalci` INNER JOIN `physicaldevice` AS `ConnectableCI_connectableci_id_physicaldevice` ON `ConnectableCI_connectableci_id_functionalci`.`id` = `ConnectableCI_connectableci_id_physicaldevice`.`id`) ON `_fn_PhysicalInterface_physicalinterface`.`connectableci_id` = `ConnectableCI_connectableci_id_functionalci`.`id`) ON `_networkinterface`.`id` = `_fn_PhysicalInterface_physicalinterface`.`id` WHERE ((COALESCE((`VirtualMachine_virtualmachine_id_functionalci`.`finalclass` IN (\'VirtualMachine\')), 1) AND COALESCE((`DatacenterDevice_datacenterdevice_id_functionalci`.`finalclass` IN (\'NetworkDevice\', \'Server\', \'StorageSystem\', \'SANSwitch\', \'TapeLibrary\', \'NAS\', \'DatacenterDevice\')), 1)) AND COALESCE((`ConnectableCI_connectableci_id_functionalci`.`finalclass` IN (\'DatacenterDevice\', \'NetworkDevice\', \'Server\', \'PC\', \'Printer\', \'StorageSystem\', \'SANSwitch\', \'TapeLibrary\', \'NAS\', \'ConnectableCI\')), 1))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_networkinterface`.`id` AS `id`,`_networkinterface`.`name` AS `name`,`_networkinterface`.`finalclass` AS `finalclass`,if((`_networkinterface`.`finalclass` = \'NetworkInterface\'),cast(concat(coalesce(`_networkinterface`.`name`,\'\')) as char charset utf8mb4),if((`_networkinterface`.`finalclass` = \'LogicalInterface\'),cast(concat(coalesce(`_networkinterface`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`VirtualMachine_virtualmachine_id_functionalci`.`name`,\'\')) as char charset utf8mb4),if((`_networkinterface`.`finalclass` = \'FiberChannelInterface\'),cast(concat(coalesce(`_networkinterface`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`DatacenterDevice_datacenterdevice_id_functionalci`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`_networkinterface`.`name`,\'\'),coalesce(\' \',\'\'),coalesce(`ConnectableCI_connectableci_id_functionalci`.`name`,\'\')) as char charset utf8mb4)))) AS `friendlyname`,if((`_networkinterface`.`finalclass` = \'NetworkInterface\'),coalesce(0,0),if((`_networkinterface`.`finalclass` = \'LogicalInterface\'),coalesce(coalesce((`VirtualMachine_virtualmachine_id_virtualdevice`.`status` = \'obsolete\'),0),0),if((`_networkinterface`.`finalclass` = \'FiberChannelInterface\'),coalesce(coalesce((`DatacenterDevice_datacenterdevice_id_physicaldevice`.`status` = \'obsolete\'),0),0),coalesce(coalesce((`ConnectableCI_connectableci_id_physicaldevice`.`status` = \'obsolete\'),0),0)))) AS `obsolescence_flag`,`_networkinterface`.`obsolescence_date` AS `obsolescence_date` from (((`mysql`.`networkinterface` `_networkinterface` left join (`mysql`.`logicalinterface` `_fn_LogicalInterface_logicalinterface` join (`mysql`.`functionalci` `VirtualMachine_virtualmachine_id_functionalci` join `mysql`.`virtualdevice` `VirtualMachine_virtualmachine_id_virtualdevice` on((`VirtualMachine_virtualmachine_id_functionalci`.`id` = `VirtualMachine_virtualmachine_id_virtualdevice`.`id`))) on((`_fn_LogicalInterface_logicalinterface`.`virtualmachine_id` = `VirtualMachine_virtualmachine_id_functionalci`.`id`))) on((`_networkinterface`.`id` = `_fn_LogicalInterface_logicalinterface`.`id`))) left join (`mysql`.`fiberchannelinterface` `_fn_FiberChannelInterface_fiberchannelinterface` join (`mysql`.`functionalci` `DatacenterDevice_datacenterdevice_id_functionalci` join `mysql`.`physicaldevice` `DatacenterDevice_datacenterdevice_id_physicaldevice` on((`DatacenterDevice_datacenterdevice_id_functionalci`.`id` = `DatacenterDevice_datacenterdevice_id_physicaldevice`.`id`))) on((`_fn_FiberChannelInterface_fiberchannelinterface`.`datacenterdevice_id` = `DatacenterDevice_datacenterdevice_id_functionalci`.`id`))) on((`_networkinterface`.`id` = `_fn_FiberChannelInterface_fiberchannelinterface`.`id`))) left join (`mysql`.`physicalinterface` `_fn_PhysicalInterface_physicalinterface` join (`mysql`.`functionalci` `ConnectableCI_connectableci_id_functionalci` join `mysql`.`physicaldevice` `ConnectableCI_connectableci_id_physicaldevice` on((`ConnectableCI_connectableci_id_functionalci`.`id` = `ConnectableCI_connectableci_id_physicaldevice`.`id`))) on((`_fn_PhysicalInterface_physicalinterface`.`connectableci_id` = `ConnectableCI_connectableci_id_functionalci`.`id`))) on((`_networkinterface`.`id` = `_fn_PhysicalInterface_physicalinterface`.`id`))) where (coalesce((`VirtualMachine_virtualmachine_id_functionalci`.`finalclass` = \'VirtualMachine\'),1) and coalesce((`DatacenterDevice_datacenterdevice_id_functionalci`.`finalclass` in (\'NetworkDevice\',\'Server\',\'StorageSystem\',\'SANSwitch\',\'TapeLibrary\',\'NAS\',\'DatacenterDevice\')),1) and coalesce((`ConnectableCI_connectableci_id_functionalci`.`finalclass` in (\'DatacenterDevice\',\'NetworkDevice\',\'Server\',\'PC\',\'Printer\',\'StorageSystem\',\'SANSwitch\',\'TapeLibrary\',\'NAS\',\'ConnectableCI\')),1))
mariadb-version=100036