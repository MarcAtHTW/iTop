TYPE=VIEW
query=select distinct `_servicefamily`.`id` AS `id`,`_servicefamily`.`name` AS `name`,`_servicefamily`.`icon_mimetype` AS `icon`,`_servicefamily`.`icon_data` AS `icon_data`,`_servicefamily`.`icon_filename` AS `icon_filename`,cast(concat(coalesce(`_servicefamily`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `mysql`.`servicefamily` `_servicefamily` where 1
md5=9233630b7c4a0d28a62ba14ba4f7fb22
updatable=0
algorithm=0
definer_user=admin
definer_host=%
suid=2
with_check_option=0
timestamp=2019-02-01 19:02:22
create-version=2
source=SELECT DISTINCT `_servicefamily`.`id` AS `id`, `_servicefamily`.`name` AS `name`, `_servicefamily`.`icon_mimetype` AS `icon`, `_servicefamily`.`icon_data` AS `icon_data`, `_servicefamily`.`icon_filename` AS `icon_filename`, CAST(CONCAT(COALESCE(`_servicefamily`.`name`, \'\')) AS CHAR) AS `friendlyname` FROM `servicefamily` AS `_servicefamily` WHERE 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select distinct `_servicefamily`.`id` AS `id`,`_servicefamily`.`name` AS `name`,`_servicefamily`.`icon_mimetype` AS `icon`,`_servicefamily`.`icon_data` AS `icon_data`,`_servicefamily`.`icon_filename` AS `icon_filename`,cast(concat(coalesce(`_servicefamily`.`name`,\'\')) as char charset utf8mb4) AS `friendlyname` from `mysql`.`servicefamily` `_servicefamily` where 1
mariadb-version=100036