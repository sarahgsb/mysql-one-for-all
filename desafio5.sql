CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        c.nome AS cancao, COUNT(h.cancao_id) AS reproducoes
    FROM
        SpotifyClone.cancoes c
            INNER JOIN
        SpotifyClone.historico_reproducoes h ON c.cancao_id = h.cancao_id
    GROUP BY c.cancao_id
    ORDER BY reproducoes DESC, cancao
    LIMIT 2;
