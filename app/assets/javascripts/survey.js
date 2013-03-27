$(document).ready(function(){
  $('form').on('click', '.add_fields', function(e){
    var fields = $(this).attr('data-fields');
    $(this).before(fields);
    e.preventDefault();
  })
});
