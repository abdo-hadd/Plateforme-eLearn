$(document).ready(function(){

var div = {
  selector : '#adminForm',
  tree : {
    "student":  "View/adminForms/student",
    "professor": "View/adminForms/professor",
    "classe":  "View/adminForms/classe",
    "module": "View/adminForms/module",
    "note": "View/adminForms/note"
  },
  route: function( tag, callback=function(){} ){
    $(this.selector).load(this.tree[tag]);
    callback();
  }
} ;

/*- Admin *Forms Dispatcher  -*/
   $('#student').click(function(){ 
        div.route('student');
    });

   $('#professor').click(function(){
       div.route('professor');
    });

   $('#classe').click(function(){
        div.route('classe');
    });

   $('#module').click(function(){
        div.route('module');
    });

   $('#note').click(function(){
        div.route('note');
    });

/****5ashom yt7iydo mn hnakiat****/
	$('.nav-link').click((e)=>{
	    $('.nav-link.active').removeClass('active');
	    $(e.target).addClass('active');
	});

  $(document).delegate('.hint','click',(e)=>{
      elem = $(e.target).closest('li');
      $('#apogee0').val(elem.text());
      find = true;
      $('#hint').html('');
  });
});
