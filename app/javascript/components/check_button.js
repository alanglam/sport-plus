function checkButton() {
 const checkButton = document.getElementById('toggle');
 const recurencyField = document.getElementById('recurency');
 const submitButton = document.getElementById('submitButton');
 const recurencyParams = document.getElementById('recurency_params');
 checkButton.addEventListener('click', (event) => {
   if(recurencyField.innerHTML == 'All') {
     recurencyField.innerHTML = 'Daily'
     recurencyParams.value = 'Daily'
   } else {
     recurencyField.innerHTML = 'All'
     recurencyParams.value = 'All'
   }
   submitButton.click();
 })
}

export { checkButton };
