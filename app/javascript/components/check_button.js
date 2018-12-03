function checkButton() {
 const checkButton = document.getElementById('toggle');
 const recurencyField = document.getElementById('recurency');
 checkButton.addEventListener('click', (event) => {
   if(recurencyField.innerHTML == 'Weekly') {
     recurencyField.innerHTML = 'Daily'
   } else {
     recurencyField.innerHTML = 'Weekly'
   }
 })
}

export { checkButton };
