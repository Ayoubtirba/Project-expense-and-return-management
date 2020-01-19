<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  href="./ajout_revenus.css">
</head>
<body>
	<div>
		<form class="container" action="servletRevenu" method="get">
			<h2>Ajouter un Revenu</h2><br><br>
			<input type="hidden" name="iduser" value="<%=request.getParameter("id_user")%>">
			<strong>Montant:</strong><br><input type="integerpositive" name="revenu" required class="revenu"><br><br>
			<strong>Catégorie:</strong><br>
			<select name="cat" class="cat" required>
				<option></option>
				<option value="">choisir une catégorie</option>
				<option value="restaurant">restaurant</option>
				<option value="transport">transport</option>
				<option value="facture">facture</option>
				<option value="boutique">boutique</option>
			</select><br><br>
			<strong>Description:</strong><br>
			<textarea name="desc" rows="2" cols="40" required>
				
			</textarea><br><br>
			
		
			
			<button type="submit" class="btn-ok"><a href="accueil.jsp">Sauvegarder</a></button>
			
	
		</form>
	</div>
</body>
</html>