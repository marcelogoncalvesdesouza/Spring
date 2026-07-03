INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Ayrton', 'Senna', 'ayrton.senna@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Alain', 'Prost', 'alain.prost@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Rubens', 'Barrichello', 'rubens.barrichello@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_usuario (nome, sobrenome, email, senha) VALUES ('Felipe', 'Massa', 'felipe.massa@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_autoridade (nome) VALUES ('ROLE_ADMIN');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_CONTADOR');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_ADMINISTRATIVO');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_ESTAGIARIO');

INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (1, 1);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (2, 2);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (3, 2);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (4, 3);

INSERT INTO tb_categoria (codigo, sequencia, nome) VALUES ('1.1', 1, 'Ativo Circulante');
INSERT INTO tb_categoria (codigo, sequencia, nome) VALUES ('1.2', 2, 'Ativo Não Circulante');
INSERT INTO tb_categoria (codigo, sequencia, nome) VALUES ('2.1', 3, 'Passivo Circulante');
INSERT INTO tb_categoria (codigo, sequencia, nome) VALUES ('2.2', 4, 'Passivo Não Circulante');
INSERT INTO tb_categoria (codigo, sequencia, nome) VALUES ('2.3', 5, 'Patrimônio Líquido');
INSERT INTO tb_categoria (codigo, sequencia, nome) VALUES ('3.1', 6, 'Receitas');
INSERT INTO tb_categoria (codigo, sequencia, nome) VALUES ('3.2', 7, 'Despesas');

INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('1.1.1', 1, 'Disponibilidades', 1);
INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('1.1.2', 2, 'Contas a receber', 1);
INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('1.1.3', 3, 'Estoques', 1);

INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('1.2.1', 4, 'Investimentos', 2);
INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('1.2.2', 5, 'Imobilizado', 2);

INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('3.1.1', 1, 'Receitas Operacionais', 6);
INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('3.1.2', 2, 'Receitas Não Operacionais', 6);

INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('3.2.1', 1, 'Despesas Administrativas', 7);
INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('3.2.2', 2, 'Despesas com Pessoal', 7);
INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('3.2.3', 3, 'Despesas Tributárias', 7);
INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('3.2.4', 4, 'Despesas Financeiras', 7);
INSERT INTO tb_sub_categoria (codigo, sequencia, nome, id_categoria) VALUES ('3.2.5', 5, 'Despesas com Custos', 7);

INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.1.1', 1, 'Caixa', 1);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.1.2', 2, 'Banco do Brasil', 1);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.1.3', 3, 'Banrisul', 1);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.1.4', 4, 'Itaú', 1);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.1.5', 5, 'Nu', 1);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.1.6', 6, 'PicPay', 1);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.1.7', 7, 'Banrisul', 1);

INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.2.1', 1, 'Devedores', 2);

INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.1.3.1', 1, 'Estoque de mercadorias', 3);

INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.2.1.1', 1, 'Ações', 4);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.2.2.1', 1, 'Móveis e Utensílios', 5);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.2.2.2', 2, 'Máquinas e Equipamentos', 5);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.2.2.3', 3, 'Veículos', 5);
INSERT INTO tb_conta (codigo, sequencia, nome, id_sub_categoria) VALUES ('1.2.2.4', 4, 'Terrenos', 5);