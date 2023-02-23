
package com.mycompany.mensajes;

import java.sql.SQLException;


public class Main {
        
        public static void main(String[] args) throws SQLException, ClassNotFoundException {
                
                Conexion.getConexion();
                System.out.println("conexion exitosa");
        }
        
        
}
