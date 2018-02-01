<?php include 'head.php'; ?>

    <div class="jumbotron">
        <h1>Des idées, Des suggestions, Des remarques ? </h1>
        <p class="lead">Dites nous tout ce qui vous passe par la tête. Notre équipe se chargera de vous repondre dans les plus bref delai.
           </p>
    </div>



    <div class="col-md-offset-4 col-md-4">
        <form method="post" action="findEmail.php" >
            <div class="form-group ">
                <label for="myEmail">Mon adresse</label>
                <p class="help-block">Nous vous repondrons sur cette adresse</p>
                <input type="text" class="form-control" id="myEmail" placeholder="Mon Email" name="myEmail">
            </div>
            <div class="form-group ">
                <label for="subject">Sujet</label>
                <input type="text" class="form-control" id="subject" placeholder="Sujet" name="subject">
            </div>
            <div class="form-group">
                <label for="body">Email</label>
                <textarea class="form-control" id="body" rows="9" name="body" placeholder="Votre texte ici ..."></textarea>
            </div>
            <div>
                <button type="submit" class="btn btn-default  col-md-offset-3">Envoyer</button>
            </div>
        </form>
    </div>




<?php include 'foot.php'; ?>

