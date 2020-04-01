/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Parqueadero.entidades;

import Parqueadero.entidades.Bahia;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author JuanCamilo
 */
@Entity
@Table(name = "zona")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Zona.findAll", query = "SELECT z FROM Zona z")
    , @NamedQuery(name = "Zona.findByZonombre", query = "SELECT z FROM Zona z WHERE z.zonombre = :zonombre")
    , @NamedQuery(name = "Zona.findByIdzona", query = "SELECT z FROM Zona z WHERE z.idzona = :idzona")})
public class Zona implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "zonombre")
    private String zonombre;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idzona")
    private Integer idzona;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idzona")
    private Collection<Bahia> bahiaCollection;

    public Zona() {
    }

    public Zona(Integer idzona) {
        this.idzona = idzona;
    }

    public Zona(Integer idzona, String zonombre) {
        this.idzona = idzona;
        this.zonombre = zonombre;
    }

    public String getZonombre() {
        return zonombre;
    }

    public void setZonombre(String zonombre) {
        this.zonombre = zonombre;
    }

    public Integer getIdzona() {
        return idzona;
    }

    public void setIdzona(Integer idzona) {
        this.idzona = idzona;
    }

    @XmlTransient
    public Collection<Bahia> getBahiaCollection() {
        return bahiaCollection;
    }

    public void setBahiaCollection(Collection<Bahia> bahiaCollection) {
        this.bahiaCollection = bahiaCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idzona != null ? idzona.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Zona)) {
            return false;
        }
        Zona other = (Zona) object;
        if ((this.idzona == null && other.idzona != null) || (this.idzona != null && !this.idzona.equals(other.idzona))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Parqueadero.servicios.Zona[ idzona=" + idzona + " ]";
    }
    
}
