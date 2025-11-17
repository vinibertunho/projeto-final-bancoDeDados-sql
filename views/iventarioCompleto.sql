CREATE VIEW
    Vw_Inventario_Completo AS
SELECT
    p.nome_produto,
    c.nome_categoria,
    p.tamanho,
    p.cor,
    p.preco,
    p.quantidade_estoque
FROM
    PRODUTOS AS p
    INNER JOIN CATEGORIAS AS c ON p.categoria_id = c.categoria_id;