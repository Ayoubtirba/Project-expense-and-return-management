<%@page import="java.io.Writer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GESTION DES DEPENSES</title>
<link rel="stylesheet" type="text/css" href="accueil.css">

</head>

<body >

        <section >
            <h1 align="center">GESTION DE DEPENSES</h1>
            
            <div class="revenu container">
                    <div id="entete2" class="formulaire">
                  
                            <button type="button" class="bouton" onclick="ajouter revenu()"><a href="ajout_revenus.jsp?id_user=<%=session.getAttribute("id")%>"><h2>Ajouter revenu</h2></a></button>
                    </div>
            </div>
            <div class="revenu1 text-align:center;">
                    <div id="entete1" class="formulaire">
                        <button type="button" class="bouton" onclick="ajouter dépense()"><a href="ajout_depenses.jsp?id_user=<%=session.getAttribute("id")%>"><h2>Ajouter dépense</h2></a></button>
                    
                    </div>
            </div>
           <!--  <div class="revenu2">
                     <div id="entete3" class="formulaire">
                        <button type="button" class="bouton" onclick="Opération()"><h2>Opérations</h2></button>
                    </div>
            </div>
                     -->
            <!-- <div class="revenu3">
                    <div id="entete3" class="formulaire">
                            <button type="button" class="bouton" onclick="Rapport par date()"><h2>Rapport par date</h2></button>
                    </div>
            </div>  -->
            <div class="total" >
                <!--<div> 
                    <label><h3>Revenu:</h3></label><input type="number"></input>
                </div>  
                <div>
                    <label><h3>Dépense:</h3></label><input type="number"></input>
                </div>
                <div>
                    <input type="button" value="Solde actuel"></input> 
                    
               <%--   <%  HttpSession session = request.getSession();%> --%>
                </div>-->
                <input type="hidden" value="<%=session.getAttribute("id")%>">
                <table>
                    <tr>
                    <% 		ResultSet resultSet = null;
		 PreparedStatement preparedStatement = null;
		 String DB_URL = "jdbc:mysql://localhost/gestiondep?useTimezone=true&serverTimezone=GMT";

		   //  Database credentials
		String USER = "root";
		   String PASS = "";
		   try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
	     String query = "SELECT `depense` FROM `revenu` WHERE `id_pers`='"+session.getAttribute("id")+"'";
	     preparedStatement = conn.prepareStatement(query);
	     resultSet = preparedStatement.executeQuery();
	     double r =0;
	     while(resultSet.next()) {
	    	float rs=resultSet.getFloat(1);
	    	
	    	
	    	 r+=rs;
	    	
	     }%>
	  
                        <td><b>Révenu:</b></td>
                        <td><input name="Révenu" type="text" size="25" value="<%=r %>" ></td>
                    </tr>

	<%    		
	
	   
	   try{
	
    String q = "SELECT `depense` FROM `depense` WHERE `id_pers`='"+session.getAttribute("id")+"'";
    preparedStatement = conn.prepareStatement(q);
    resultSet = preparedStatement.executeQuery();
    double f =0;
    while(resultSet.next()) {
   	float rs=resultSet.getFloat(1);
   	
   	
   	 f+=rs;
   	
    }%>
                    <tr>
                        <td><b>Dépense:</b></td>
                        <td><input name="Dépense" type="text" size="25" value="<%=f%>"></td>
                    </tr>
                    
                    <tr>
                        <td><b>Solde Actuel:</b></td>
                        <td><input name="Solde Actuel" type="text" size="25" value="<%=r-f %>"></td>
                    </tr>
                </table>
                 
                
             </div>  
        </section>   
                               <% 
	   
	      
	     // System.out.println("Connecting to database...");
		   }catch(SQLException se){
			      //Handle errors for JDBC
			      se.printStackTrace();
			   }catch(Exception e){
			      //Handle errors for Class.forName
			      e.printStackTrace();
			   
	}%>
         <% 
	    
	      
	     // System.out.println("Connecting to database...");
		   }catch(SQLException se){
			      //Handle errors for JDBC
			      se.printStackTrace();
			   }catch(Exception e){
			      //Handle errors for Class.forName
			      e.printStackTrace();
			   
	}%>
	 <button type="button" class="bouton" ><a href="deco.jsp"><h2>deco</h2></a></button>
           
</body>
</html>