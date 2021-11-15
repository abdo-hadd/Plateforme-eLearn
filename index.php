<?php 
  define("_PATH", "http://".$_SERVER['HTTP_HOST']);   
  session_start();    
  $check = isset($_SESSION["CURRENT_USER"]); 
  if($check)
    $CURRENT_USER = json_decode(json_encode($_SESSION["CURRENT_USER"]));
  ?>
<!DOCTYPE>
<html>
  <head>    
    <title> Home  </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--icon-->
    
    <link rel="icon" type="image/png" href="https://image.flaticon.com/icons/svg/201/201614.svg" />
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="<?php echo _PATH ; ?>/sourceExt/materialize/css/materialize.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo _PATH ; ?>/sourceExt/materialize/css/icon.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo _PATH ; ?>/sourceExt/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="View/userStyle.css"/>
    <!-- JS -->
    <script src="<?php echo _PATH; ?>/sourceExt/materialize/js/materialize.js" ></script>
    <script src="<?php echo _PATH; ?>/sourceExt/angular.min.js" ></script>
    <script src="<?php echo _PATH; ?>/sourceExt/jquery.min.js" ></script>
    <script src="http://malsup.github.com/jquery.form.js"></script>
    <script src="<?php echo _PATH; ?>/sourceExt/popper.min.js" ></script>
    <script src="<?php echo _PATH; ?>/sourceExt/bootstrap.min.js" ></script>
    <script src='Controller/main.js'></script>
  </head>
  <body>  
    <nav class="navbar navbar-light bg-light fixed-top">
      <script type="text/javascript">$('.navbar').load('View/navBar');</script>
    </nav>
    <div class="container" style="margin-bottom: 50px;margin-top: 100px;" >
      <section id="mainContent" class="py-5 " style="float: left;position:relative;width: 100%;">
         <?php $link =  $check ? 'home': 'login'; ?>
        <script type="text/javascript">app.route('<?php echo $link?>');</script>
      </section>
    </div>
    <footer class="container-fluid bg-dark" style="position: fixed;bottom:0px; flex:10;">
      <?php $_JSON = json_decode(file_get_contents('eLearn.json'), true);?>
      <div class="col-12 text-center   text-white py-2" >
        <a title="gitHub" target='_blank' href="<?php echo $_JSON['gitHub-link'] ; ?>"><img src="media/github.png"></a>
          <small>
           Made by  
            <?php
              foreach ($_JSON['author'] as $key => $value) {
                echo "<a class='none' href='#'>".$value['prenom'].' '.$value['name'].' - </a>';
              }
              echo $_JSON['year'];
            ?>

           </small>
      </div>
    </footer>  
  </body>
</html>
