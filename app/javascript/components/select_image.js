const initSportimages = function () {
  const sport_images = document.getElementsByClassName("sport-img");



   Array.from(sport_images).forEach(function(element){
    element.addEventListener("click",function(e) {
      const selected_sport_images = document.querySelectorAll(".selected-img.sport-img");
      Array.from(selected_sport_images).forEach(function(selected_element){
        selected_element.classList.remove("selected-img")
      })
      element.classList.add("selected-img")
    })
  })
}

const initGenderimages = function () {
  const gender_images = document.getElementsByClassName("gender-img");

   Array.from(gender_images).forEach(function(element){
    element.addEventListener("click",function(e) {
      const selected_gender_images = document.querySelectorAll(".selected-img.gender-img");
      Array.from(selected_gender_images).forEach(function(selected_element){
        selected_element.classList.remove("selected-img")
      })
      element.classList.add("selected-img")
    })
  })
}

const initPlayimages = function () {
  const play_images = document.getElementsByClassName("play-img");

   Array.from(play_images).forEach(function(element){
    element.addEventListener("click",function(e) {
      const selected_play_images = document.querySelectorAll(".selected-img.play-img");
      Array.from(selected_play_images).forEach(function(selected_element){
        selected_element.classList.remove("selected-img")
      })
      element.classList.add("selected-img")
    })
  })
}
export { initSportimages };
export { initGenderimages };
export { initPlayimages };
