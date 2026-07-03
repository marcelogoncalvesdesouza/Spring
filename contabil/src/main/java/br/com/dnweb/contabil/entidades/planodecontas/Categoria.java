package br.com.dnweb.contabil.entidades.planodecontas;

import jakarta.persistence.*;

@Entity
@Table(name = "tb_categoria")
public class Categoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String codigo;
    private Byte sequencia;
    private String nome;

    public Categoria() {
    }

    public Categoria(Long id) {
        this.id = id;
    }

}