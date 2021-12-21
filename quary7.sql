SELECT city.`Name`, city.Population, `LANGUAGE`, Isofficial
FROM city, country, countrylanguage
WHERE city.CountryCode=country.code AND Continent != 'Europe' 
AND city.`name` LIKE '%land%' AND	`Language`='English' AND IsOfficial='F';