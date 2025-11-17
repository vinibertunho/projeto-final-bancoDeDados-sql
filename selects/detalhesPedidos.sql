SELECT
    v.venda_id,
    c.nome_cliente,
    v.data_venda,
    v.endereco_envio,
    p.nome_produto,
    p.tamanho,
    p.cor,
    iv.quantidade
FROM
    ITENS_VENDA AS iv
    INNER JOIN VENDAS AS v ON iv.venda_id = v.venda_id
    INNER JOIN CLIENTES AS c ON v.cliente_id = c.cliente_id
    INNER JOIN PRODUTOS AS p ON iv.produto_id = p.produto_id
WHERE
    v.venda_id = 3;