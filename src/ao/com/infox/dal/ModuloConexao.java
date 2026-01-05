/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ao.com.infox.dal;
import java.sql.*;
/**
 *
 * @author Nelson Salvador
 */
public class ModuloConexao {
    public static Connection conector() {
        
        Connection conexao = null;
        String url = "jdbc:mysql://localhost:3306/dbinfox?serverTimezone=UTC";
        String user = "root";
        String password = "root"; 

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            // A linha baixo serve de apoio para esclarecer o erro
            
            //System.out.println("Erro de conexão: " + e.getMessage());
            return null;
        }
    }
}
