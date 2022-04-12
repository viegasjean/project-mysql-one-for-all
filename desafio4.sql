SELECT
  usu.usuario,
  IF(
    YEAR(MAX(data_reproducao)) = 2021,
    "Usuário ativo",
    "Usuário inativo"
  ) AS condicao_usuario
FROM SpotifyClone.reproducoes AS rep
LEFT JOIN SpotifyClone.usuarios AS usu
  ON usu.usuario_id = rep.usuario_id
GROUP BY usu.usuario;