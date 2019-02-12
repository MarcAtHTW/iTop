TYPE=VIEW
query=select distinct `_lnkdocumenttopatch`.`id` AS `id`,`_lnkdocumenttopatch`.`patch_id` AS `patch_id`,`Patch_patch_id_patch`.`name` AS `patch_name`,`_lnkdocumenttopatch`.`document_id` AS `document_id`,`Document_document_id_document`.`name` AS `document_name`,cast(concat(coalesce(`_lnkdocumenttopatch`.`patch_id`,\'\'),coalesce(\' \',\'\'),coalesce(`_lnkdocumenttopatch`.`document_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Patch_patch_id_patch`.`name`,\'\')) as char charset utf8mb4) AS `patch_id_friendlyname`,`Patch_patch_id_patch`.`finalclass` AS `patch_id_finalclass_recall`,if((`Document_document_id_document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id_document`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id_document`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag` from ((`mysql`.`lnkdocumenttopatch` `_lnkdocumenttopatch` join `mysql`.`patch` `Patch_patch_id_patch` on((`_lnkdocumenttopatch`.`patch_id` = `Patch_patch_id_patch`.`id`))) join `mysql`.`document` `Document_document_id_document` on((`_lnkdocumenttopatch`.`document_id` = `Document_document_id_document`.`id`))) where 1
md5=4491734986b74e8ee6e559e6ba4f2f20
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_lnkdocumenttopatch`.`id` AS `id`, `_lnkdocumenttopatch`.`patch_id` AS `patch_id`, `Patch_patch_id_patch`.`name` AS `patch_name`, `_lnkdocumenttopatch`.`document_id` AS `document_id`, `Document_document_id_document`.`name` AS `document_name`, CAST(CONCAT(COALESCE(`_lnkdocumenttopatch`.`patch_id`, \'\'), COALESCE(\' \', \'\'), COALESCE(`_lnkdocumenttopatch`.`document_id`, \'\')) AS CHAR) AS `friendlyname`, CAST(CONCAT(COALESCE(`Patch_patch_id_patch`.`name`, \'\')) AS CHAR) AS `patch_id_friendlyname`, `Patch_patch_id_patch`.`finalclass` AS `patch_id_finalclass_recall`, IF((`Document_document_id_document`.`finalclass` IN (\'Document\')), CAST(CONCAT(COALESCE(\'Document\', \'\')) AS CHAR), CAST(CONCAT(COALESCE(`Document_document_id_document`.`name`, \'\')) AS CHAR)) AS `document_id_friendlyname`, `Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`, COALESCE((`Document_document_id_document`.`status` = \'obsolete\'), 0) AS `document_id_obsolescence_flag` FROM `lnkdocumenttopatch` AS `_lnkdocumenttopatch`INNER JOIN `patch` AS `Patch_patch_id_patch` ON `_lnkdocumenttopatch`.`patch_id` = `Patch_patch_id_patch`.`id`INNER JOIN `document` AS `Document_document_id_document` ON `_lnkdocumenttopatch`.`document_id` = `Document_document_id_document`.`id` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_lnkdocumenttopatch`.`id` AS `id`,`_lnkdocumenttopatch`.`patch_id` AS `patch_id`,`Patch_patch_id_patch`.`name` AS `patch_name`,`_lnkdocumenttopatch`.`document_id` AS `document_id`,`Document_document_id_document`.`name` AS `document_name`,cast(concat(coalesce(`_lnkdocumenttopatch`.`patch_id`,\'\'),coalesce(\' \',\'\'),coalesce(`_lnkdocumenttopatch`.`document_id`,\'\')) as char charset utf8mb4) AS `friendlyname`,cast(concat(coalesce(`Patch_patch_id_patch`.`name`,\'\')) as char charset utf8mb4) AS `patch_id_friendlyname`,`Patch_patch_id_patch`.`finalclass` AS `patch_id_finalclass_recall`,if((`Document_document_id_document`.`finalclass` = \'Document\'),cast(concat(coalesce(\'Document\',\'\')) as char charset utf8mb4),cast(concat(coalesce(`Document_document_id_document`.`name`,\'\')) as char charset utf8mb4)) AS `document_id_friendlyname`,`Document_document_id_document`.`finalclass` AS `document_id_finalclass_recall`,coalesce((`Document_document_id_document`.`status` = \'obsolete\'),0) AS `document_id_obsolescence_flag` from ((`mysql`.`lnkdocumenttopatch` `_lnkdocumenttopatch` join `mysql`.`patch` `Patch_patch_id_patch` on((`_lnkdocumenttopatch`.`patch_id` = `Patch_patch_id_patch`.`id`))) join `mysql`.`document` `Document_document_id_document` on((`_lnkdocumenttopatch`.`document_id` = `Document_document_id_document`.`id`))) where 1
mariadb-version=100036
