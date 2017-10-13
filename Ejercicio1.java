/*
 sergio garcia balsas
 */
package consultabd1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConsultaBD1 {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("org.postgresql.Driver");

        String url = "jdbc:postgresql://localhost:5432/ikea";
        String usuario = "postgres";
        String password = "cactus22";
        Connection con = DriverManager.getConnection(url, usuario, password);

        Statement statement = con.createStatement();

        String sentenciaSQL = "SELECT * FROM MUEBLES ORDER BY nombre";
        ResultSet rs = statement.executeQuery(sentenciaSQL);

        System.out.println("ID" + "\t" + "\t" + "Nombre" + "\t" + "\t"
                + "Precio" + "\t" + "\t"+ "Material"  + "\t" + "\t"+ "Unidades"  );
        System.out.println("--------------------------------------------------------------");

        while (rs.next()) {
            System.out.println(rs.getString(1) + "\t " + rs.getString(2) + "\t " 
            + rs.getString(3) + "\t " + "\t " + rs.getString(4)  + "\t " + "\t "
               + "\t "     + rs.getString(5)) ;
        }
        rs.close();
        con.close();
    }
}