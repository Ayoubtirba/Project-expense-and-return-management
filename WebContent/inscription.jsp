<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INSCRIPTION</title>
<link rel="stylesheet" href="./inscription.css">
</head>
<body>
	
	<form class="container">
		<h1>INSCRIPTION</h1>
		<table class="txt" >
			<tr>
				<td >
					NOM:
				</td>
				<td>
					<input type="text" placeholder="NOM" name="nom" required>
				</td>
			</tr>
			<tr>
				<td>
					PRENOM(S):
				</td>
				<td>
					<input type="text" placeholder="PRENOM(S)" name="prenom" required>
				</td>
			</tr>
			<tr>
				<td>
					EMAIL:
				</td>
				<td>
					<input type="email" placeholder="EMAIL" name="email" required>
				</td>
			</tr>
			<tr>
				<td>
					MOT DE PASSE:
				</td>
				<td>
					<input type="password" placeholder="MOT DE PASSE" name="pwd" required>
				</td>
			</tr>
			<tr>
				<td>
					DATE DE NAISSANCE:
				</td>
				<td>
					<input type="date" placeholder="DATE DE NAISSANCE" name="date" required>
				</td>
			</tr>
			<tr>
				<td>
					GENRE:
				</td>
				<td>
					<input type="radio"  name="GENRE" required>MASCULIN
					<input type="radio"  name="GENRE" required>FEMININ
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="INSCRIPTION" name="sbm"  class="btn">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>