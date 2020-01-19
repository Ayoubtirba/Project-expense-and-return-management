package web;

import java.io.IOException;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servletdepence
 */
@WebServlet("/Servletdepence")
public class Servletdepence extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servletdepence() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 String DB_URL = "jdbc:mysql://localhost/gestiondep?useTimezone=true&serverTimezone=GMT";

		   //  Database credentials
		String USER = "root";
		   String PASS = "";
		   try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
	      System.out.println("Connecting to database...");
	      String dep=request.getParameter("depense");
			String cat=request.getParameter("cat");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");
			 String DateToStoreInDataBase= sdf.format(new Date());
			Timestamp date= Timestamp.valueOf(DateToStoreInDataBase);
		     String desc=request.getParameter("desc");
		     int iduser=Integer.parseInt(request.getParameter("iduser"));
		     PreparedStatement pstatement = null;
					 String queryString="INSERT INTO `depense`( `depense`, `cat`, `desc`, `date`,id_pers) VALUES ('"+dep+"','"+cat+"','"+desc+"','"+date+"','"+iduser+"')";
					  pstatement = conn.prepareStatement(queryString);
					  pstatement.executeUpdate();
					  response.sendRedirect("accueil.jsp");
		   }catch(SQLException se){
			      //Handle errors for JDBC
			      se.printStackTrace();
			   }catch(Exception e){
			      //Handle errors for Class.forName
			      e.printStackTrace();
			   }
		
	     

		
	}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
