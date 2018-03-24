CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `2nf_race_drivers` AS
    SELECT 
        `teams and drivers 2017`.`№` AS `№`,
        `teams and drivers 2017`.`Driver Country` AS `Driver country`,
        `teams and drivers 2017`.`Driver name` AS `Driver name`,
        `teams and drivers 2017`.`Driver surname` AS `Driver surname`,
        `teams and drivers 2017`.`Rounds` AS `Rounds`
    FROM
        `teams and drivers 2017`