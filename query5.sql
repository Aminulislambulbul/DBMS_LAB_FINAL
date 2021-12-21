SELECT continent,AVG(LifeExpectancy)AS avg_life
FROM country
GROUP BY continent;