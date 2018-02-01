<html lang="en">
<head>
    <meta charset="utf-8">
    <title>visible demo</title>

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>

<?php
echo 'bla' . $_POST['myEmail'];
/*
require('Mailin.php');
$mailin = new Mailin("https://api.sendinblue.com/v2.0","pJZRGDms81VTIkL2");






$data = array( "to" => array("kartori@yahoo.fr"=>"to whom!"),
    "from" => array("from@email.com", "from email!"),
    "subject" => "My subject",
    "html" => "This is the <h1>HTML</h1>"
);

var_dump($mailin->send_email($data));
*/
/*
 <form method="post" action="sendMail.php" enctype="multipart/form-data">
                <input type="hidden" name="myEmail" value="<?php echo $_POST['myEmail'] ?>">
                <input type="hidden" name="toEmail" value="<?php echo $listEmail ?>">
                <input type="hidden" name="subject" value="<?php echo $_POST['subject'] ?>">
                <input type="hidden" name="body" value="<?php echo $_POST['body'] ?>">
                <input type="hidden" name="numbers" value="<?php echo $_POST['numbers'] ?>">
                <button type="submit" class="btn btn-md btn-success col-md-12">Envoyer via One Mail</button>
            </form>


$mailin = new Mailin('julien.gadea@yahoo.fr', 'pJZRGDms81VTIkL2');
$mailin->
addTo('julien.gadea@yahoo.fr', 'Julien Gadea')->
setFrom('julien.gadea@yahoo.fr', 'Julien Gadea')->
setReplyTo('julien.gadea@yahoo.fr','Julien Gadea')->
setSubject('Entrer lobjet ici')->
	setText('Bonjour')->
	setHtml('<strong>Bonjour</strong>');
$res = $mailin->send();

  */

include 'Mailin.php';
$mailin = new Mailin('julien.gadea@yahoo.fr', 'pJZRGDms81VTIkL2');
$mailin->
addTo('julien.gadea@yahoo.fr', 'Julien Gadea')->
setFrom($_POST['myEmail'], $_POST['myEmail'])->
setReplyTo($_POST['myEmail'],$_POST['myEmail'])->
setSubject('Entrer lobjet ici')->
	setText($_POST['body'])->
	setHtml('<strong>' . $_POST['body'] . '</strong>');
$res = $mailin->send();
/**
Le message de succès sera renvoyé sous cette forme:
{'result' => true, 'message' => 'Email envoyé'}
*/

echo 'testt';
















# Include the SendinBlue library\
//require('Mailin.php');

# Instantiate the client\
//$mailin = new Mailin("https://api.sendinblue.com/v2.0","pJZRGDms81VTIkL2");
/*
# Define the campaign settings\
$data = array( "name"=>"Campaign sent via the API",
    "subject"=>"My subject",
    "from_name"=>"a@a.fr",
    "from_email"=>"julien.gadea@yahoo.fr",

# Content that will be sent\
    "html_content"=>"Congratulations ! You successfully sent this example campaign via the SendinBlue API.",

# Select the recipients\
    "listid"=> array(2,7),

# Schedule the sending in one hour\
    "scheduled_date"=>"2015-01-01 00:00:01"

);

# Make the call to the client\
var_dump($mailin->create_campaign($data));*/
?>


</body>
</html>