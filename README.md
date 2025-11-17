📦 Sistema de Vendas – Banco de Dados SQL

Projeto completo com tabelas, inserts, consultas e views.

📘 Descrição do Projeto

Este repositório contém o desenvolvimento de um banco de dados para um sistema de vendas de produtos streetwear e esportivos.
Ele inclui:

Estrutura relacional completa (DDL)

Inserção de dados de exemplo (DML)

Consultas analíticas

Views para relatórios

Diagrama ER pronto para documentação

🏗️ Modelagem do Banco de Dados
📊 DER — Diagrama Entidade-Relacionamento (Mermaid)

💡 Este modelo é compatível com GitHub! Basta colar abaixo no README.

erDiagram
    CLIENTES {
        INT cliente_id PK
        VARCHAR nome_cliente
        VARCHAR email
        TIMESTAMP data_cadastro
    }

    CATEGORIA {
        INT categoria_id PK
        VARCHAR nome_categoria
    }

    PRODUTOS {
        INT produto_id PK
        VARCHAR nome_produto
        TEXT descricao
        DECIMAL preco
        INT quantidade_estoque
        VARCHAR cor
        VARCHAR tamanho
        INT categoria_id FK
    }

    VENDAS {
        INT venda_id PK
        INT cliente_id FK
        TIMESTAMP data_venda
        DECIMAL valor_total
        VARCHAR endereco_envio
    }

    ITENS_VENDA {
        INT item_venda_id PK
        INT venda_id FK
        INT produto_id FK
        INT quantidade
    }

    CATEGORIA ||--o{ PRODUTOS : "possui"
    CLIENTES ||--o{ VENDAS : "realiza"
    VENDAS ||--o{ ITENS_VENDA : "contém"
    PRODUTOS ||--o{ ITENS_VENDA : "é incluído"

📐 DER em ASCII (para documentação interna)
+-------------+         +----------------+        +----------------+
|  CLIENTES   |         |    VENDAS      |        |  ITENS_VENDA   |
+-------------+         +----------------+        +----------------+
| cliente_id PK| 1   n  | venda_id   PK  | 1   n  | item_venda_id PK
| nome_cliente |---------| cliente_id  FK|---------| venda_id     FK
| email        |         | data_venda     |        | produto_id   FK
| data_cadastro|         | valor_total    |        | quantidade
+-------------+         | endereco_envio |        +----------------+
                        +----------------+
                                  |
                                  | n
                                  |
                           +--------------+
                           |  PRODUTOS    |
                           +--------------+
                           | produto_id PK|
                           | nome_produto |
                           | descricao    |
                           | preco        |
                           | estoque      |
                           | cor          |
                           | tamanho      |
                           | categoria_id FK
                           +--------------+
                                  |
                                  | n
                                  |
                           +----------------+
                           |   CATEGORIA    |
                           +----------------+
                           | categoria_id PK|
                           | nome_categoria |
                           +----------------+

🗄️ Tabelas do Sistema
👤 CLIENTES

Armazena dados dos clientes cadastrados no sistema.

🏷️ CATEGORIA

Categorias gerais dos produtos vendidos.

👟 PRODUTOS

Catalogação completa dos itens disponíveis no estoque.

🧾 VENDAS

Registro de cada venda realizada por clientes.

📦 ITENS_VENDA

Itens que compõem cada venda (1 venda pode ter vários produtos).

🔍 Principais Consultas Incluídas
✔ Alerta de Estoque Baixo

Lista produtos com estoque crítico (≤ 10) dentro da categoria Tênis (Sneakers).

✔ Detalhes de Pedido

Mostra informações completas de uma venda específica, com cliente e produtos.

✔ Histórico de Clientes

Retorna a lista de clientes e suas compras (mesmo quem nunca comprou).

📊 Views Criadas
⭐ Vw_Historico_De_Vendas

Contém um relatório completo de todas as vendas já realizadas.

⭐ Vw_Inventario_Completo

Mostra todos os produtos, suas categorias, estoque e informações gerais.
