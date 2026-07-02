# Ecossistema Spring

## Projetos do Spring
- <b>Spring Boot</b>: O Spring Boot facilita a criação de aplicativos autônomos baseados em Spring de nível de produção que você pode "simplesmente executar";
- <b>Spring Framework</b>: O Spring Framework fornece um modelo abrangente de programação e configuração para aplicativos empresariais modernos baseados em Java - em qualquer tipo de plataforma de implementação;
- <b>Spring Data</b>: A missão da Spring Data é fornecer um modelo de programação familiar e consistente baseado em Spring para acesso a dados, mantendo as características especiais do armazenamento de dados subjacente;

## Dependências do projeto
```
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-h2console</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-jpa</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-webmvc</artifactId>
</dependency>
<dependency>
    <groupId>com.h2database</groupId>
    <artifactId>h2</artifactId>
    <scope>runtime</scope>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-jpa-test</artifactId>
    <scope>test</scope>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-webmvc-test</artifactId>
    <scope>test</scope>
</dependency>
```

## Dependências externas:
- <b>H2 Database</b>: O H2 é um Sistema Gerenciador de Banco de Dados Relacional (SGBDR) escrito em Java, extremamente leve e rápido. Ele é muito popular no desenvolvimento de software, especialmente por poder rodar diretamente na memória RAM (sem salvar no disco) ou ser embutido dentro da própria aplicação.
```
<dependency>
    <groupId>com.h2database</groupId>
    <artifactId>h2</artifactId>
    <scope>runtime</scope>
</dependency>
```

## Entidades e relacionamentos


### Um para muitos e muitos para um

```
@Entity
@Table(name = "tb_especialidade")
public class Especialidade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;

    public Especialidade() {
    }
}
```

```
@Entity
@Table(name = "tb_medico")
public class Medico {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private String email;
    private String crm;
    private boolean atendeConvenio;

    @ManyToOne
    @JoinColumn(name = "id_especialidade")
    private Especialidade especialidade;

    public Medico() {
    }
}
```

### Muitos para muitos

```
@Entity
@Table(name = "tb_autoridade")
public class Autoridade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;

    public Autoridade() {
    }
}
```

```
@Entity
@Table(name = "tb_usuario")
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private String sobrenome;
    private String email;
    private String senha;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "tb_usuario_autoridade",
            joinColumns = @JoinColumn(name = "id_usuario"),
            inverseJoinColumns = @JoinColumn(name = "id_autoridade"))
    private Set<Autoridade> autoridades = new HashSet<>();

    public Usuario() {
    }
```

## Inserindo dados no H2 (data.sql)
```
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

INSERT INTO tb_autoridade (nome) VALUES ('ROLE_ADMIN');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_FUNCIONARIO');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_MEDICO');
INSERT INTO tb_autoridade (nome) VALUES ('ROLE_ESTAGIARIO');

INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (1, 1);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (2, 2);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (3, 2);
INSERT INTO tb_usuario_autoridade (id_usuario, id_autoridade) VALUES (4, 3);
```

## Core JPA Annotations
- <b>@Entity</b>: Marca a classe como uma entidade JPA, permitindo o mapeamento para uma tabela de banco de dados;

- <b>@Table(name = "table_name")</b>: Define os detalhes da tabela do banco de dados (por exemplo, nome da tabela, tb_medico);

- <b>@id</b>: Define a chave primária da entidade;

- <b>@GeneratedValue</b>: Define como a chave primária é gerada.

## ID Generation Strategies

- <b>GenerationType.IDENTITY</b>: O banco de dados fornece o valor do ID. (AUTO_INCREMENT no MySQL);
- <b>GenerationType.SEQUENCE</b>: Utiliza uma sequência de banco de dados para gerar valores, permitindo inserções em lote;
- <b>GenerationType.AUTO</b>: O provedor JPA seleciona a melhor estratégia com base no dialeto do banco de dados;
- <b>GenerationType.TABLE</b>: Utiliza uma tabela dedicada para gerar IDs únicos, embora com desempenho inferior.

## Links

- Spring Initializr
```
https://start.spring.io/
```

## CRIAÇÃO DE REPOSITÓRIO
```
git init
git config --global user.email "marcelo.souza@dnweb.com.br"
git config --global user.name "Marcelo Gonçalves de Souza"
git remote add origin https://github.com/marcelogoncalvesdesouza/xxx.git
git branch -M main
git add .
git commit -m "Update."
git push -u origin main
```

## ATUALIZAÇÃO DE REPOSITÓRIO
```
git add .
git commit -m "Update."
git push -u origin main
```

## REPOSITÓRIO EXISTENTE
```
git init
git remote add origin https://github.com/marcelogoncalvesdesouza/xxx.git
git branch -M main
git pull origin main
```