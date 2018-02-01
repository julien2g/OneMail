<?php include 'head.php'; ?>







<div class="col-md-offset-4 col-md-4">
    <form method="post" action="findEmail.php" enctype="multipart/form-data">
        <div class="form-group ">
            <label for="myEmail">Mon adresse</label>
            <p class="help-block">Vous pouvez utiliser n'importe quel nom.</p>
            <input type="text" class="form-control" id="myEmail" placeholder="Mon Email" name="myEmail">
        </div>
        <div class="form-group">
            <label for="toEmail">L'adresse des correspondants</label>
            <p class="help-block">Les adresses doivent etre separé par un espace.</p>
            <input type="text" class="form-control" id="toEmail" placeholder="L'Email des correspondant" name="toEmail">
        </div>
        <div class="form-group">
            <label for="inputFile">Trouver les adresses</label>
            <p class="help-block">Trouve toutes les adresses emails presentent dans le document</p>
            <input type="file" id="inputFile" name="doc">
        </div>
        <div class="form-group ">
            <label for="subject">Sujet</label>
            <input type="text" class="form-control" id="subject" placeholder="Sujet" name="subject">
        </div>
        <div class="form-group">
            <label for="body">Email</label>
            <textarea class="form-control" id="body" rows="9" name="body" placeholder="Ici votre Email"></textarea>
        </div>
        <div>
            <input type="hidden" class="form-control col-md-3" id="subject" value="1" name="numbers">
            <br>
            <button type="submit" class="btn btn-default  col-md-offset-3">Envoyer</button>

        </div>
        </form>
</div>

<?php include 'foot.php'; ?>