
<link rel="stylesheet" type="text/css" href="View/profile/style.css">
<script type="text/javascript" src="View/profile/behavior.js"></script>
<?php
session_start();
$CURRENT_USER = json_decode(json_encode($_SESSION["CURRENT_USER"]));
?>
<style type="text/css">
  #uploadProfilePhoto {
  display: none;
}
</style>
<div class="card" style="margin-top: -50px;">
  	<label for="uploadProfilePhoto">
      <img class="center" src="<?php echo $CURRENT_USER->thumbProfile ?>" alt="photo" width="200" height='250' style="margin-top: 5px;" title='change profile photo' >
    </label>
  	<h1 class="title"><?php echo $CURRENT_USER->lastN . " " .$CURRENT_USER->firstN ?></h1>
  <form method="post" enctype="upload" style="width: 50%; margin-left: 25%; margin-bottom: 0px;">
    <div class="input-group mb-3">
      <button class="btn btn-outline-secondary" type="submit" id="inputGroupFileAddon03" style="border-style: none;" title="ok" ><i class="tiny material-icons">check</i></button>
      <input type="file" name="uploadedfile" id="uploadProfilePhoto" accept="image/*">
    </div>
  </form>
  	<div class="body">
	  	<h5 title="Fulle name">	<i class="tiny material-icons">account_circle</i>  <?php echo $CURRENT_USER->userName ?> 	</h5>
	  	<h5 title="Apogee">	<i class="tiny material-icons">perm_identity</i>  <?php echo $CURRENT_USER->CODE ?> 	</h5>
	  	<h5 title="Email">	<i class="tiny material-icons">email</i> <?php echo $CURRENT_USER->email ?> 		</h5>
	  	<h6 title="Tele">	<i class="tiny material-icons">phone</i> <?php echo $CURRENT_USER->tel."</br>";?>
	  	<h6 title="Filiere">	<i class="tiny material-icons">domain</i> <?php echo $CURRENT_USER->filiere?>
	  	<h6 title="Type">	<i class="tiny material-icons">book</i> <?php  if($CURRENT_USER->userType == 'Stud') echo "Etudiant(e)"; ?> </h6>
  	</div>
</div>