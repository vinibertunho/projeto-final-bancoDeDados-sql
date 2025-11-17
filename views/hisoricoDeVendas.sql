CREATE VIEW
    Vw_Historico_De_Vendas AS
SELECT
    v.data_venda,
    c.nome_cliente,
    p.nome_produto,
    p.tamanho,
    p.cor,
    iv.quantidade,
    p.preco AS preco_unitario_na_venda
FROM
    ITENS_VENDA AS iv
    INNER JOIN VENDAS AS v ON iv.venda_id = v.venda_id
    INNER JOIN CLIENTES AS c ON v.cliente_id = c.cliente_id
    INNER JOIN PRODUTOS AS p ON iv.produto_id = p.produto_id
ORDER BY
    v.data_venda DESC;