<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"  href="./operations.css">
</head>
<body>
	<div>
		<form class="container">
			<h2>Opérations éffectuées</h2><br><br>
			<select name="" class="cat">
				<option value="">Tout</option>
				<option value="">Revenu</option>
				<option value="">Dépense</option>
			</select>
			<select name="" class="cat" >
				<option value="">Quotidien</option>
				<option value="">Mensuel</option>
			</select><br><br>
			
			<select class="cat">
				<option>Janvier</option>
				<option>Février</option>
				<option>Mars</option>
				<option>Avril</option>
				<option>Mai</option>
				<option>Juin</option>
				<option>Juillet</option>
				<option>Août</option>
				<option>Septembre</option>
				<option>Octobre</option>
				<option>Novembre</option>
				<option>Décembre</option>
				<option></option>
			</select>
			
			<select class="cat">
				<option>2020</option>
				<option>2021</option>
				<option>2022</option>
				<option>2023</option>
				<option>2024</option>
				<option>2025</option>
				<option>2026</option>
				<option>2027</option>
				<option>2028</option>
				<option>2029</option>
				<option>2030</option>
				<option>2031</option>
				<option>2032</option>
				<option>2033</option>
				<option>2034</option>
				<option>2035</option>
			</select><br/></br>
			<!-- <input type="date" name="date" class="date"><input type="time" name="time"><br><br><br> --><br><br>
			<table>
				<tr>
					<td rowspan="3">   
						<img src="images/stat.jpg" alt="" height="80px" width="80px"/>               
					</td>
					<td>Revenu Total: <input type="text" name="designation" value=""></td>
				</tr>
					<tr>
						<td>Dépense Totale: <input type="text" name="designation" value=""></td>
				</tr>
				<tr>
					<td>Reste:    <input type="text" name="designation" value=""></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>