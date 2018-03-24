CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `3nf_teams and drivers 2017` AS
    SELECT 
        `2nf_teams and drivers 2017`.`ChampionShip_year` AS `ChampionShip_year`,
        `2nf_teams and drivers 2017`.`Entrant` AS `Entrant`,
        `2nf_teams and drivers 2017`.`№` AS `№`,
        `2nf_teams and drivers 2017`.`id` AS `id`
    FROM
        `2nf_teams and drivers 2017`