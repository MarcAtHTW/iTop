TYPE=VIEW
query=select distinct `_lnkdocumenttolicence`.`id` AS `id`,`_lnkdocumenttolicence`.`licence_id` AS `licence_id`,`Licence_licence_id_licence`.`name` AS `licence_name`,`_lnkdocumenttolicence`.`document_id` AS `document_id`,`Document_document_id_document`.`name` AS `document_name`,cast(concat(coalesce(`_lnkdocumenttolicence`.`licence_id`,\'\'),coalesce(\' \',\'\'),coalesce(`_lnkdocumenttolicence`.`document_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Licence_licence_id_licence`.`name`,\'\')) as char charset utf8mb4) AS `licence_id_friendlyname`,`Licence_licence_id_licence`.`finalclass` AS `licence_id_finalclass_recall`,coalesce(((`Licence_licence_id_licence`.`perpetual` = \'no\') and (isnull(`Licence_licence_id_licence`.`end_date`) = 0) and (`Licence_licence_id_licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `licence_id_obsolescence_flag`,if((`Document_document_id_document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id_document`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id_document`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag` from ((`mysql`.`lnkdocumenttolicence` `_lnkdocumenttolicence` join `mysql`.`licence` `Licence_licence_id_licence` on((`_lnkdocumenttolicence`.`licence_id` = `Licence_licence_id_licence`.`id`))) join `mysql`.`document` `Document_document_id_document` on((`_lnkdocumenttolicence`.`document_id` = `Document_document_id_document`.`id`))) where 1
md5=0e14ff98ad774e8f01d41d72f09d7641
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_lnkdocumenttolicence`.`id` AS `id`, `_lnkdocumenttolicence`.`licence_id` AS `licence_id`, `Licence_licence_id_licence`.`name` AS `licence_name`, `_lnkdocumenttolicence`.`document_id` AS `document_id`, `Document_document_id_document`.`name` AS `document_name`, CAST(CONCAT(COALESCE(`_lnkdocumenttolicence`.`licence_id`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_lnkdocumenttolicence`.`document_id`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Licence_licence_id_licence`.`name`, \'\')) AS CHAR) AS `licence_id_friendlyname`, `Licence_licence_id_licence`.`finalclass` AS `licence_id_finalclass_recall`, COALESCE((((`Licence_licence_id_licence`.`perpetual` = \'no\') AND (ISNULL(`Licence_licence_id_licence`.`end_date`) = 0)) AND (`Licence_licence_id_licence`.`end_date` < DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 15 MONTH), \'%Y-%m-%d 00:00:00\'))), 0) AS `licence_id_obsolescence_flag`, IF((`Document_document_id_document`.`finalclass` IN (\'Document\')), CAST(CONCAT(COALESCE(\'Document\', \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Document_document_id_document`.`name`, \'\')) AS CHAR)) AS `document_id_friendlyname`, `Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`, COALESCE((`Document_document_id_document`.`status` = \'obsolete\'), 0) AS `document_id_obsolescence_flag` FROM `lnkdocumenttolicence` AS `_lnkdocumenttolicence`INNER JOIN `licence` AS `Licence_licence_id_licence` ON `_lnkdocumenttolicence`.`licence_id` = `Licence_licence_id_licence`.`id`INNER JOIN `document` AS `Document_document_id_document` ON `_lnkdocumenttolicence`.`document_id` = `Document_document_id_document`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_lnkdocumenttolicence`.`id` AS `id`,`_lnkdocumenttolicence`.`licence_id` AS `licence_id`,`Licence_licence_id_licence`.`name` AS `licence_name`,`_lnkdocumenttolicence`.`document_id` AS `document_id`,`Document_document_id_document`.`name` AS `document_name`,cast(concat(coalesce(`_lnkdocumenttolicence`.`licence_id`,\'\'),coalesce(\' \',\'\'),coalesce(`_lnkdocumenttolicence`.`document_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Licence_licence_id_licence`.`name`,\'\')) as char charset utf8mb4) AS `licence_id_friendlyname`,`Licence_licence_id_licence`.`finalclass` AS `licence_id_finalclass_recall`,coalesce(((`Licence_licence_id_licence`.`perpetual` = \'no\') and (isnull(`Licence_licence_id_licence`.`end_date`) = 0) and (`Licence_licence_id_licence`.`end_date` < date_format((now() - interval 15 month),\'%Y-%m-%d 00:00:00\'))),0) AS `licence_id_obsolescence_flag`,if((`Document_document_id_document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id_document`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id_document`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag` from ((`mysql`.`lnkdocumenttolicence` `_lnkdocumenttolicence` join `mysql`.`licence` `Licence_licence_id_licence` on((`_lnkdocumenttolicence`.`licence_id` = `Licence_licence_id_licence`.`id`))) join `mysql`.`document` `Document_document_id_document` on((`_lnkdocumenttolicence`.`document_id` = `Document_document_id_document`.`id`))) where 1
mariadb-version=100036
