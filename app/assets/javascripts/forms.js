$(function(){
  $( ".number-field-increment" ).click(function() {
    var value = parseInt($(this).prev(".number-field").attr("value"))+1;
    $(this).prev(".number-field").attr("value", value);
  });
  $( ".number-field-decrement" ).click(function() {
    var value = parseInt($(this).next(".number-field").attr("value"))-1;
    if (value>=0) {
      $(this).next(".number-field").attr("value", value);
    }
  });
});