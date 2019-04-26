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
@Table(name = "tb_album")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Album.findAll", query = "SELECT t FROM Album t")
    , @NamedQuery(name = "Album.findByIdAlbum", query = "SELECT t FROM Album t WHERE t.idAlbum = :idAlbum")
    , @NamedQuery(name = "Album.findByDsNome", query = "SELECT t FROM Album t WHERE t.dsTitulo = :dsTitulo")})


public class Album implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Basic(optional = false)
    @Column(name = "id_album")
    private Integer idAlbum;

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ds_titulo")
    private String dsTitulo;

    @Basic(optional = false)
    @NotNull
    @Column(name = "dt_lancamento")
    private String dtLancamento;

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ds_imagem")
    private String dsImagem;

    @Basic(optional = false)
    @NotNull
    @Column(name = "id_artista")
    private Integer idArtista;

    @Basic(optional = false)
    @NotNull
    @Column(name = "id_estilo")
    private Integer idEstilo;

    public Album() {
    }

    public Album(Integer idAlbum) {
        this.idAlbum = idAlbum;
    }

    public Album(Integer idAlbum, String dsTitulo, String dtLancamento, String dsImagem, Integer idArtista, Integer idEstilo) {
        this.idAlbum = idAlbum;
        this.dsTitulo = dsTitulo;
        this.dtLancamento = dtLancamento;
        this.dsImagem = dsImagem;
        this.idArtista = idArtista;
    }

    public Integer getIdAlbum() {
        return idAlbum;
    }

    public void setIdAlbum(Integer idAlbum) {
        this.idAlbum = idAlbum;
    }

    public String getDsTitulo() {
        return dsTitulo;
    }

    public void setDsTitulo(String dsTitulo) {
        this.dsTitulo = dsTitulo;
    }

    public String getDtLancamento() {
        return dtLancamento;
    }

    public void setDtLancamento(String dtLancamento) {
        this.dtLancamento = dtLancamento;
    }

    public String getDsImagem() {
        return dsImagem;
    }

    public void setDsImagem(String dsImagem) {
        this.dsImagem = dsImagem;
    }

    public Integer getIdArtista() {
        return idArtista;
    }

    public void setIdArtista(Integer idArtista) {
        this.idArtista = idArtista;
    }

    public Integer getIdEstilo() {
        return idEstilo;
    }

    public void setIdEstilo(Integer idEstilo) {
        this.idEstilo = idEstilo;
    }


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idAlbum != null ? idAlbum.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Album)) {
            return false;
        }
        Album other = (Album) object;
        if ((this.idAlbum == null && other.idAlbum != null) || (this.idAlbum != null && !this.idAlbum.equals(other.idAlbum))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "rest.Album[ idAlbum=" + idAlbum + " ]";
    }
    
}
