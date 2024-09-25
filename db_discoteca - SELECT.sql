-- Seleciona as colunas 'titulo', 'id' e 'ano_lancamento' da tabela 'tb_disco'
SELECT
 titulo, 
 id,
 ano_lancamento
 FROM tb_disco;

-- Seleciona as colunas 'id', 'titulo', e 'ano_lancamento' da tabela 'tb_disco'
-- Ordena os resultados pela coluna 'titulo' em ordem alfabética crescente (ASC)
SELECT id,
 titulo, 
 ano_lancamento
 FROM tb_disco ORDER BY titulo ASC;
 
-- Seleciona as colunas 'id', 'titulo', e 'ano_lancamento' da tabela 'tb_disco'
-- Ordena os resultados primeiro pela coluna 'ano_lancamento' em ordem decrescente (DESC)
-- Se o 'ano_lancamento' for o mesmo, ordena os resultados pela coluna 'titulo' em ordem crescente (ASC)
SELECT id,
 titulo, 
 ano_lancamento
 FROM tb_disco ORDER BY ano_lancamento DESC, titulo ASC;

-- Exibe a estrutura da tabela 'tb_disco', mostrando as colunas, tipos de dados e outras informações sobre a tabela
DESCRIBE tb_disco;

-- Seleciona as colunas 'id', 'titulo', e 'ano_lancamento' da tabela 'tb_disco'
-- Filtra os resultados onde 'ano_lancamento' é igual a 2010
SELECT 
	id, 
    titulo,
    ano_lancamento
FROM tb_disco
WHERE  ano_lancamento = 2010;

-- Seleciona as colunas 'id', 'titulo', e 'duracao' da tabela 'tb_disco'
-- Filtra os resultados onde a 'duracao' é maior ou igual a "01:00:00" (uma hora)
SELECT 
	id, 
    titulo,
   duracao
FROM tb_disco
WHERE duracao >= "01:00:00";                        

-- Seleciona as colunas 'id', 'titulo', e 'duracao' da tabela 'tb_disco'
-- Filtra os resultados onde a 'duracao' está entre "01:00:00" e "01:30:00"
-- Ordena os resultados pela coluna 'duracao' em ordem crescente (ASC)
SELECT 
	id, 
    titulo,
   duracao
FROM tb_disco
WHERE duracao BETWEEN "01:00:00" AND "01:30:00" 
ORDER BY duracao ASC;        

-- Seleciona as colunas 'id', 'titulo', 'ano_lancamento' e 'duracao' da tabela 'tb_disco'
-- Filtra os resultados onde 'ano_lancamento' é igual a 2023 OU onde 'duracao' é menor ou igual a '01:00:00'
-- Ordena os resultados pelas colunas 'id', 'titulo', 'ano_lancamento' e 'duracao', todas em ordem crescente (ASC)
SELECT 
	id, 
	titulo,
	ano_lancamento,
	duracao
FROM tb_disco
WHERE ano_lancamento = 2023 OR duracao <= '01:00:00'
ORDER BY id, titulo, ano_lancamento, duracao ASC;

-- Seleciona as colunas 'id' e 'titulo' da tabela 'tb_disco'
-- Filtra os resultados onde o título começa com a letra 'A' e termina com a letra 'A'
-- O operador 'LIKE' é usado para fazer essa correspondência de padrão
SELECT 
	id, 
    titulo
FROM tb_disco
WHERE titulo LIKE 'A%A';
