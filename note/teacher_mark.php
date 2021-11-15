<script src='View/note/behavior.js'></script>
<link rel="stylesheet" type="text/css" href="View/note/style.css">
<script src='Controller/Client/noteXHR.js'></script>
<div class="text-center" style="width: 110%;margin-left: -5%">
  <nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <?php
      include('../../Model/function.php');
      foreach (getModeulFiliereOfProf($CURRENT_USER->CODE) as $key => $value) {
          echo "<a class='nav-item nav-link module' id='nav-home-tab' title='".$value['nomM']."' data-toggle='tab'  role='tab' aria-controls='nav-home'  name='".$value['codeM']."'>
            ".$value['nomM']." (".$value['codeC'].")
          </a>";
      }
    ?>
  </div>
</nav>
  <table class="table table-hover "  style=" box-shadow: 0 2px 2px 0 rgba(0, 0, 0, .14), 0 3px 1px -2px rgba(0, 0, 0, .2), 0 1px 5px 0 rgba(0, 0, 0, .12)">
  <thead class="thead"  >
    <tr>
      <th scope="col">#Apoge</th>
      <th scope="col">Nom Prenom</th>
      <th scope="col">Note</th>
      <th scope="col"><button type="button" id='saveAll' class="btn btn-outline-info" style="width: 100%;">Save all</button></th>
    </tr>
    <tr><th colspan="4">  
      <form class="">
          <div class="input-field row s12">
            <div class="col-1">
              <i class="material-icons prefix">search</i>
            </div>
            <div class="col-11">  
              <textarea id="myInput" class="materialize-textarea"></textarea>
            </div>
        </div>
      </form>
    </th></tr>
  </thead>
  <tbody id="items" >
  </tbody>
</table>
  <br>
</div >