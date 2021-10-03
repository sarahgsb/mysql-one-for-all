DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN SELECT a.nome AS artista,
al.nome AS album FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns al ON al.artista_id = a.artista_id
WHERE a.nome = nome
ORDER BY album;
END $$
DELIMITER ;
