CREATE TABLE
    VENDAS (
        venda_id INT PRIMARY KEY AUTO_INCREMENT,
        cliente_id INT NOT NULL,
        data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        valor_total DECIMAL(10, 2) NOT NULL CHECK (valor_total >= 0),
        endereco_envio VARCHAR(255) NOT NULL,
        FOREIGN KEY (cliente_id) REFERENCES CLIENTES (cliente_id)
    );