package projet_java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connexion {

	public void connexion() {
		// TODO Auto-generated constructor stub
	  
		 String DB_URL = "jdbc:mysql://localhost/gestiondep?useTimezone=true&serverTimezone=GMT";

		   //  Database credentials
		String USER = "root";
		   String PASS = "";
		   try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
	      
	      System.out.println("Connecting to database...");
		   }catch(SQLException se){
			      //Handle errors for JDBC
			      se.printStackTrace();
			   }catch(Exception e){
			      //Handle errors for Class.forName
			      e.printStackTrace();
			   }
	}

}
