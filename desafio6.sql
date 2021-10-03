CREATE VIEW faturamento_atual AS
    SELECT 
        FORMAT(MIN(p.valor_plano), 2) AS faturamento_minimo,
        MAX(p.valor_plano) AS faturamento_maximo,
        FORMAT(SUM(p.valor_plano) / COUNT(u.usuario_id),
            2) AS faturamento_medio,
        FORMAT(SUM(p.valor_plano), 2) AS faturamento_total
    FROM
        SpotifyClone.planos AS p
            INNER JOIN
        SpotifyClone.usuarios AS u ON u.plano_id = p.plano_id;
