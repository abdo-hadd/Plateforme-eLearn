<?php 
  session_start();    
  $check = isset($_SESSION["CURRENT_USER"]); 
  
  if(!$check)
    include("navNotConnected.php");
  else{
        $CURRENT_USER = json_decode(json_encode($_SESSION["CURRENT_USER"]));
        
        switch ( $CURRENT_USER->userType ) {
            case 'Stud':
                include("navStudent.php");
                break;
            case 'Prof':
                include("navTeacher.php");
                break;
            case 'Admin':
                include("navAdmin.php");
                break;
            default:
                # code...
                break;
        }
    }

?>