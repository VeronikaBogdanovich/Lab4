CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `3nf_race drivers` AS
    SELECT 
        `2nf_race_drivers`.`№` AS `№`,
        `2nf_race_drivers`.`Driver country` AS `Driver country`,
        `2nf_race_drivers`.`Driver name` AS `Driver name`,
        `2nf_race_drivers`.`Driver surname` AS `Driver surname`,
        `2nf_race_drivers`.`Rounds` AS `Rounds`
    FROM
        `2nf_race_drivers`