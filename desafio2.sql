CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(*) cancoes,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.artistas) AS artistas,
        (SELECT 
                COUNT(*)
            FROM
                SpotifyClone.albuns) AS albuns
    FROM
        SpotifyClone.cancoes;
