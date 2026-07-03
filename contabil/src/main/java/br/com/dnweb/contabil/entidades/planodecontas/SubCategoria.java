package br.com.dnweb.contabil.entidades.planodecontas;

import jakarta.persistence.*;

@Entity
@Table(name = "tb_sub_categoria")
public class SubCategoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String codigo;
    private Byte sequencia;
    private String nome;

    @ManyToOne
    @JoinColumn(name = "id_categoria")
    private Categoria categoria;

    public SubCategoria() {
    }

    public SubCategoria(Long id) {
        this.id = id;
    }

}