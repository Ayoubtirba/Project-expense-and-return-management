<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>AUTHENTIFICATION</title>

<link rel="stylesheet"  href="./authentification.css">
</head>
<body>
        
    
    <div class="accueil">
    	<section> 
    	<nav>
    		<p class="p">bienvenue dans ton apli</p>
    	</nav>
		<div class="formulaire">
			<div class="bouton-form">
				<div id="boutonid"></div>
				<button type="button" class="bouton" onclick="connexion()">Authentification</button>
				<button type="button" class="bouton" onclick="inscription()">Inscription</button>
			</div>
				
			<div class="icon-resosocio">
				<img src="./images/fb.png">
				<img src="./images/tw.png">
				<img src="./images/gp.png">
			</div>
			<form id="connexion" class="entre-form"  action="Servletutlisateur" method="get" >
				<input class="entre-elt" type="text" name="nom" placeholder="Entrez votre Email" required="  Entrez votre Mot de passe"><br><br>
				<input class="entre-elt" type="password" name="mdp" id="mdp" placeholder="Entrez votre Mot de passe" required="  Entrez votre mot de passe"><br><br><br><br>
				<input type="hidden" name="action" value="connexion">
				<button type="submit" class="btn-ok" name="inscriptionOK"> <a href="accueil.jsp">Connexion</a> </button>
			</form>
			<form id="inscription" class="entre-form" action="Servletutlisateur" method="get" >
				<input class="entre-elt" type="text" name="nompre" placeholder=" Nom et prenom" required="   Nom et prenom"><br><br>
				<input class="entre-elt" type="email" name="email" placeholder="Adress Email" required="Adress email"><br><br>
				<input class="entre-elt" type="password" name="mdp" placeholder="Mot de passe" required="  Mot de passe"><br><br>
				<input class="entre-elt" type="date" name="date" placeholder="Date de naissance" required="Date de naissance"><br><br>
				<label>Sexe:</label>
				<label>Masculin</label><input type="radio" name="sexe" value="M"/>
				<label>Féminin</label><input type="radio" name="sexe" value="F"/><br><br><br>
				<input type="hidden" name="action" value="inscription">
				<button type="submit"   class="btn-ok" > <a href="authentification.jsp"> Inscription </a> </button>
			</form>
		</div>
		</section>
		
		
	</div>

	<script type="text/javascript">
		
		var x = document.getElementById("connexion");
		var y = document.getElementById("inscription");
		var z = document.getElementById("boutonid");

		function connexion(){
				x.style.left ="50px";
				y.style.left ="450px";
				z.style.left ="0";
		}
		function inscription(){
				x.style.left ="-400px";
				y.style.left ="50px";
				z.style.left ="110px";
		}
	</script>
</body>
</html>