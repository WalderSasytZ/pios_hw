SELECT p.maker, AVG(pc.hd) AS avg_hd_size
FROM Product p
JOIN PC pc ON p.model = pc.model
WHERE p.maker IN (
    SELECT DISTINCT p2.maker
    FROM Product p2
    JOIN Printer pr ON p2.model = pr.model
)
GROUP BY p.maker;
