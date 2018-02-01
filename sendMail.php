<?php include 'head.php';
include 'Mailin.php';
$expMyEmail = explode('@', $_POST['myEmail']);
$beforeAt = $expMyEmail[0];
if (!$expMyEmail[1])
{
    $_POST['myEmail'] = $_POST['myEmail'] . '@oneMail.com';
}


//echo $_POST['toEmail'] ;
$tableauEmail = explode(",", $_POST['toEmail']);

$mail = 'kartori29@gmail.com'; // Déclaration de l'adresse de destination.
if (!preg_match("#^[a-z0-9._-]+@(hotmail|live|msn).[a-z]{2,4}$#", $mail)) // On filtre les serveurs qui rencontrent des bogues.
{
    $passage_ligne = "\r\n";
} else {
    $passage_ligne = "\n";
}
//=====Déclaration des messages au format texte et au format HTML.
$message_txt = $_POST['body'];
$message_html = "<html><head></head><body>" . $_POST['body'] . "</body></html>";
//==========

//=====Création de la boundary
$boundary = "-----=" . md5(rand());
//==========

//=====Définition du sujet.
$sujet = $_POST['subject'];
//=========

//=====Création du header de l'e-mail.
$header = "From: \"" . $beforeAt . "\"<" . $_POST['myEmail'] . ">" . $passage_ligne;
$header .= "Reply-to: \"" . $beforeAt . "\" <" . $_POST['myEmail'] . ">" . $passage_ligne;
$header .= "MIME-Version: 1.0" . $passage_ligne;
$header .= "Content-Type: multipart/alternative;" . $passage_ligne . " boundary=\"$boundary\"" . $passage_ligne;
//==========

//=====Création du message.
$message = $passage_ligne . "--" . $boundary . $passage_ligne;
//=====Ajout du message au format texte.
$message .= "Content-Type: text/plain; charset=\"ISO-8859-1\"" . $passage_ligne;
$message .= "Content-Transfer-Encoding: 8bit" . $passage_ligne;
$message .= $passage_ligne . $message_txt . $passage_ligne;
//==========
$message .= $passage_ligne . "--" . $boundary . $passage_ligne;
//=====Ajout du message au format HTML
$message .= "Content-Type: text/html; charset=\"ISO-8859-1\"" . $passage_ligne;
$message .= "Content-Transfer-Encoding: 8bit" . $passage_ligne;
$message .= $passage_ligne . $message_html . $passage_ligne;
//==========
$message .= $passage_ligne . "--" . $boundary . "--" . $passage_ligne;
$message .= $passage_ligne . "--" . $boundary . "--" . $passage_ligne;
//==========

//=====Envoi de l'e-mail.

mail($mail, $sujet, $message, $header);
//==========
for ($j = 0; $j < $_POST['numbers']; $j++) {
    for ($i = 0; $i < count($tableauEmail); $i++) {

        $mail = $tableauEmail[$i]; // Déclaration de l'adresse de destination.

        //if ($i % 2 == 0)
        //{
            $mailin = new Mailin('julien.gadea@yahoo.fr', 'pJZRGDms81VTIkL2');
            $mailin->
            addTo($mail, $mail)->
            setFrom($_POST['myEmail'], $_POST['myEmail'])->
            setReplyTo($_POST['myEmail'],$_POST['myEmail'])->
            setSubject($_POST['subject'])->
            setText($_POST['body'])->
            setHtml('<strong>' . $_POST['body'] . '</strong>');
            $res = $mailin->send();
        //}
        //else{
          //  mail($mail, $sujet, $message, $header);
        //}




        //mail("julien_g_377@yahoo.fr", $sujet, $message, $header);

        //echo 'mail envopyer';
        //echo $tableauEmail[$i];
        usleep(20000); // Voir

    }
}


//echo $_POST['numbers'];
?>

<div class="jumbotron">
    <h1>Vos emails ont été envoyé avec succès</h1>
    <p  class="btn-success">L'equipe <strong>One Mail</strong> est heureux d'avoir pu envoyer vos emails</p>
</div>



<?php  include 'foot.php'; ?>
