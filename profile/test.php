
   	<form action="" method="post" enctype="upload">
        <input type="file" name="uploadedfile"><br>
        <input type="submit" value="Upload File to Server">
    </form>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<script>    

$('form').ajaxForm({    
	url:"upload.php",
    success: function(res) {
        $('body').append(res);
        //status.html(res.responseText);
    }
}); 

</script>

</body>
</html>   