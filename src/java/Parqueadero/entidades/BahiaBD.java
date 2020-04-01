/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Parqueadero.entidades;

/**
 *
 * @author JuanCamilo
 */
public class BahiaBD {
    private String identificador;
    private String estado;
   
    public BahiaBD(){
        
    }
    /**
     * Contructor parametrizado que recibe el identificador de una bahia
     * @param identificador String identificador
     * @param estado estado de la bahia
     */
    public BahiaBD(String identificador,String estado) {
        this.identificador = identificador;
        this.estado = estado;
    }
    /**
     * Metodo que retorna el identificador de una bahia
     * @return String identificador
     */
    public int getBaid() {
        return Integer.parseInt(identificador);
    }

    public String getBaestado() {
        return estado;
    }
    
}
