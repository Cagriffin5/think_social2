<?php 
//check for a logged in user
$logged_in_user = check_login();
 ?>
<!DOCTYPE html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Think Social</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
</head>
<body>
<script src="js/background.js" type="text/javascript"></script>
<script src="js/menu.js" type="text/javascript"></script>
<div id="gradient">
 <div class="topbg">
 <header class="flex container">
      <h1><a href="index.php">.Think Social</a></h1>
      <nav class="topnav">
        <a href="javascript:;" class="menu"><i class="fa-solid fa-bars"></i></a>
        <ul class="global flex">
          <li class="nportfolio"><a href="login.php">Log In</a></li>
          <li class="nservices"><a href="register.php">Register</a></li>
          <li class="nstaff"><a href=""></a></li>
          <li class="narticles"><a href=""></a></li>
          <li class="ncontact"><a href=""></a></li>
        </ul>
        <form action="search.php" method="get" class="searchform">
						<input type="search" name="phrase" placeholder="Search">
						<input type="submit" value="search">
					</form>
      </nav>
    </header>

