<a class="navbar-brand" id="profile" href="#" style="float: left;" title="<?php echo $CURRENT_USER->email ;?>" >
<?php
  if (session_status() == PHP_SESSION_NONE) {
      session_start();
  }
?>

  <img src="<?php echo $CURRENT_USER->thumbProfile? $CURRENT_USER->thumbProfile: 'media/anonyme.svg';?>" id="avatar" width="50" height="50" class="d-inline-block align-top" alt="user"/>
  <h2 id="userName" name="<?php echo  $CURRENT_USER->CODE ;?>" style="float: right; margin-left: 20px;" >
      <?php echo  $CURRENT_USER->firstN.'  '.$CURRENT_USER->lastN ;?>
      <img src='https://image.flaticon.com/icons/svg/183/183338.svg' width='20' style='float: right;'>
  </h2> 
</a>
<ul class="nav justify-content-end">
  <li class="nav-item" title="home" >
    <a class="nav-link"  id="home" ><img src="media/home.svg" width="30" b height="30"  ></a>
  </li>
  <li class="nav-item" title="student" >
    <div class="dropdown">
      <a class="nav-link dropdown-toggle" style="cursor: pointer;" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="media/tool.svg" width="30" height="30" ></a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" id="profile"><h5>Profile</h5></a>
        <a class="dropdown-item" id="degree"><h5>Note</h5></a>
        <a class="dropdown-item disabled" id="article"><h5>Announcement</h5></a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" ><h6>Other</h6></a>
      </div>
    </div>
  </li>
  <li class="nav-item" title="logout">
    <a class="nav-link" id="logoutLink"><img src="media/logout.svg" width="30" height="30" ></a>
  </li>
</ul>
    