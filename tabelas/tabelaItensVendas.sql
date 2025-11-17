CREATE TABLE
    ITENS_VENDA (
        item_venda_id INT PRIMARY KEY AUTO_INCREMENT,
        venda_id INT NOT NULL,
        produto_id INT NOT NULL,
        quantidade INT NOT NULL CHECK (quantidade > 0),
        FOREIGN KEY (venda_id) REFERENCES VENDAS (venda_id),
        FOREIGN KEY (produto_id) REFERENCES PRODUTOS (produto_id)
    );