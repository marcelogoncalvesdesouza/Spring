INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Ayrton', 'Senna', 'ayrton.senna@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Alain', 'Prost', 'alain.prost@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Rubens', 'Barrichello', 'rubens.barrichello@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Felipe', 'Massa', 'felipe.massa@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_autoridade (nome) VALUES ('ROLE_ADMIN');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_FUNCIONARIO');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_MEDICO');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_ESTAGIARIO');

INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (1, 1);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (2, 2);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (3, 2);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (4, 3);