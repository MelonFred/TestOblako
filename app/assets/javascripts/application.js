// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  
  $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue'
  });

  $('select').select2({
    minimumResultsForSearch: -1
  });

  $("#add_todo").click(function(event) {
    event.preventDefault();
    $("#mask").removeClass('no_mask');
    $("#mask").addClass('mask');   
  });

  $("#save_todo").on("click", function(){
   event.preventDefault();
   $("#form_id").submit();
});

  $("#close_form").click(function(event) {
    event.preventDefault();
    $("#mask").removeClass('mask');
    $("#mask").addClass('no_mask');
  });

  $('input').on('ifClicked', function(event){
    event.preventDefault();
    this.form.submit();
  });
});







