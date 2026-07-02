package br.com.dnweb.contabil.entities;

import jakarta.persistence.*;

import java.util.Objects;

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

    public Medico(Long id) {
        this.id = id;
    }

    public Medico(Long id, String nome, String email, String crm, boolean atendeConvenio, Especialidade especialidade) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.crm = crm;
        this.atendeConvenio = atendeConvenio;
        this.especialidade = especialidade;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCrm() {
        return crm;
    }

    public void setCrm(String crm) {
        this.crm = crm;
    }

    public boolean isAtendeConvenio() {
        return atendeConvenio;
    }

    public void setAtendeConvenio(boolean atendeConvenio) {
        this.atendeConvenio = atendeConvenio;
    }

    public Especialidade getEspecialidade() {
        return especialidade;
    }

    public void setEspecialidade(Especialidade especialidade) {
        this.especialidade = especialidade;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Medico medico = (Medico) o;
        return atendeConvenio == medico.atendeConvenio && Objects.equals(id, medico.id) && Objects.equals(nome, medico.nome) && Objects.equals(email, medico.email) && Objects.equals(crm, medico.crm) && Objects.equals(especialidade, medico.especialidade);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nome, email, crm, atendeConvenio, especialidade);
    }

    @Override
    public String toString() {
        return "Medico{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", email='" + email + '\'' +
                ", crm='" + crm + '\'' +
                ", atendeConvenio=" + atendeConvenio +
                ", especialidade=" + especialidade +
                '}';
    }
}
