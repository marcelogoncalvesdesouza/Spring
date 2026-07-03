package br.com.dnweb.contabil.entidades;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "tb_autoridade")
public class Autoridade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;

    public Autoridade() {
    }

    public Autoridade(Long id) {
        this.id = id;
    }

    public Autoridade(Long id, String nome) {
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
        Autoridade that = (Autoridade) o;
        return Objects.equals(id, that.id) && Objects.equals(nome, that.nome);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nome);
    }

    @Override
    public String toString() {
        return "Autoridade{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                '}';
    }
}