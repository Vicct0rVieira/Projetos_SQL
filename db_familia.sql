-- Cria um novo banco de dados chamado db_familia
CREATE DATABASE db_familia;

-- Seleciona o banco de dados db_familia para uso
USE db_familia;

-- Cria uma tabela chamada tb_pai para armazenar informações sobre pais
CREATE TABLE tb_pai(
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Identificador único para cada pai (chave primária que auto-incrementa)
    nome VARCHAR(255)                   -- Nome do pai
);

-- Cria uma tabela chamada tb_filho para armazenar informações sobre filhos
CREATE TABLE tb_filho (
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Identificador único para cada filho (chave primária que auto-incrementa)
    nome VARCHAR(255),                  -- Nome do filho
    id_pai INT,                         -- Identificador do pai (chave estrangeira)
    FOREIGN KEY (id_pai) REFERENCES tb_pai(id)  -- Define uma chave estrangeira que referencia a tabela tb_pai
);

-- Insere registros na tabela tb_pai
INSERT INTO tb_pai (nome) VALUES ('pai1'), ('pai2');  -- Insere dois pais com os nomes 'pai1' e 'pai2'
INSERT INTO tb_pai (nome) VALUES ('pai3');            -- Insere um terceiro pai com o nome 'pai3'

-- Insere registros na tabela tb_filho
INSERT INTO tb_filho (nome, id_pai) VALUES ('filho 1', 1);  -- Insere um filho com o nome 'filho 1' e id_pai 1 (referente ao pai com id 1)
INSERT INTO tb_filho (nome, id_pai) VALUES ('filho 2', 1);  -- Insere outro filho com o nome 'filho 2' e id_pai 1
INSERT INTO tb_filho (nome, id_pai) VALUES ('filho 3', 2);  -- Insere um filho com o nome 'filho 3' e id_pai 2
INSERT INTO tb_filho (nome, id_pai) VALUES ('filho 4', 1);  -- Insere um filho com o nome 'filho 4' e id_pai 1
INSERT INTO tb_filho (nome, id_pai) VALUES ('filho 5', 2);  -- Insere um filho com o nome 'filho 5' e id_pai 2
INSERT INTO tb_filho (nome, id_pai) VALUES ('filho 6', 2);  -- Insere um filho com o nome 'filho 6' e id_pai 2
INSERT INTO tb_filho (nome) VALUES ('filho 7');           -- Insere um filho com o nome 'filho 7' e sem id_pai (não associado a nenhum pai)

-- Seleciona todos os registros da tabela tb_filho
SELECT * FROM tb_filho;

-- Faz uma junção interna (INNER JOIN) entre tb_filho e tb_pai para obter nomes de filhos e seus respectivos pais
SELECT
    f.nome AS filho,  -- Nome do filho
    p.nome AS pai     -- Nome do pai
FROM tb_filho AS f
INNER JOIN tb_pai AS p
ON f.id_pai = p.id;  -- Condição de junção: id_pai da tabela tb_filho deve corresponder ao id da tabela tb_pai

-- Faz uma junção simples (JOIN) entre tb_filho e tb_pai (equivalente a INNER JOIN)
SELECT
    f.nome AS filho,  -- Nome do filho
    p.nome AS pai     -- Nome do pai
FROM tb_filho AS f
JOIN tb_pai AS p
ON f.id_pai = p.id;  -- Condição de junção: id_pai da tabela tb_filho deve corresponder ao id da tabela tb_pai

-- Faz uma junção à esquerda (LEFT JOIN) entre tb_filho e tb_pai
SELECT
    f.nome AS filho,  -- Nome do filho
    p.nome AS pai     -- Nome do pai (ou NULL se não houver correspondente)
FROM tb_filho AS f
LEFT JOIN tb_pai AS p
ON f.id_pai = p.id;  -- Condição de junção: id_pai da tabela tb_filho deve corresponder ao id da tabela tb_pai
-- Todos os filhos são retornados, mesmo que não tenham um pai correspondente

-- Faz uma junção à direita (RIGHT JOIN) entre tb_filho e tb_pai
SELECT
    f.nome AS filho,  -- Nome do filho (ou NULL se não houver correspondente)
    p.nome AS pai     -- Nome do pai
FROM tb_filho AS f
RIGHT JOIN tb_pai AS p
ON f.id_pai = p.id;  -- Condição de junção: id_pai da tabela tb_filho deve corresponder ao id da tabela tb_pai
-- Todos os pais são retornados, mesmo que não tenham filhos correspondentes

-- Faz uma junção à esquerda (LEFT JOIN) e uma junção à direita (RIGHT JOIN) e combina os resultados com UNION
SELECT
    f.nome AS filho,  -- Nome do filho
    p.nome AS pai     -- Nome do pai
FROM tb_filho AS f
LEFT JOIN tb_pai AS p
ON f.id_pai = p.id
UNION
SELECT
    f.nome AS filho,  -- Nome do filho (ou NULL se não houver correspondente)
    p.nome AS pai     -- Nome do pai
FROM tb_filho AS f
RIGHT JOIN tb_pai AS p
ON f.id_pai = p.id;
-- Combina os resultados das junções à esquerda e à direita, eliminando duplicatas