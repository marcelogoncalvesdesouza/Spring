INSERT INTO tb_especialidade (nome) VALUES ('Clínica Geral');
INSERT INTO tb_especialidade (nome) VALUES ('Cardiologia');
INSERT INTO tb_especialidade (nome) VALUES ('Pediatria');

INSERT INTO tb_medico (nome, email, crm, atende_convenio, id_especialidade) VALUES ('Paula Moraes', 'pmoraes@gmail.com', '55412', TRUE, 1);
INSERT INTO tb_medico (nome, email, crm, atende_convenio, id_especialidade) VALUES ('Mônica Persa', 'drapersa@gmail.com', '41547', FALSE, 2);
INSERT INTO tb_medico (nome, email, crm, atende_convenio, id_especialidade) VALUES ('João Antônio Silveira', 'ja.silveira@gmail.com', '32002', TRUE, 1);

INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Ayrton', 'Senna', 'ayrton.senna@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Alain', 'Prost', 'alain.prost@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Rubens', 'Barrichello', 'rubens.barrichello@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Felipe', 'Massa', 'felipe.massa@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

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