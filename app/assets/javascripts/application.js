// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .


checkboxes = $('[type="checkbox"]');
checkboxes.change(function() {
  check_validate();
});

$(document).ready(function() {
check_validate();

});


function check_validate() {

  checkboxes = $('[type="checkbox"]');
  
  checkboxes_checked = $('[type="checkbox"]:checked').length;
  max_check = 20;
  
  if (checkboxes_checked == max_check) {
    console.log(checkboxes_checked.length);
    console.log('works');
    $('[type="checkbox"]:not(:checked)').attr('disabled', 'disabled'); 
  } else {
    console.log(checkboxes_checked.length);
    checkboxes.removeAttr('disabled');
  }
}
