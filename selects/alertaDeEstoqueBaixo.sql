SELECT
    p.nome_produto,
    c.nome_categoria,
    p.quantidade_estoque
FROM
    PRODUTOS AS p
    INNER JOIN CATEGORIAS AS c ON p.categoria_id = c.categoria_id
WHERE
    c.nome_categoria = 'Tênis (Sneakers)'
    AND p.quantidade_estoque <= 10;