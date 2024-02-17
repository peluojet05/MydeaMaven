/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Diego
 */
public class Conexion {
    private Connection con;
    
    
    public Conexion(){
        
    }

    public Connection getCon() {
        return con;
    }

    public void setCon() {
      
        /*
        String usuario="hsavgamsorjzvm";
        String password="";
        String bd="d4m1so7j3mp964";
        String puerto="";
        String ip="ec2-54-211-177-159.compute-1.amazonaws.com";
        
        String cadena="";
        
        */
        
        
        
        try{
     String dbDriver = "org.postgresql.Driver";
     String dbURL = "jdbc:postgresql://ec2-54-211-177-159.compute-1.amazonaws.com/d4m1so7j3mp964";
                          
                // Database name to access
     String dbName = "d4m1so7j3mp964";
     String dbUsername = "hsavgamsorjzvm";
     String dbPassword = "bce4378d44cea77be27f2554e0d1e363c25e3d96d308d3d80c0e51e3d236884e";
     Class.forName(dbDriver).newInstance();
     con = DriverManager.getConnection(dbURL,dbUsername, dbPassword);
     
      } catch (Exception e ) {
            System.out.println("erore");
                System.err.println("Error"+e);
      }
    }
    
    public String Consulta(){
        String mensaje = null;
        try{
        Statement stmt=con.createStatement();
        String sql="Select * FROM prueba where pr_id=1;";
        
        
        ResultSet idq = stmt.executeQuery(sql);
        
        while(idq.next()){
            mensaje = idq.getString("pr_nombre");
            
        }
        
        } catch (Exception e ) {
                System.err.println("Error"+e);
        }
        return mensaje;
    }
}