CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `3nf_cars` AS
    SELECT 
        `2nf_teams and drivers 2017`.`Entrant` AS `Entrant`,
        `2nf_teams and drivers 2017`.`Entrant_country` AS `Entrant_country`,
        `2nf_teams and drivers 2017`.`Constructor` AS `Constructor`,
        `2nf_teams and drivers 2017`.`Chassis` AS `Chassis`,
        `2nf_teams and drivers 2017`.`Power unit` AS `Power unit`,
        `2nf_teams and drivers 2017`.`Tyres` AS `Tyres`
    FROM
        `2nf_teams and drivers 2017`