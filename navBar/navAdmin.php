  <a class="navbar-brand" href="#" style="float: left;" title="<?php echo  $CURRENT_USER->email ?>">
    <?php
      if (session_status() == PHP_SESSION_NONE) {
          session_start();
      }
    ?>
    <img src="<?php echo $CURRENT_USER->thumbProfile? $CURRENT_USER->thumbProfile: 'media/anonyme.svg';?>" id="avatar" width="50" height="50" class="d-inline-block align-top" alt="user"/>
    <h2 id="userName" name="<?php echo  $CURRENT_USER->CODE ?>" style="float: right; margin-left: 20px;" ><?php echo  $CURRENT_USER->firstN.'  '.$CURRENT_USER->lastN ?>
      <img src='https://image.flaticon.com/icons/svg/1017/1017316.svg' width='20' style='float: right;'>
    </h2> 
  </a>
  <ul class="nav justify-content-end">
    <li class="nav-item" title="home" >
      <a class="nav-link"  id="home" ><img src="media/home.svg" width="30" b height="30"  ></a>
    </li>
    <li class="nav-item" title="gestion"> 
      <div class="dropdown">
        <a class="nav-link dropdown-toggle" style="cursor: pointer;" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="media/admin.svg" width="30" height="30"></a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" id="myStudent"><h5>Students</h5></a>
          <a class="dropdown-item disabled" id=""><h5>Teachers</h5></a>
          <a class="dropdown-item" id="addItems"><h5>Add</h5></a>
          <a class="dropdown-item" id="printDegree"><h5>Print degree</h5></a>
          <a class="dropdown-item disabled" id="announcement"><h5>Announcement</h5></a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" ><h6>Other</h6></a>
        </div>
      </div>
    </li>
    <li class="nav-item" title="logout">
      <a class="nav-link" id="logoutLink"><img src="media/logout.svg" width="30" height="30" ></a>
    </li>
  </ul>