console.log('working');
checkboxes = $(':checkbox');
checkboxes.change(function() {
  check_validate();
});

// $(document).ready(function() {
// check_validate();
// 
// });


function check_validate() {

  console.log('funct works');  
  checkboxes_checked = $(':checkbox:checked').length;
  max_check = 20;
  
  if (checkboxes_checked == max_check) {
    console.log('works');
    $(':checkbox:not(:checked)').attr('disabled', 'disabled'); 
  } else {
    checkboxes.removeAttr('disabled');
  }
}
