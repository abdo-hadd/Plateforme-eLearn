<!--HOME-->
<?php
  session_start();    
  $check = isset($_SESSION["CURRENT_USER"]);
  $CURRENT_USER = json_decode(json_encode($_SESSION["CURRENT_USER"]));
  
  switch (true) {
    case $CURRENT_USER->userType === "Stud":
      include('student_mark.php');
      break;
    case $CURRENT_USER->userType === "Prof":
      include('teacher_mark.php');
      break;
  }
  
?>
  

