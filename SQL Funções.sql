USE db_discoteca;

-- Seleciona a duração máxima de todas as músicas
SELECT MAX(duracao) FROM tb_musica;

-- Seleciona a duração mínima de todas as músicas
SELECT MIN(duracao) FROM tb_musica;

-- Calcula a soma das durações das músicas do disco com id 7
SELECT SUM(duracao), id_disco FROM tb_musica
WHERE id_disco = 7;

-- Converte uma string de tempo ('00:02:00') em segundos (120 segundos)
SELECT TIME_TO_SEC ('00:02:00');

-- Converte 120 segundos de volta para o formato de tempo (00:02:00)
SELECT SEC_TO_TIME ('120');

-- Converte a duração das músicas do disco com id 7 em segundos
SELECT TIME_TO_SEC(duracao) id_disco FROM tb_musica
WHERE id_disco = 7;

-- Calcula a soma das durações das músicas do disco com id 7 em segundos
SELECT SUM(TIME_TO_SEC(duracao)) id_disco FROM tb_musica
WHERE id_disco = 7;

-- Converte a soma das durações das músicas do disco com id 7 de segundos para o formato de tempo
SELECT SEC_TO_TIME(SUM(TIME_TO_SEC(duracao))) id_disco FROM tb_musica
WHERE id_disco = 7;

-- Calcula a média das durações das músicas do disco com id 7 e converte para o formato de tempo
SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(duracao))) id_disco FROM tb_musica
WHERE id_disco = 7;

/*
MAX(duracao): Retorna a maior duração encontrada na coluna duracao.
MIN(duracao): Retorna a menor duração encontrada na coluna duracao.
SUM(duracao): Calcula a soma total das durações das músicas de um disco específico (id 7).
TIME_TO_SEC(): Converte um valor de tempo (formato HH:MM) em segundos.
SEC_TO_TIME(): Converte um número de segundos em um formato de tempo (HH:MM).
TIME_TO_SEC(duracao): Converte cada duração das músicas em segundos.
SUM(TIME_TO_SEC(duracao)): Soma as durações das músicas em segundos.
SEC_TO_TIME(SUM(...)): Converte a soma total de segundos de volta para o formato de tempo.
SEC_TO_TIME(AVG(...)): Calcula a média das durações em segundos e converte para o formato de tempo.
*/