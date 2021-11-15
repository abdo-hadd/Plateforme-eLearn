$('form').ajaxForm({    
	url:"Model/upload.php",
    success: function(res) {
        console.log(JSON.stringify(res));
    }
}); 