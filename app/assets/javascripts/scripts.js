

// $(document).ready(function() {
// check_validate();
// 
// });

console.log('working');

function check_validate() {

  console.log('funct works');  
  checkboxes_checked = $(':checkbox:checked').length;
  max_check = 3;
  
  if (checkboxes_checked == max_check) {
    console.log('works');
    $(':checkbox:not(:checked)').attr('disabled', 'disabled'); 
  } else {
    checkboxes.removeAttr('disabled');
  }
}

console.log('working 2');
checkboxes = $(':checkbox');
checkboxes.change(function() {
  check_validate();
  console.log('click');
});
