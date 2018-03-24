CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf_teams and drivers` AS
    SELECT 
        `rd`.`id` AS `id`,
        `td`.`ChampionShip_year` AS `ChampionShip_year`,
        `c`.`Entrant_country` AS `Entrant_country`,
        `c`.`Entrant` AS `Entrant`,
        `c`.`Constructor` AS `Constructor`,
        `c`.`Chassis` AS `Chassis`,
        `c`.`Power unit` AS `Power unit`,
        `c`.`Tyres` AS `Tyres`,
        `rd`.`№` AS `№`,
        `rd`.`Driver Country` AS `Driver Country`,
        `rd`.`Driver name` AS `Driver name`,
        `rd`.`Driver surname` AS `Driver surname`,
        `rd`.`Round` AS `Round`
    FROM
        ((`teams and drivers 2017` `td`
        JOIN `cars` `c` ON ((`td`.`Entrant id` = `c`.`Entrant id`)))
        JOIN `race drivers` `rd` ON ((`td`.`Drivers id` = `rd`.`Drivers id`)))