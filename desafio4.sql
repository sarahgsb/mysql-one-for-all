CREATE VIEW top_3_artistas AS
    SELECT 
        a.nome AS artista, COUNT(s.artista_id) AS seguidores
    FROM
        SpotifyClone.artistas a
            INNER JOIN
        SpotifyClone.seguindo_artistas s ON a.artista_id = s.artista_id
    GROUP BY s.artista_id
    ORDER BY seguidores DESC , artista
    LIMIT 3;
