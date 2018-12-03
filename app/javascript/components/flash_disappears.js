function FlashDisappears() {
  console.log('hello');
  setTimeout(function(){
     $('.alert').slideUp(500);
    }, 900);
};

export { FlashDisappears }
