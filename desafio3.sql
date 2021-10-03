CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.nome AS usuario, c.nome AS nome
    FROM
        SpotifyClone.usuarios u
            INNER JOIN
        SpotifyClone.historico_reproducoes h ON u.usuario_id = h.usuario_id
            INNER JOIN
        SpotifyClone.cancoes c ON h.cancao_id = c.cancao_id
    ORDER BY usuario, nome;
