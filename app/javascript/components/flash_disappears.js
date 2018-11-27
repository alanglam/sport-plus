function FlashDisappears() {
  setTimeout(() => {
       document.getElementById("flash-alert").classList.add("disappear")
      }, 3000);
}

export { FlashDisappears };
