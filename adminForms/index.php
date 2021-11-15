<!--HOME-->
<script type="text/javascript" src='Controller/Client/adminForm.js'></script>
<script type="text/javascript" src='View/adminForms/behavior.js'></script>
<div class="container marketing text-center" style="margin-top: -50px;">
<link rel="stylesheet" type="text/css" href="View/adminForms/style.css">
<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-pills card-header-pills">
      <li class="nav-item">
        <a class="nav-link" id="student">Student</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="professor">Professor</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="classe">Classe</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="module">Module</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="note">Note</a>
      </li>
    </ul>
  </div>
  <img src="https://image.flaticon.com/icons/svg/1271/1271380.svg" width="30" height="30" style="display: none;position: absolute;right:2%;top:2%;float: right;" id="successful">
  <div class="card-body" id="adminForm">
  </div>
  <div class="alert alert-dismissible fade show" role="alert" id="alertWarnningLog" style="display: none;">
    <p></p>
    <button type="button" class="close"   onclick="$('#alertWarnningLog').hide();">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
</div>
</div><!--container-->