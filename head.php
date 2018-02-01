<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Trouver vos adresses Email dans un document Excel et envoyez leurs un mail en One Mail </title>



    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="One Mail s'occupe de récupére toutes les adresses email dans vos document (sheet) Excel, afin que vous puissiez envoyer un mail à toutes ces adresses sois depuis votre client mail soit via le site  ">
    <meta name="author" content="GADEA Julien">
    <meta name="keywords" content="One mail envoie mail excel solution mailing " />
    <link rel="icon" href="../../favicon.ico">

    <title>One mail</title>

    <!-- Bootstrap core CSS -->
    <link href="Templates/bootstrap.css" rel="stylesheet" type="text/css">

    <link href="Templates/bootstrap.js" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="Templates/jbotron.css" rel="stylesheet">
    <link href="Templates/style.css" rel="stylesheet">

    <style></style>
</head>

<body>
<?php include_once("Scripts/analyticstracking.php") ?>
<?php
$page=$_SERVER['SCRIPT_FILENAME'];
$page=basename($page,".php");
?>



<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation" <?php if ($page == 'index') echo 'class="active"'; ?>><a href="index.php" title="Acceuil" >Home</a></li>
                <li role="presentation" <?php if ($page == 'formEmail' || $page == 'findEmail' || $page == 'sendMail') echo 'class="active"'; ?>><a href="formEmail.php" title="Email" rel="nofollow">Envoyer un Mail</a></li>
                <li role="presentation" <?php if ($page == 'about') echo 'class="active"'; ?>><a href="about.php" title="A propos">A propos</a></li>
                <li role="presentation" <?php if ($page == 'contact') echo 'class="active"'; ?>><a href="contact.php" title="Contact">Contact</a></li>
            </ul>
        </nav>
        <h3 class="text-muted">One Mail</h3>
    </div>

