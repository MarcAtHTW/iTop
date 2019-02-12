TYPE=VIEW
query=select distinct `_typology`.`id` AS `id`,`_typology`.`name` AS `name`,`_typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `mysql`.`typology` `_typology` where coalesce((`_typology`.`finalclass` = \'ContactType\'),1)
md5=9bf85ff8768a13be236b341978ee45ca
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_typology`.`id` AS `id`, `_typology`.`name` AS `name`, `_typology`.`finalclass` AS `finalclass`, CAST(CONCAT(COALESCE(`_typology`.`name`, \'\')) AS CHAR) AS `friendlyname` FROM `typology` AS `_typology` WHERE COALESCE((`_typology`.`finalclass` IN (\'ContactType\')), 1)
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_typology`.`id` AS `id`,`_typology`.`name` AS `name`,`_typology`.`finalclass` AS `finalclass`,cast(concat(coalesce(`_typology`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `mysql`.`typology` `_typology` where coalesce((`_typology`.`finalclass` = \'ContactType\'),1)
mariadb-version=100036
