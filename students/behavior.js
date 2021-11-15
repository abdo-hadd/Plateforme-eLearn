$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#student-list .card-body").filter(function() {
      $(this).closest('.card').toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});