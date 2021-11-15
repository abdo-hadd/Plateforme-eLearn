<script src='View/note/behavior.js'></script>
<link rel="stylesheet" type="text/css" href="View/note/style.css">
<script src='Controller/Client/noteXHR.js'></script>
<div class="text-center" style="width: 100%;margin-left: -5%">
  <h2 style="color:green;"> Consultez ou téléchargez en ligne les PV</h2>
  <table class="table" style="width: 50%; margin-left: 25%">
    <thead>
      <tr>
        <th scope="col">Classe</th>
        <th scope="col">Telechargement</th>
      </tr>
    </thead>
    <tbody>
      <?php
        session_start();
        $CURRENT_USER = json_decode(json_encode($_SESSION["CURRENT_USER"]));
        include('../../Model/function.php');
        foreach (getClasseOfAdmin($CURRENT_USER->codeF) as $key => $value) {
            echo "<tr>";
            echo "<th>".strtoupper($value['codeC'])."</th>";
            echo "<th> <a href='Model/pdf?kind=PV&arg=".$value['codeC']."' target='_blank'>
            <img src='https://image.flaticon.com/icons/svg/138/138601.svg' width='35' height='35' title='".strtoupper($value['codeC'])."'></a></th>";
        }
      ?>
    </tbody>
  </table> 
</div >
