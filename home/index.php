<!--HOME-->
<div class="container marketing text-center" >
<?php
  include('../../Model/function.php');
?>
<script type="text/javascript" src="View/home/behavior.js"></script>
<link rel="stylesheet" type="text/css" href="View/home/style.css">
  <div class="row text-center">
    <div class="col">
      <div class="counter">
        <i class="fa fa-code fa-2x"><img src="https://image.flaticon.com/icons/svg/300/300220.svg" width="100" height="100"></i>
        <h1 class="timer count-title count-number"  data-to="
        <?php echo countAccount(); ?>
        " data-speed="1500" >0</h1>
         <h5 >Account</h5>
      </div>
    </div>
    <div class="col" >
      <div class="counter">
        <i class="fa fa-code fa-2x"><img src="https://image.flaticon.com/icons/svg/1643/1643307.svg" width="100" height="100"></i>
        <h1 class="timer count-title count-number"  data-to="
       <?php echo countProfessor(); ?>
        " data-speed="1500" >0</h1>
         <h5 >Professor</h5>
      </div>
    </div>
    <div class="col">
      <div class="counter">
        <i class="fa fa-code fa-2x"><img src="https://image.flaticon.com/icons/svg/183/183338.svg" width="100" height="100"></i>
        <h1 class="timer count-title count-number"  data-to="
       <?php echo countStudent(); ?>
       
        " data-speed="1500" >0</h1>
         <h5 >Student</h5>
      </div>
    </div>
    <script type="text/javascript">
      
    </script>        
  </div>

  <br>
  <br>
    <hr class="featurette-divider">
  <br>

<main>
  <h1>###</h1>
  <p>....</p>
  <section>
    <div class="pieID pie">
      
    </div>
    <ul class="pieID legend">
      <li>
        <em>non valide</em>
        <span>2</span>
      </li>
      <li>
        <em>Rattrapage</em>
        <span>5</span>
      </li>
      <li>
        <em>passable</em>
        <span>9</span>
      </li>
      <li>
        <em>assez bien</em>
        <span>12</span>
      </li>
      <li>
        <em>bien</em>
        <span>4</span>
      </li>
      <li>
        <em>tres bien</em>
        <span>2</span>
      </li>
      <li>
        <em>excellent</em>
        <span>1</span>
      </li>
    </ul>
  </section>
  <section>
    <!--<p>Also, check out my <a href="https://codepen.io/ejsado/pen/HLgzK">Google Charts restyling</a>.</p>-->
  </section>
</main>
<footer>
  An original pen by <a href="https://codepen.io/ejsado/">Eric</a>.
</footer>

<script type="text/javascript">
 
</script>
  <br>
    <hr class="featurette-divider">
  <br>
  <br>

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5">
      <img src="media/univ2.jpg" width='100%' height="100%">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-5 order-md-1" mar>
        <img src="media/univ1.jpg" width='100%' height="100%">
      </div>
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5">
        <img src="media/univ3.jpg" width='100%' height="100%">
      </div>
    </div>

    <hr class="featurette-divider">

    <!--<a href="#" title="Back to top"><img src="media/up.svg" height="50" width="50"></a>-->
    <div class="fixed-action-btn" title="download report card">
    <a class="btn-floating btn-large red" href="#">
      <i class="large material-icons blue">keyboard_arrow_up</i>
    </a>
  </div>
  </div><!-- /.container -->

