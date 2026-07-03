package br.com.dnweb.contabil.entidades.planodecontas;

import jakarta.persistence.*;

@Entity
@Table(name = "tb_conta")
public class Conta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String codigo;
    private Byte sequencia;
    private String nome;

    @ManyToOne
    @JoinColumn(name = "id_sub_categoria")
    private SubCategoria subCategoria;

    public Conta() {
    }

    public Conta(Long id) {
        this.id = id;
    }

}