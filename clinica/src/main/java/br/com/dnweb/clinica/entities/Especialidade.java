package br.com.dnweb.clinica.entities;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "tb_especialidade")
public class Especialidade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;

    public Especialidade() {
    }

    public Especialidade(Long id) {
        this.id = id;
    }

    public Especialidade(Long id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Especialidade that = (Especialidade) o;
        return Objects.equals(id, that.id) && Objects.equals(nome, that.nome);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nome);
    }

    @Override
    public String toString() {
        return "Especialidade{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                '}';
    }
}
