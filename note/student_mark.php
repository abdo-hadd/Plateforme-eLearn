<div class="" style="margin-top: -40px;" >
<?php include('../../Model/function.php');?>
      <ul class="collection with-header">
        <li class="collection-header"> 
      <?php echo "
        <h2 class='display-4'> $CURRENT_USER->firstN  $CURRENT_USER->lastN </h2>
        <h2 class='display-5'>n° Apogée  :  $CURRENT_USER->CODE </h2>
        <h3 class='display-6'># $CURRENT_USER->filiere </h3>
      </li>";

      foreach (getModeuleNoteStudent($CURRENT_USER->CODE) as $key => $value) {
          list($col, $ico) = $value['note']>10 ?array("success",""):array("danger","_bad");;
        echo "<li class='collection-item'>
                  <div class='row'>
                    <div class='col-8 text-primary'>".$value['nomM']."</div>
                    <div class='col-sm-4 text-$col '>".$value['note']."
                      <i class='material-icons Tiny'>mood$ico</i>
                    </div> 
                  </div>
              </li>";
      }
    ?> 
      </ul>
            
  <div class="fixed-action-btn" title="download report card">
    <a class="btn-floating btn-large red" href='Model/pdf?kind=RN&arg=<?php echo $CURRENT_USER->CODE ?>' target='_blank'>
      <i class="large material-icons">file_download</i>
    </a>
  </div>
</div>