$(document).ready(function(){

check = true;
$(document).delegate('td','input',(e)=>{
    elem = $(e.target);  
    val = elem.text().trim();
    if (!val.match(/^\d+(\.\d+)?$/) || val<0 || val>20){
          elem.css('color','red');
          check = false;
        }
      else{
          elem.css('color','green');
          check = true;
        }
  });

  $(document).delegate('.edit','click',(e)=>{
    if(check){

      tr = $(e.target).closest('tr');
      $(e.target).hide();
      tr.find('.save').show();
      tr.children('td:eq(1)').focus();
      tr.toggleClass('bg');
      tr.children('td:eq(1)').attr('contenteditable','true');
    }
  });

  $(document).delegate('.save','click',(e)=>{
    if(check){
      tr = $(e.target).closest('tr');
      $(e.target).hide();
      tr.find('.edit').show();
      tr.addClass('changed');
      tr.toggleClass('bg');;
      tr.children('td:eq(1)').attr('contenteditable','false');
    }
  });

  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#items tr").filter(function() {
      $(this).closest('tr').toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });

});

