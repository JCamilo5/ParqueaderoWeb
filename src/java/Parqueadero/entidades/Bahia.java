package Parqueadero.entidades;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JuanCamilo
 */
@Entity
@Table(name = "bahia")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bahia.findAll", query = "SELECT b FROM Bahia b")
    , @NamedQuery(name = "Bahia.findByBaid", query = "SELECT b FROM Bahia b WHERE b.baid = :baid")
    , @NamedQuery(name = "Bahia.findByBaestado", query = "SELECT b FROM Bahia b WHERE b.baestado = :baestado")})
public class Bahia implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "baid")
    private Integer baid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "baestado")
    private String baestado;
    @JoinColumn(name = "idzona", referencedColumnName = "idzona")
    @ManyToOne(optional = false)
    private Zona idzona;

    public Bahia() {
    }

    public Bahia(Integer baid) {
        this.baid = baid;
    }

    public Bahia(Integer baid, String baestado) {
        this.baid = baid;
        this.baestado = baestado;
    }

    public Integer getBaid() {
        return baid;
    }

    public void setBaid(Integer baid) {
        this.baid = baid;
    }

    public String getBaestado() {
        return baestado;
    }

    public void setBaestado(String baestado) {
        this.baestado = baestado;
    }

    public Zona getIdzona() {
        return idzona;
    }

    public void setIdzona(Zona idzona) {
        this.idzona = idzona;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (baid != null ? baid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bahia)) {
            return false;
        }
        Bahia other = (Bahia) object;
        if ((this.baid == null && other.baid != null) || (this.baid != null && !this.baid.equals(other.baid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Parqueadero.servicios.Bahia[ baid=" + baid + " ]";
    }
    
}
