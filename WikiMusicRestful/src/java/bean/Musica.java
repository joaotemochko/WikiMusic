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
@Table(name = "tb_musica")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Musica.findAll", query = "SELECT t FROM Musica t")
    , @NamedQuery(name = "Musica.findByIdMusica", query = "SELECT t FROM Musica t WHERE t.idMusica = :idMusica")
    , @NamedQuery(name = "Musica.findByDsNome", query = "SELECT t FROM Musica t WHERE t.dsNome = :dsNome")})


public class Musica implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Basic(optional = false)
    @Column(name = "id_musica")
    private Integer idMusica;

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ds_nome")
    private String dsNome;

    @Basic(optional = false)
    @NotNull
    @Column(name = "id_album")
    private String idAlbum;

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ds_youtube")
    private String dsYoutube;

    public Musica() {
    }

    public Musica(Integer idMusica) {
        this.idMusica = idMusica;
    }

    public Musica(Integer idMusica, String dsNome, String idAlbum, String dsYoutube, String dsBiografia) {
        this.idMusica = idMusica;
        this.dsNome = dsNome;
        this.idAlbum = idAlbum;
        this.dsYoutube = dsYoutube;
    }

    public Integer getIdMusica() {
        return idMusica;
    }

    public void setIdMusica(Integer idMusica) {
        this.idMusica = idMusica;
    }

    public String getDsNome() {
        return dsNome;
    }

    public void setDsNome(String dsNome) {
        this.dsNome = dsNome;
    }

    public String getIdAlbum() {
        return idAlbum;
    }

    public void setIdAlbum(String idAlbum) {
        this.idAlbum = idAlbum;
    }

    public String getDsYoutube() {
        return dsYoutube;
    }

    public void setDsYoutube(String dsYoutube) {
        this.dsYoutube = dsYoutube;
    }


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idMusica != null ? idMusica.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Musica)) {
            return false;
        }
        Musica other = (Musica) object;
        if ((this.idMusica == null && other.idMusica != null) || (this.idMusica != null && !this.idMusica.equals(other.idMusica))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "rest.Musica[ idMusica=" + idMusica + " ]";
    }
    
}
