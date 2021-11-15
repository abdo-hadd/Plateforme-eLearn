<script src='Controller/Client/auth.js'></script>

<div  style="float: left;">
  <img class="d-block mx-auto mb-4"  src="media/0.png" alt="" width="72" height="72">
  <h2>Have Fun</h2>
  <p class="lead">It's free</p>
</div>
<div class="login"   align="center">
    <form id="form-signin" class="needs-validation" >
        
        <h2 class="h3 mb-3 font-weight-normal" id="msg"  >Please sign in</h2>
        <br>
        <div class="input-field col-20 s12">
          <input id="username" type="text" class="validate form-control" value="Ayoubb" required autofocus autocomplete="off">
          <label class="active" for="username">Username</label>
        </div>
        <div class="input-field col-20 s12">
          <input id="password" type="password" class="validate form-control" value="123"required autocomplete="off">
          <label class="active" for="password">Password</label>
        </div>
        
        <div class="checkbox mb-3">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" checked="" >
            <label class="custom-control-label" for="customCheckDisabled1">Remember me  </label>
          </div>
        </div>  
        <button class="btn btn-lg btn-primary btn-block" style="height:40px;padding-bottom: 40px" type="submit" >Log In</button>
          <br>
          <!--<p class="mt-5 mb-3 text-muted">Sign In</p>-->
        
    </form>
  <div class="alert alert-warning alert-dismissible fade show" role="alert" id="alertWarnningLog" style="display: none;">
    <p>Incorrect username or password entered!! Please try again. 
    <button type="button" class="close" onclick="$('#alertWarnningLog').hide();">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  
</div>
<div id="load" style="display: none;">
</div>
