const initLandingPage = () => {

  const dogBG = document.querySelector(".landing-foto-dog");
  const catBG = document.querySelector(".landing-foto-cat");
  const changeLandingCat = () => {
    dogBG.classList.remove("d-block")
    dogBG.classList.add("d-none")
    catBG.classList.remove("d-none")
    catBG.classList.add("d-block")
    console.log("Im Showing CAT")

  }
  const changeLandingDog = () => {
    catBG.classList.remove("d-block")
    catBG.classList.add("d-none")
    dogBG.classList.remove("d-none")
    dogBG.classList.add("d-block")
    console.log("Img Showing DOG")
  }


  if(dogBG){
    const changeLanding = () => {
      window.setTimeout(changeLandingCat, 200);
      window.setTimeout(changeLandingDog, 3000);
    }

    window.setInterval(changeLanding, 5000);
  }
}
export {initLandingPage}
