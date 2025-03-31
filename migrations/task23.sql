SELECT DISTINCT p.maker
FROM Product p
JOIN PC pc ON p.model = pc.model
WHERE pc.speed >= 750
INTERSECT
SELECT DISTINCT p.maker
FROM Product p
JOIN Laptop l ON p.model = l.model
WHERE l.speed >= 750;
