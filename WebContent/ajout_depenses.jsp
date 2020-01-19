<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  href="./ajout_depenses.css">
</head>
<body>
	<div>
		<form class="container" action="Servletdepence" method="get">
			<h2>Ajouter une Dépense</h2><br><br>
			<input type="hidden" name="iduser" value="<%=request.getParameter("id_user")%>">
			<strong>Montant:</strong><br><input type="integerpositive" name="depense" required class="depense" ><br><br>
			<strong>Catégorie:</strong><br>
			<select name="cat" class="cat" required>
				<option></option>
				<option value="">choisir une catégorie</option>
				<option value="restaurant">restaurant</option>
				<option value="transport">transport</option>
				<option value="facture">facture</option>
				<option value="boutique">boutique</option>
				<option value="autre">autre</option>
			</select><br><br>
			<strong>Description:</strong><br>
			<textarea  name="desc" rows="2" cols="40" required>
				
			</textarea><br><br>
			<!-- <time class="meta" name="dat"  datetime="DD/MM/YYYY">13/07/2016 00:00:00</time> -->
		<!-- <input type="date" name="dat" ><br><br><br> -->
			
			<button type="submit" class="btn-ok">Sauvegarder</button>
			
	
		</form>
	</div>
</body>
</html>