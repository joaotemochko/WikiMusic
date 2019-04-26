/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Leandro
 */
@Entity
@Table(name = "tb_estilo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Estilo.findAll", query = "SELECT t FROM Estilo t")
    , @NamedQuery(name = "Estilo.findByIdEstilo", query = "SELECT t FROM Estilo t WHERE t.idEstilo = :idEstilo")
    , @NamedQuery(name = "Estilo.findByDsNome", query = "SELECT t FROM Estilo t WHERE t.dsNome = :dsNome")})


public class Estilo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_estilo")
    private Integer idEstilo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ds_nome")
    private String dsNome;

    public Estilo() {
    }

    public Estilo(Integer idEstilo) {
        this.idEstilo = idEstilo;
    }

    public Estilo(Integer idEstilo, String dsNome) {
        this.idEstilo = idEstilo;
        this.dsNome = dsNome;
    }

    public Integer getIdEstilo() {
        return idEstilo;
    }

    public void setIdEstilo(Integer idEstilo) {
        this.idEstilo = idEstilo;
    }

    public String getDsNome() {
        return dsNome;
    }

    public void setDsNome(String dsNome) {
        this.dsNome = dsNome;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idEstilo != null ? idEstilo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Estilo)) {
            return false;
        }
        Estilo other = (Estilo) object;
        if ((this.idEstilo == null && other.idEstilo != null) || (this.idEstilo != null && !this.idEstilo.equals(other.idEstilo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "rest.Estilo[ idEstilo=" + idEstilo + " ]";
    }
    
}
