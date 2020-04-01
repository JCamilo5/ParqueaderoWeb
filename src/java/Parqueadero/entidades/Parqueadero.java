/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Parqueadero.entidades;

import Parqueadero.servicios.*;
import com.google.gson.Gson;
import java.util.ArrayList;

/**
 *
 * @author JuanCamilo
 */
public class Parqueadero {
    private IserviciosParqueadero servicios;
    
    public Parqueadero(){
        servicios = new ServicioServidor();
    }
    public ArrayList<BahiaBD> obtenerBahias(){
        String array = servicios.obtenerTodas();
        ArrayList<BahiaBD> bahias = deserializarMisBahias(array);
        return bahias;
    }
     private ArrayList<BahiaBD> deserializarMisBahias(String prmArrayJson) {
        BahiaBD[] misBahias = new Gson().fromJson(prmArrayJson, BahiaBD[].class);
        ArrayList<BahiaBD> listBahias = new ArrayList<>();
        for (int i = 0; i < misBahias.length; i++) {
            BahiaBD b = misBahias[i];
            listBahias.add(b);
        }
        return listBahias;
    }
}
