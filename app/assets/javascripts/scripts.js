

// $(document).ready(function() {
// check_validate();
// 
// });


$(document).ready(function() {

function check_validate() {

  checkboxes_checked = $(':checkbox:checked').length;
  max_check = 20;
  
  if (checkboxes_checked == max_check) {
    $(':checkbox:not(:checked)').attr('disabled', 'disabled'); 
  } else {
    checkboxes.removeAttr('disabled');
  }
}

checkboxes = $(':checkbox');
checkboxes.change(function() {
  check_validate();
});

});
