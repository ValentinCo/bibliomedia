<?php
//Lance la bdd 'dbname=Nom de la bdd' 'root = nom utilisateur' 'admin= mdp'
try
{
$bdd = new PDO('mysql:host=localhost;dbname=mes_jeux;charset=utf8', 'root', 'admin');
}
catch (Exception $e)
{
    die('Erreur : ' . $e->getMessage());
}
$reponse = $bdd->query('SELECT * FROM possession');


?>

<table class="table table-striped">
    <thead>
    <tr>
        <th>Référence</th>
        <th>Titre</th>
        <th>Auteur</th>
        <th>Déscription</th>
        <th>Date</th>
        <th>Genre</th>
    </tr>
    </thead>


<?php
// while  ($donnees = $reponse->fetch()){
    // Partie "Boucle"
$limite = 5;
$compteur = 0;
while ($donnees = $reponse->fetch()) {
    if ($compteur >= $limite) {
        break;
    }
    // C'est là qu'on affiche les données  :)
    $compteur++;

?>


<td><?=$donnees['pos_oid']?> </td>
<td><a href='details.php'><?=$donnees['titre']?></a></td>
<td><?=$donnees['genre']?> </td>
<td><?=$donnees['description']?> </td>
<td><?=$donnees['annee']?> </td>
<td><?=$donnees['auteur']?> </td>
</tr>
</tbody>

</div>
<?php
}


$reponse->closeCursor();
?>