-- 1. Inserindo CATEGORIAS
INSERT INTO
    CATEGORIAS (nome_categoria)
VALUES
    ('Tênis (Sneakers)'),
    ('Camisetas e Tops'),
    ('Agasalhos e Moletons'),
    ('Calças e Bermudas'),
    ('Acessórios (Bonés e Meias)');

-- 2. Inserindo CLIENTES (Com nomes e emails atualizados)
INSERT INTO
    CLIENTES (nome_cliente, email)
VALUES
    ('Enzo Gabriel Silva', 'enzo.silva@email.com'),
    ('Kevin Lima Moreira', 'kevin.moreira@email.com'),
    ('Maria Julia Souza', 'maj.souza@email.com'),
    ('Leonardo Santos', 'leo.santos@email.com'),
    ('Rafaela Alves', 'rafa.alves@email.com');

-- 3. Inserindo PRODUTOS (Com descrições detalhadas)
INSERT INTO
    PRODUTOS (
        nome_produto,
        descricao,
        preco,
        quantidade_estoque,
        cor,
        tamanho,
        categoria_id
    )
VALUES
    (
        'Nike Air Force 1 ''07',
        'O tênis clássico branco que define o ' drip ' urbano. Indispensável.',
        750.00,
        30,
        'Branco',
        '41',
        1
    ),
    (
        'Adidas Yeezy Boost 350 V2',
        'Modelo "Zebra". Um dos sneakers mais cobiçados, high-end drip.',
        1200.00,
        10,
        'Branco/Preto',
        '40',
        1
    ),
    (
        'Puma Suede Classic XXI',
        'O ícone da Puma em camurça preta. Estilo old school que nunca morre.',
        450.00,
        25,
        'Preto',
        '42',
        1
    ),
    (
        'Camiseta Nike Sportswear Club',
        'Algodão macio e logo "Swoosh" bordado no peito. O básico de respeito.',
        180.00,
        50,
        'Preto',
        'G',
        2
    ),
    (
        'Camiseta Adidas Originals Trefoil',
        'Logo Trefoil grande no peito. Um clássico da cultura de rua.',
        170.00,
        45,
        'Branca',
        'M',
        2
    ),
    (
        'Moletom Nike Tech Fleece',
        'Tecido premium leve e quente. Zíper completo e fit moderno.',
        600.00,
        20,
        'Cinza Mescla',
        'G',
        3
    ),
    (
        'Calça Adidas Tiro 23',
        'Clássica calça de treino, fit afunilado e zíper no tornozelo. Perfeita com sneakers.',
        300.00,
        30,
        'Preto/Branco',
        'M',
        4
    ),
    (
        'Calça Moletom Puma Essentials',
        'Conforto total para o dia a dia. Logo Puma bordado na perna.',
        250.00,
        25,
        'Cinza',
        'P',
        4
    ),
    (
        'Boné Nike Futura',
        'Clássico boné aba curva, logo "Swoosh" bordado. Ajuste strapback.',
        150.00,
        40,
        'Preto',
        'Único',
        5
    ),
    (
        'Camiseta Mad Drip "No Cap"',
        'Estampa gráfica ' No Cap ' da marca Mad Drip. Edição limitada.',
        220.00,
        15,
        'Azul Royal',
        'GG',
        2
    );

-- 4. Inserindo VENDAS (IDs de clientes permanecem os mesmos)
INSERT INTO
    VENDAS (cliente_id, valor_total, endereco_envio)
VALUES
    (1, 330.00, 'Rua do Hype, 100, São Paulo - SP'),
    (
        2,
        1370.00,
        'Avenida dos Tênis, 202, Rio de Janeiro - RJ'
    ),
    (
        3,
        900.00,
        'Rua do Tech Fleece, 30, Curitiba - PR'
    ),
    (
        4,
        1200.00,
        'Travessa do Suede, 45, Belo Horizonte - MG'
    ),
    (5, 470.00, 'Rua da Mad, 55, Porto Alegre - RS');

-- 5. Inserindo ITENS_VENDA (Não precisa de alteração)
-- Venda 1 (Cliente 1, Total R$ 330.00)
INSERT INTO
    ITENS_VENDA (venda_id, produto_id, quantidade)
VALUES
    (1, 4, 1), -- Camiseta Nike Sportswear Club (180.00)
    (1, 9, 1);

-- Boné Nike Futura (150.00)
-- Venda 2 (Cliente 2, Total R$ 1370.00)
INSERT INTO
    ITENS_VENDA (venda_id, produto_id, quantidade)
VALUES
    (2, 2, 1), -- Adidas Yeezy Boost 350 V2 (1200.00)
    (2, 5, 1);

-- Camiseta Adidas Originals Trefoil (170.00)
-- Venda 3 (Cliente 3, Total R$ 900.00)
INSERT INTO
    ITENS_VENDA (venda_id, produto_id, quantidade)
VALUES
    (3, 6, 1), -- Moletom Nike Tech Fleece (600.00)
    (3, 7, 1);

-- Calça Adidas Tiro 23 (300.00)
-- Venda 4 (Cliente 4, Total R$ 1200.00)
INSERT INTO
    ITENS_VENDA (venda_id, produto_id, quantidade)
VALUES
    (4, 1, 1), -- Nike Air Force 1 '07 (750.00)
    (4, 3, 1);

-- Puma Suede Classic XXI (450.00)
-- Venda 5 (Cliente 5, Total R$ 470.00)
INSERT INTO
    ITENS_VENDA (venda_id, produto_id, quantidade)
VALUES
    (5, 10, 1), -- Camiseta Mad Drip "No Cap" (220.00)
    (5, 8, 1);

-- Calça Moletom Puma Essentials (250.00)