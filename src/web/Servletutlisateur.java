package web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servletutlisateur
 */
@WebServlet("/Servletutlisateur")
public class Servletutlisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servletutlisateur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 
		  String action=request.getParameter("action");
		  
		if(action.equals("inscription")) {
		// ajouter un user
		 String DB_URL = "jdbc:mysql://localhost/gestiondep?useTimezone=true&serverTimezone=GMT";

		   //  Database credentials
		String USER = "root";
		   String PASS = "";
		   try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
	      System.out.println("Connecting to database...");
	      String nom=request.getParameter("nompre");
			String email=request.getParameter("email");
			String mdp=request.getParameter("mdp");
			 Date date=Date.valueOf(request.getParameter("date"));
			 String sexe=request.getParameter("sexe");
		     PreparedStatement pstatement = null;

			 		
			 String queryString="INSERT INTO `utilistateur`(`nompre`, `email`, `mdp`, `date`, `sexe`) VALUES ('"+nom+"','"+email+"','"+mdp+"','"+date+"','"+sexe+"')";
			  pstatement = conn.prepareStatement(queryString);
			  pstatement.executeUpdate();
			  request.getRequestDispatcher("authentification.jsp").forward(request, response);
			 
		   }catch(SQLException se){
			      //Handle errors for JDBC
			      se.printStackTrace();
			   }catch(Exception e){
			      //Handle errors for Class.forName
			      e.printStackTrace();
			   }
		}
		else if(action.equals("connexion")) {
		
		   // authentification 
			 String dBRL = "jdbc:mysql://localhost/gestiondep?useTimezone=true&serverTimezone=GMT";
			String USER = "root";
			   String PASS = "";
			   try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		      Connection conn = DriverManager.getConnection(dBRL,USER,PASS);
		      System.out.println("Connecting to database...");
		      String nom=request.getParameter("nom");
				
				String mdp=request.getParameter("mdp");
				
			     PreparedStatement pstatement = null;
				 String queryString="SELECT id_pers,email,mdp FROM `utilistateur` WHERE `email`='"+nom+"'  and `mdp`='"+mdp+"'";
				  pstatement = conn.prepareStatement(queryString);
				 ResultSet rs= pstatement.executeQuery();
				 HttpSession session = request.getSession();
				 while (rs.next()) {
					 rs.getInt(1);
					 session.setAttribute("id", rs.getInt(1));
					 request.getRequestDispatcher("accueil.jsp").forward(request, response);
					 }
				 
			   }catch(SQLException se){
				      //Handle errors for JDBC
				      se.printStackTrace();
				   }catch(Exception e){
				      //Handle errors for Class.forName
				      e.printStackTrace();
				   }}
		   
		   
	}
	    

		


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
