
package br.com.webexplorer.dal;

import java.sql.DriverManager;

/**
 *
 * @author Erick
 */
public class Connection {
     
    public static Connection conector(){
        java.sql.Connection conexao = null;
        String drive = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/---";
        String user = "root";
        String password= " ";
        
        try {
            Class.forName(drive);
            conexao = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            
        }
        return null;
    } 
}
