CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `2nf_teams and drivers 2017` AS
    SELECT 
        `teams and drivers 2017`.`ChampionShip_year` AS `ChampionShip_year`,
        `teams and drivers 2017`.`Entrant` AS `Entrant`,
        `teams and drivers 2017`.`Entrant_country` AS `Entrant_country`,
        `teams and drivers 2017`.`Constructor` AS `Constructor`,
        `teams and drivers 2017`.`Chassis` AS `Chassis`,
        `teams and drivers 2017`.`Power unit` AS `Power unit`,
        `teams and drivers 2017`.`Tyres` AS `Tyres`,
        `teams and drivers 2017`.`№` AS `№`,
        `teams and drivers 2017`.`id` AS `id`
    FROM
        `teams and drivers 2017`