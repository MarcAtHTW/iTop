TYPE=VIEW
query=select distinct `_priv_tagfielddata`.`id` AS `id`,`_priv_tagfielddata`.`code` AS `code`,`_priv_tagfielddata`.`label` AS `label`,`_priv_tagfielddata`.`description` AS `description`,`_priv_tagfielddata`.`obj_class` AS `obj_class`,`_priv_tagfielddata`.`obj_attcode` AS `obj_attcode`,`_priv_tagfielddata`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_priv_tagfielddata`.`label`,\'\')) as char charset utf8mb4) AS `friendlyname` from `mysql`.`priv_tagfielddata` `_priv_tagfielddata` where coalesce((`_priv_tagfielddata`.`finalclass` = \'TagSetFieldDataFor_FAQ__domains\'),1)
md5=2622e33f12b4e8e4a209680c77e368df
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_priv_tagfielddata`.`id` AS `id`, `_priv_tagfielddata`.`code` AS `code`, `_priv_tagfielddata`.`label` AS `label`, `_priv_tagfielddata`.`description` AS `description`, `_priv_tagfielddata`.`obj_class` AS `obj_class`, `_priv_tagfielddata`.`obj_attcode` AS `obj_attcode`, `_priv_tagfielddata`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_priv_tagfielddata`.`label`, \'\')) AS CHAR) AS `friendlyname` FROM `priv_tagfielddata` AS `_priv_tagfielddata` WHERE COALESCE((`_priv_tagfielddata`.`finalclass` IN (\'TagSetFieldDataFor_FAQ__domains\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_priv_tagfielddata`.`id` AS `id`,`_priv_tagfielddata`.`code` AS `code`,`_priv_tagfielddata`.`label` AS `label`,`_priv_tagfielddata`.`description` AS `description`,`_priv_tagfielddata`.`obj_class` AS `obj_class`,`_priv_tagfielddata`.`obj_attcode` AS `obj_attcode`,`_priv_tagfielddata`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_priv_tagfielddata`.`label`,\'\')) as char charset utf8mb4) AS `friendlyname` from `mysql`.`priv_tagfielddata` `_priv_tagfielddata` where coalesce((`_priv_tagfielddata`.`finalclass` = \'TagSetFieldDataFor_FAQ__domains\'),1)
mariadb-version=100036
