/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;
import java.sql.*;

public class Conexion {
    public static Connection getConnection(){
        Connection cn = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3308/empresa", "root", "");
            
        } catch(Exception e){
            System.out.println(e);
        }
        return cn;
    }
}
