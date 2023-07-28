/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.sql.*;
import modelo.Interesado;
import static conexion.Conexion.getConnection;

public class DAOInteresado {
    
    public static int guardar(Interesado it){
        int estado = 0;
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO interesados(nombresApellidos, empresa, web, cargo, email, telefono, leads, mensaje) values (?,?,?,?,?,?,?,?) ");
            ps.setString(1, it.getNombresApellidos());
            ps.setString(2, it.getEmpresa());
            ps.setString(3, it.getWeb());
            ps.setString(4, it.getCargo());
            ps.setString(5, it.getEmail());
            ps.setString(6, it.getTelefono());
            ps.setString(7, it.getLeads());
            ps.setString(8, it.getMensaje());
            
            estado = ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
        }
        return estado;
    }
}
