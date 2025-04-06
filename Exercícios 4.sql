-- 1)

SELECT * FROM controle.livro;

-- 2)

SELECT 
    usuario.nome AS nome_usuario, 
    livro.titulo AS titulo_livro
FROM controle.emprestimos
JOIN controle.usuario ON emprestimos.id_usuario = usuario.id_usuario
JOIN controle.livro ON emprestimos.id_livro = livro.id_livro;

-- 3)

SELECT * FROM controle.emprestimos WHERE status = 'Emprestado';

-- 4)

SELECT autor, titulo FROM controle.livro;

-- 5)

SELECT u.nome AS usuario, l.titulo AS livro
FROM controle.usuario u
LEFT JOIN controle.emprestimos e ON u.id_usuario = e.id_usuario
LEFT JOIN controle.livro l ON e.id_livro = l.id_livro
ORDER BY u.nome, l.titulo;

