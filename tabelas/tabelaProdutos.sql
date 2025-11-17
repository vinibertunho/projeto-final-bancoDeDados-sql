CREATE TABLE
    PRODUTOS (
        produto_id INT PRIMARY KEY AUTO_INCREMENT,
        nome_produto VARCHAR(150) NOT NULL,
        descricao TEXT,
        preco DECIMAL(10, 2) NOT NULL CHECK (preco >= 0),
        quantidade_estoque INT NOT NULL CHECK (quantidade_estoque >= 0),
        cor VARCHAR(50),
        tamanho VARCHAR(10),
        categoria_id INT NOT NULL,
        FOREIGN KEY (categoria_id) REFERENCES CATEGORIAS (categoria_id)
    );