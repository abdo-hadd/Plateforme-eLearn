<script type="text/javascript" src="View/students/behavior.js"></script>
<link rel="stylesheet" type="text/css" href="View/students/style.css">
<form class="col s12">
  <div class="row">
    <div class="input-field col s6">
      <i class="material-icons prefix">search</i>
      <textarea id="myInput" class="materialize-textarea"></textarea>
      <label for="myInput">Search</label>
    </div>
  </div>
</form>
<div class="card-columns" id="student-list">
  <?php
  session_start();
  $CURRENT_USER = json_decode(json_encode($_SESSION["CURRENT_USER"]));
    include('../../Model/function.php');
    if($CURRENT_USER->userType==='Prof')
      {
        foreach (getStudentOfProfessor($CURRENT_USER->CODE) as $key => $value) {
         echo "<div class='card '>
             <div class='row'>
               <div class='col-3' style='margin: auto;margin-left: 2%;'>
                 <img src='media/anonyme.svg' width='70' width='70' style='border-radius: 50%;'>
               </div>
               <div class='col'>
                 <div class='card-body'>
                   <h5 class='card-title'>".$value['CNE']."</h5>
                   <h5 class='card-text'>".$value['fullName']."</h5>
                   <p class='card-text'><small class='text-muted'>".$value['nomF']."</small></p>
                 </div>
               </div>
             </div>
           </div>";
        }
      }
      else if($CURRENT_USER->userType==='Admin'){
          foreach (getStudentOfAdministrator($CURRENT_USER->CODE) as $key => $value) {
         echo "<div class='card '>
             <div class='row'>
               <div class='col-3' style='margin: auto;margin-left: 2%;'>
                 <img src='media/anonyme.svg' width='70' width='70' style='border-radius: 50%;'>
               </div>
               <div class='col'>
                 <div class='card-body'>
                   <h5 class='card-title'>".$value['CNE']."</h5>
                   <h5 class='card-text'>".$value['fullName']."</h5>
                 </div>
               </div>
             </div>
           </div>";
        }
      }
  ?>
</div>