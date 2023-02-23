
package com.mycompany.mensajes;
import static com.
import java.sql.*;
import java.util.*;
public class MensajeDao {
        
        private Connection connection=null;
        private PreparedStatement ps= null;
        private ResultSet rs=null;
        private Mensaje mensaje;
        
    public List<Mensaje> seleccionar(){
        String sql = "SELECT * FROM mensajes";
        List<Mensaje> mensajes = new ArrayList<>();
        
        this.conn = 
            
    }
                
        }
        
}
