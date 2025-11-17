SELECT
    c.nome_cliente,
    v.data_venda
FROM
    CLIENTES AS c
    LEFT JOIN VENDAS AS v ON c.cliente_id = v.cliente_id
ORDER BY
    c.nome_cliente;