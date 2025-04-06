-- 1)

 INSERT INTO controle.livro (titulo, autor, ano_publicacao, genero, quantidade_estoque, editora)
VALUES
('O Corvo', 'Edgar Allan Poe', '1845-01-20', 'Clássico Gótico', 5, 'Darkside'),
('Drácula', 'Bram Stoker', '1897-01-20', 'Clássico Gótico', 3, 'Darkside'),
('O Retrato de Dorian Gray', 'Oscar Wilde', '1890-01-20', 'Clássico Gótico', 2, 'Biblioteca Azul'),
('Frankenstein', 'Mary Shelley', '1818-01-20', 'Clássico Gótico', 4, 'Darkside'),
('O Médico e o Monstro', 'Robert Louis Stevenson', '1886-01-20', 'Clássico Gótico', 3, 'Darkside'),
('Entrevista Com O Vampiro', 'Anne Rice', '1976-01-20', 'Terror Gótico', 6, 'Rocco'),
('O Vampiro Lestat', 'Anne Rice', '1985-01-20', 'Terror Gótico', 4, 'Rocco'),
('Coletânea de H. P. Lovecraft', 'Anne Rice', '1976-01-20', 'Terror', 4, 'Chronos'),
('Contos Completos', 'Oscar Wilde', '2022-01-20', 'Terror Gótico', 2, 'Sombria'),
('Mo Dao Zu Shi', 'MXTX', '2015-01-20', 'Xianxia', 3, 'NewPop Novels');

SELECT * FROM controle.livro;

-- 2)

 INSERT INTO controle.usuario (nome, cpf, email, telefone, endereco)
VALUES
('Lorena', '15698736211', 'lore@you.com', '21965471035', 'Rua B'),
('Eliana', '15691736211', 'elia1@you.com', '21965361035', 'Rua A'),
('Elias', '15695736211', 'elib@you.com', '21965271035', 'Rua D'),
('Marcos', '15694736211', 'marc@you.com', '21965171035', 'Rua E'),
('Luana', '15693736211', 'lua@you.com', '21965401035', 'Rua M');


SELECT * FROM controle.usuario;

-- 3)

UPDATE controle.usuario
SET telefone = '25965401035'
WHERE id_usuario = 7;

-- 4) 

 INSERT INTO controle.emprestimos (id_usuario, id_livro, data_emprestimo, data_devolucao, status)
VALUES
(3, 2, '2024-12-10', '2024-12-20', 'Devolvido'),
(5, 9, '2024-12-15', '2024-12-25', 'Devolvido'),
(7, 1, '2024-12-10', '2024-12-20', 'Devolvido'),
(4, 1, '2025-01-08', '2025-03-10', 'Devolvido'),
(5, 8, '2025-01-08', '2025-03-10', 'Devolvido'),
(4, 8, '2025-03-20', '2025-03-30', 'Emprestado'),
(5, 7, '2025-03-20', '2025-03-29', 'Emprestado');

 DELETE FROM controle.usuario WHERE id_usuario = 5;

-- Resulta em erro por violar a restrição da chave estrangeira de emprestimos.

SELECT * FROM controle.emprestimos;


-- 5) O DELETE FROM remove seletivamente, sendo específico, para os registros de uma tabela e também é possível reverter.
-- O Truncate Table remove todos os registros efetivamente, liberando todo espaço no disco e é mais rápido.
