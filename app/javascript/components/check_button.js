function checkButton() {
 const checkButton = document.getElementById('toggle');
 const recurencyField = document.getElementById('recurency');
 const submitButton = document.getElementById('submitButton');
 const recurencyParams = document.getElementById('recurency_params');
 checkButton.addEventListener('click', (event) => {
   if(recurencyField.innerHTML == 'Weekly') {
     recurencyField.innerHTML = 'Daily'
     recurencyParams.value = 'Daily'
   } else {
     recurencyField.innerHTML = 'Weekly'
     recurencyParams.value = 'Weekly'
   }
   submitButton.click();
 })
}

export { checkButton };
