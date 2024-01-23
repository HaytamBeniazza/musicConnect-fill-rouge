package databaseConfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionInstance {
	
	private static Connection connection  = null ; 
	private ConnectionInstance()  {
		 try {
	        	Class.forName("com.mysql.jdbc.Driver");
	        } catch (ClassNotFoundException e) {
	        }

	        try {
	            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodDonnation","root","");
	            System.out.println("Connexion OK");
	        } catch (SQLException e) {
	            e.printStackTrace() ; 
	        }
	}
	
	public static Connection getConnection() {
		if(connection == null) {
			new ConnectionInstance() ; 
			
		}
		return connection ; 
	}


}
