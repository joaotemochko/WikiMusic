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
@Table(name = "tb_artista")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Artista.findAll", query = "SELECT t FROM Artista t")
    , @NamedQuery(name = "Artista.findByIdArtista", query = "SELECT t FROM Artista t WHERE t.idArtista = :idArtista")
    , @NamedQuery(name = "Artista.findByDsNome", query = "SELECT t FROM Artista t WHERE t.dsNome = :dsNome")})


public class Artista implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_artista")
    private Integer idArtista;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ds_nome")
    private String dsNome;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ds_nacionalidade")
    private String dsNacionalidade;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ds_imagem")
    private String dsImagem;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1000)
    @Column(name = "ds_biografia")
    private String dsBiografia;

    public Artista() {
    }

    public Artista(Integer idArtista) {
        this.idArtista = idArtista;
    }

    public Artista(Integer idArtista, String dsNome, String dsNacionalidade, String dsImagem, String dsBiografia) {
        this.idArtista = idArtista;
        this.dsNome = dsNome;
        this.dsNacionalidade = dsNacionalidade;
        this.dsImagem = dsImagem;
        this.dsBiografia = dsBiografia;
    }

    public Integer getIdArtista() {
        return idArtista;
    }

    public void setIdArtista(Integer idArtista) {
        this.idArtista = idArtista;
    }

    public String getDsNome() {
        return dsNome;
    }

    public void setDsNome(String dsNome) {
        this.dsNome = dsNome;
    }

    public String getDsNacionalidade() {
        return dsNacionalidade;
    }

    public void setDsNacionalidade(String dsNacionalidade) {
        this.dsNacionalidade = dsNacionalidade;
    }

    public String getDsImagem() {
        return dsImagem;
    }

    public void setDsImagem(String dsImagem) {
        this.dsImagem = dsImagem;
    }

    public String getDsBiografia() {
        return dsBiografia;
    }

    public void setDsBiografia(String dsBiografia) {
        this.dsBiografia = dsBiografia;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idArtista != null ? idArtista.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Artista)) {
            return false;
        }
        Artista other = (Artista) object;
        if ((this.idArtista == null && other.idArtista != null) || (this.idArtista != null && !this.idArtista.equals(other.idArtista))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "rest.Artista[ idArtista=" + idArtista + " ]";
    }
    
}
