-- 1)

SELECT COUNT (*) FROM controle.livro;

-- 2)

SELECT AVG(data_devolucao - data_emprestimo) FROM controle.emprestimos;

-- 3)

SELECT 
    (SELECT titulo FROM controle.livro WHERE ano_publicacao = (SELECT MIN(ano_publicacao) FROM controle.livro)) AS livro_mais_antigo,
    (SELECT titulo FROM controle.livro WHERE ano_publicacao = (SELECT MAX(ano_publicacao) FROM controle.livro)) AS livro_mais_recente;

-- 4)

SELECT u.nome AS usuario, COUNT(id_emprestimos) AS total_emprestimos
FROM controle.usuario u
LEFT JOIN controle.emprestimos e ON u.id_usuario = e.id_usuario
GROUP BY u.nome
ORDER BY total_emprestimos DESC;

-- 5)

SELECT genero, COUNT(*) AS total_livros
FROM controle.livro
GROUP BY genero
ORDER BY total_livros DESC;
