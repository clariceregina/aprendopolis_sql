-- Consulta 1: Retornar a média de Notas dos Alunos em história.
SELECT AVG(nota) AS media_historia FROM Notas WHERE id_disciplina = 2;

-- Consulta 2: Retornar as informações dos alunos cujo Nome começa com 'A'.
SELECT * FROM Alunos WHERE nome_aluno LIKE 'A%';

-- Consulta 3: Buscar apenas os alunos que fazem aniversário em fevereiro.
SELECT id_aluno, nome_aluno, data_nascimento FROM Alunos WHERE STRFTIME('%m', data_nascimento) = '02';

-- Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.
SELECT 
    id_aluno, 
    nome_aluno, 
    data_nascimento,
    (STRFTIME('%Y', CURRENT_DATE) - STRFTIME('%Y', data_nascimento)) - 
    (STRFTIME('%m-%d', CURRENT_DATE) < STRFTIME('%m-%d', data_nascimento)) AS idade
FROM Alunos;

-- Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado aprovado se a sua nota foi igual ou maior que 6.
SELECT id_aluno, nota,
CASE
WHEN nota >= 6 THEN 'Aprovado!'
ELSE 'Reprovado'
END AS resultado
FROM Notas;
