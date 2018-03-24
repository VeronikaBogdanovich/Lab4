SELECT 
    *
FROM
    NF1.`Teams and drivers 2017` 
left join NF3.`1nf_teams and drivers` on NF1.`Teams and drivers 2017`.id= NF3.`1nf_teams and drivers`.id;