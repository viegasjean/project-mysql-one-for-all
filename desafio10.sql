SELECT
    cancao AS nome,
    COUNT(cancao) AS reproducoes
FROM
	SpotifyClone.reproducoes rep
JOIN
	SpotifyClone.cancoes can
    ON can.cancao_id = rep.cancao_id
JOIN
	SpotifyClone.usuarios usu
    ON usu.usuario_id = rep.usuario_id
WHERE usu.plano_id IN (1, 4)
GROUP BY cancao;