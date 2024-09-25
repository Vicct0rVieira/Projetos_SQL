-- Seleciona combinações únicas de cor e tamanho da tabela tb_ball
SELECT DISTINCT color, size FROM tb_ball;

-- Insere novos registros na tabela tb_ball
INSERT INTO tb_ball 
    (size, color)  -- Especifica as colunas que receberão os valores
VALUES
    ('s', NULL),   -- Primeiro registro: tamanho 's' e cor NULL
    (NULL, 'pink'); -- Segundo registro: tamanho NULL e cor 'pink'

-- Conta o número total de registros e registros não nulos nas colunas size e color
SELECT 
    COUNT(id_ball) AS contagem_id,         -- Conta todos os registros da tabela
    COUNT(size) AS contagem_size,          -- Conta registros com valor não NULL na coluna size
    COUNT(color) AS contagem_color          -- Conta registros com valor não NULL na coluna color
FROM tb_ball;

-- Agrupa os registros por cor e conta quantas vezes cada cor aparece
SELECT color, 
    COUNT(color) AS contagem_color           -- Conta a quantidade de vezes que cada cor aparece
FROM tb_ball
GROUP BY color                              -- Agrupa os resultados pela coluna color
ORDER BY contagem_color;                   -- Ordena os resultados pela contagem de cor
