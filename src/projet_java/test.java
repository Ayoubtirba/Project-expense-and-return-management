package projet_java;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ResultSet resultSet = null;
		 PreparedStatement preparedStatement = null;
		 String DB_URL = "jdbc:mysql://localhost/gestiondep?useTimezone=true&serverTimezone=GMT";

		   //  Database credentials
		String USER = "root";
		   String PASS = "";
		   try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
	     String query = "SELECT `depense` FROM `revenu` WHERE `id_pers`=?";
	     preparedStatement = conn.prepareStatement(query);
	     resultSet = preparedStatement.executeQuery();
	     double r =0;
	     while(resultSet.next()) {
	    	float rs=resultSet.getFloat(1);
	    	 System.out.println(rs);
	    	
	    	 r+=rs;
	    	
	     }
	     System.out.println(r);
	      
	     // System.out.println("Connecting to database...");
		   }catch(SQLException se){
			      //Handle errors for JDBC
			      se.printStackTrace();
			   }catch(Exception e){
			      //Handle errors for Class.forName
			      e.printStackTrace();
			   
	}
	}
}
