-- 1)

CREATE INDEX idx_titulo_livro ON controle.livro (titulo);

SELECT indexname, indexdef FROM pg_indexes WHERE tablename = 'livro';

-- 2)

CREATE INDEX idx_data_emprestimos ON controle.emprestimos (data_emprestimo);

SELECT indexname, indexdef FROM pg_indexes WHERE tablename = 'emprestimos';

-- 3)

CREATE VIEW vw_historico_emprestimos AS
SELECT 
u.nome AS nome_usuario,
l.titulo AS titulo_livro,
e.data_emprestimo,
e.data_devolucao
FROM 
controle.emprestimos e
JOIN 
controle.usuario u ON e.id_usuario = u.id_usuario
JOIN 
controle.livro l ON e.id_livro = l.id_livro;

-- 4) Os índices diminuem o tempo de execução para consulta, aumentando a velcodade de resposta do programa.
-- Porém, impactam negativamente nas alterações no banco de dados quando colocadas em grande quantidade.

-- 5) A principal diferença observada foi no tempo de resposta em relação ao  planejamento e execução do sistema. 
-- Com o índice, o tempo de planejamento caiu quase pela metade em ambos os casos.