SELECT *
FROM country
WHERE IndepYear =(SELECT IndepYear from country WHERE `name`='Bangladesh');
