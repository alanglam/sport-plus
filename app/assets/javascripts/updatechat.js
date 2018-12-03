function updateChatAJAx(){
  var ajaxRequest;  // The variable that makes Ajax possible!
  ajaxRequest = new XMLHttpRequest();
  ajaxRequest.onreadystatechange = function(){
    if(ajaxRequest.readyState == 4){
      document.getElementById('MoreID').innerHTML = ajaxRequest.responseText;
    }
  }
  ajaxRequest.open("GET", "getMessages.php", true);
  ajaxRequest.send(null);
}
