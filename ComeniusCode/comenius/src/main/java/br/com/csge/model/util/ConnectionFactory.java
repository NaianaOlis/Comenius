package br.com.csge.model.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionFactory {

    private static Connection conexao = null;

    public static Connection getConnection() {
    	if (conexao != null)
            return conexao;
        else {
            try {
                Properties prop = new Properties();            
                InputStream inputStream = ConnectionFactory.class.getClassLoader().getResourceAsStream("/br/com/csge/model/util/db.properties");
                prop.load(inputStream);
                
                String driver = prop.getProperty("driver");         
                String url = prop.getProperty("url");
                String user = prop.getProperty("user");
                String pass = prop.getProperty("senha");
                
                Class.forName(driver);
                conexao = DriverManager.getConnection(url, user, pass);
                
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return conexao;
           
        }

    }
}