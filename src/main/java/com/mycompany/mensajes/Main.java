package com.mycompany.mensajes;

import java.sql.SQLException;
import java.util.*;

public class Main {

        public static void main(String[] args) throws SQLException, ClassNotFoundException {
                System.out.println("RRRRRRRRRRRRRRRRRRRRRR");
                //Conexion.getConexion();
                // System.out.println("conexion exitosa");
                MensajeDao mensajeDao = new MensajeDao();

                // Mensaje msm= new Mensaje("hola desde Main", "Main");
                //  int registro = mensajeDao.insertar(msm);
                //   System.out.println("se inserto "+registro+" registro");
                //Mensaje msm = new Mensaje(1,"mensaje desde java web", "java web");
                // int registro = mensajeDao.editar(msm);
                // System.out.println("se edito " + registro + " registro");
                Mensaje msm = new Mensaje(6);
                int registro = mensajeDao.eliminar(msm);
                System.out.println("se elimino " + registro + " registro");

                List<Mensaje> mensajes = mensajeDao.seleccionar();

                for (Mensaje mensaje : mensajes) {
                        System.out.println(mensaje);
                }

        }

}
