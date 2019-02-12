TYPE=VIEW
query=select distinct `_lnkcontacttocontract`.`id` AS `id`,`_lnkcontacttocontract`.`contract_id` AS `contract_id`,`Contract_contract_id_contract`.`name` AS `contract_name`,`_lnkcontacttocontract`.`contact_id` AS `contact_id`,`Contact_contact_id_contact`.`name` AS `contact_name`,cast(concat(coalesce(`_lnkcontacttocontract`.`contract_id`,\'\'),coalesce(\' \',\'\'),coalesce(`_lnkcontacttocontract`.`contact_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Contract_contract_id_contract`.`name`,\'\')) as char charset utf8mb4) AS `contract_id_friendlyname`,`Contract_contract_id_contract`.`finalclass` AS `contract_id_finalclass_recall`,if((`Contact_contact_id_contact`.`finalclass` in (\'Team\',\'Contact\')),cast(concat(coalesce(`Contact_contact_id_contact`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`Contact_contact_id_fn_Person_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Contact_contact_id_contact`.`name`,\'\')) as char charset utf8mb4)) AS `contact_id_friendlyname`,`Contact_contact_id_contact`.`finalclass` AS `contact_id_finalclass_recall`,coalesce((`Contact_contact_id_contact`.`status` = \'inactive\'),0) AS `contact_id_obsolescence_flag` from ((`mysql`.`lnkcontacttocontract` `_lnkcontacttocontract` join `mysql`.`contract` `Contract_contract_id_contract` on((`_lnkcontacttocontract`.`contract_id` = `Contract_contract_id_contract`.`id`))) join (`mysql`.`contact` `Contact_contact_id_contact` left join `mysql`.`person` `Contact_contact_id_fn_Person_person` on((`Contact_contact_id_contact`.`id` = `Contact_contact_id_fn_Person_person`.`id`))) on((`_lnkcontacttocontract`.`contact_id` = `Contact_contact_id_contact`.`id`))) where 1
md5=3f6c1b1e7875764207b1862bf48b6afc
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_lnkcontacttocontract`.`id` AS `id`, `_lnkcontacttocontract`.`contract_id` AS `contract_id`, `Contract_contract_id_contract`.`name` AS `contract_name`, `_lnkcontacttocontract`.`contact_id` AS `contact_id`, `Contact_contact_id_contact`.`name` AS `contact_name`, CAST(CONCAT(COALESCE(`_lnkcontacttocontract`.`contract_id`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_lnkcontacttocontract`.`contact_id`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Contract_contract_id_contract`.`name`, \'\')) AS CHAR) AS `contract_id_friendlyname`, `Contract_contract_id_contract`.`finalclass` AS `contract_id_finalclass_recall`, IF((`Contact_contact_id_contact`.`finalclass` IN (\'Team\', \'Contact\')), CAST(CONCAT(COALESCE(`Contact_contact_id_contact`.`name`, \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Contact_contact_id_fn_Person_person`.`first_name`, \'\'), COALESCE(\' \', \'\'), COALESCE(`Contact_contact_id_contact`.`name`, \'\')) AS CHAR)) AS `contact_id_friendlyname`, `Contact_contact_id_contact`.`finalclass` AS `contact_id_finalclass_recall`, COALESCE((`Contact_contact_id_contact`.`status` = \'inactive\'), 0) AS `contact_id_obsolescence_flag` FROM `lnkcontacttocontract` AS `_lnkcontacttocontract`INNER JOIN `contract` AS `Contract_contract_id_contract` ON `_lnkcontacttocontract`.`contract_id` = `Contract_contract_id_contract`.`id`INNER JOIN (`contact` AS `Contact_contact_id_contact` LEFT JOIN `person` AS `Contact_contact_id_fn_Person_person` ON `Contact_contact_id_contact`.`id` = `Contact_contact_id_fn_Person_person`.`id`) ON `_lnkcontacttocontract`.`contact_id` = `Contact_contact_id_contact`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_lnkcontacttocontract`.`id` AS `id`,`_lnkcontacttocontract`.`contract_id` AS `contract_id`,`Contract_contract_id_contract`.`name` AS `contract_name`,`_lnkcontacttocontract`.`contact_id` AS `contact_id`,`Contact_contact_id_contact`.`name` AS `contact_name`,cast(concat(coalesce(`_lnkcontacttocontract`.`contract_id`,\'\'),coalesce(\' \',\'\'),coalesce(`_lnkcontacttocontract`.`contact_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Contract_contract_id_contract`.`name`,\'\')) as char charset utf8mb4) AS `contract_id_friendlyname`,`Contract_contract_id_contract`.`finalclass` AS `contract_id_finalclass_recall`,if((`Contact_contact_id_contact`.`finalclass` in (\'Team\',\'Contact\')),cast(concat(coalesce(`Contact_contact_id_contact`.`name`,\'\')) as char charset utf8mb4),cast(concat(coalesce(`Contact_contact_id_fn_Person_person`.`first_name`,\'\'),coalesce(\' \',\'\'),coalesce(`Contact_contact_id_contact`.`name`,\'\')) as char charset utf8mb4)) AS `contact_id_friendlyname`,`Contact_contact_id_contact`.`finalclass` AS `contact_id_finalclass_recall`,coalesce((`Contact_contact_id_contact`.`status` = \'inactive\'),0) AS `contact_id_obsolescence_flag` from ((`mysql`.`lnkcontacttocontract` `_lnkcontacttocontract` join `mysql`.`contract` `Contract_contract_id_contract` on((`_lnkcontacttocontract`.`contract_id` = `Contract_contract_id_contract`.`id`))) join (`mysql`.`contact` `Contact_contact_id_contact` left join `mysql`.`person` `Contact_contact_id_fn_Person_person` on((`Contact_contact_id_contact`.`id` = `Contact_contact_id_fn_Person_person`.`id`))) on((`_lnkcontacttocontract`.`contact_id` = `Contact_contact_id_contact`.`id`))) where 1
mariadb-version=100036