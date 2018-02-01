<?php include 'head.php';
include 'Scripts/bdd.php';?>



<?php
$tableauEmail = array(); // One mail
$countEmail = 0;
$listEmail = '';
$plusOne = 0;


$pattern = '/\b[\w.-]+@[\w.-]+\.[A-Za-z]{2,6}\b/'; // Regex d'email
if (preg_match($pattern, $_POST['toEmail'])) {

    $expEmailPost = explode(" ", $_POST['toEmail']);
    //echo $expEmailPost[0]; // piece1
    //echo ' count : ' . count($expEmailPost);
    for ($i = 0; $i < count($expEmailPost); $i++) {
        array_push($tableauEmail, $expEmailPost[$i]); // met ds le tableau post toEmail
    }
    //print_r( $tableauEmail);
}


//echo $_FILES['doc']['error'];

if ($_FILES['doc']['name']) {
    $upload1 = upload('doc', 'Documents/', $_FILES['doc']['name'], array('xlsx'));


    require_once 'Classes/PHPExcel/IOFactory.php';

// Chargement du fichier Excel
    $objPHPExcel = PHPExcel_IOFactory::load('Documents/' . $_FILES['doc']['name']);

    /**
     * récupération de la première feuille du fichier Excel
     * @var PHPExcel_Worksheet $sheet
     */
    $count_sheet = $objPHPExcel->getSheetCount();
    //echo $count_sheet;
    for ($i=0; $i < $count_sheet; $i++) // parcours tous les Sheets
    {
        $sheet = $objPHPExcel->getSheet($i);


// On boucle sur les lignes
        foreach ($sheet->getRowIterator() as $row) {
            // On boucle sur les cellule de la ligne
            foreach ($row->getCellIterator() as $cell) {
                $cellule = $cell->getValue();
                $email = $cellule;

                $pattern = '/\b[\w.-]+@[\w.-]+\.[A-Za-z]{2,6}\b/'; // Regex d'email
                if (preg_match($pattern, $email)) {
                    array_push($tableauEmail, $email); // One mail
                    $email = NULL;
                }
            }
        }
    }


}
//print_r( $tableauEmail);
for ($i = 0; $i < count($tableauEmail); $i++) {
    $listEmail = $listEmail . ',' . $tableauEmail[$i];
}



if (count($tableauEmail)%2 == 1)
{

    $plusOne = 1;
}




?>
<div class="jumbotron">
    <h4>
        Adresses Emails trouvées : <a href="#" title="Voir les adresses"
                                      onclick="document.getElementById('tableau').className  = 'table-responsive visible ';"><?php echo count($tableauEmail) ?></a>
        <!--Affiche avec javascript la list quand on clique sur le nb  -->
    </h4>


    <div class="row marketing">
        <div class="col-md-6">


            <form method="post" action="sendMail.php" enctype="multipart/form-data">
                <input type="hidden" name="myEmail" value="<?php echo $_POST['myEmail'] ?>">
                <input type="hidden" name="toEmail" value="<?php echo $listEmail ?>">
                <input type="hidden" name="subject" value="<?php echo $_POST['subject'] ?>">
                <input type="hidden" name="body" value="<?php echo $_POST['body'] ?>">
                <input type="hidden" name="numbers" value="<?php echo $_POST['numbers'] ?>">
                <button type="submit" class="btn btn-md btn-success col-md-12">Envoyer via One Mail</button>
            </form>
        </div>
        <div class="col-md-6">
            <?php echo '<p><a class="btn btn-md btn-success col-md-12" href="mailto:' . $listEmail . '?subject=' . $_POST['subject'] . '&body=' . $_POST['body'] . '  " role="button">Envoyer via mon application</a></p>'; ?>
        </div>
    </div>
    <div id="tableau" class="table-responsive hidden">
        <div class="col-md-6">
            <table class="table table-hover ">
                <?php for ($i = 0; $i < count($tableauEmail) / 2; $i++) {
                    echo '<tr>
                <td>' . $tableauEmail[$i] . '</td>
            </tr>';
                    insertEmail($tableauEmail[$i], $bdd);
                }
                ?>
            </table>
        </div>


        <div class=" col-md-6">
            <table class="table table-hover ">
                <?php for ($i = (count($tableauEmail) / 2 + $plusOne); $i < count($tableauEmail); $i++) {
                    echo '<tr>
                <td>' . $tableauEmail[$i] . '</td>
            </tr>';

                }
                ?>
            </table>
        </div>
    </div>
</div>


<?php include 'foot.php'; ?>



<?php
function insertEmail($email, $bdd) // insert l'email ds la bdd ou update le nb de mails envoyer a cette adresse
{
    $SelectOneMail = $bdd->prepare('SELECT * FROM OneMail WHERE email = ?');
    $SelectOneMail->execute(array($email));




    $oneMail = $SelectOneMail->fetch();
    if ($oneMail)
    {
        $updateNbSent = $bdd->prepare('UPDATE OneMail SET nbSent = :nbSent WHERE id = :id');
        $updateNbSent->execute(array(
            'nbSent' => $oneMail['nbSent'] + 1,
            'id' => $oneMail['id']
        ));
        $updateNbSent->closeCursor();
    }
    else
    {
        $InsertEmail = $bdd->prepare('INSERT INTO OneMail(email, nbSent) VALUES(:email, :nbSent)');
        $InsertEmail->execute(array(
            'email' => $email,
            'nbSent' => 1

        ));
        $InsertEmail->closeCursor();

    }


    $SelectOneMail->closeCursor();
}

?>










<?php
function upload($icone, $destination, $name, $extensions = FALSE)
{
    if ($_FILES[$icone]['error'] > 0) $erreur = "Erreur lors du transfert";


    $nom = $name;


    $ext = substr(strrchr($_FILES[$icone]['name'], '.'), 1);
    if ($extensions !== FALSE AND !in_array($ext, $extensions)) {
        echo 'Canceled ! Only ';
        echo print_r($extensions);
        echo ' are allowed !';
        die();
        return FALSE;
    }

    $resultat = move_uploaded_file($_FILES[$icone]['tmp_name'], $destination . $nom);
    //if ($resultat) echo "Changement d'image reussi<br />";
}


?>
