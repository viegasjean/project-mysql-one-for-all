SELECT
	FORMAT(MIN(valor_plano), 2) AS faturamento_minimo,
  FORMAT(MAX(valor_plano), 2) AS faturamento_maximo,
  FORMAT(AVG(valor_plano), 2) AS faturamento_medio,
	FORMAT(SUM(valor_plano), 2) AS faturamento_total
FROM
	SpotifyClone.usuarios AS usu
LEFT JOIN
	SpotifyClone.planos AS pla
    ON pla.plano_id = usu.plano_id;