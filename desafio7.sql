CREATE VIEW perfil_artistas AS
    SELECT 
        a.nome AS artista,
        al.nome AS album,
        COUNT(s.artista_id) AS seguidores
    FROM
        SpotifyClone.artistas a
            INNER JOIN
        SpotifyClone.albuns al ON al.artista_id = a.artista_id
            INNER JOIN
        SpotifyClone.seguindo_artistas s ON s.artista_id = a.artista_id
    GROUP BY a.nome , al.nome
    ORDER BY seguidores DESC, artista , album;
