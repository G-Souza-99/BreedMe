const toggleBG = (elm, checkbox, dog, cat) => {
  if (checkbox.checked) {
    // Codigo parar mudar a cor do background
    elm.classList.remove("yellowbg");
    elm.classList.add("pinkbg");
    console.log("Checkbox is checked - displaying search with.... cats - meow!");

    // Codigo para mostrar o search
    dog.classList.remove("d-block");
    dog.classList.add("d-none");
    cat.classList.add("d-block");
    // ^--------

    //const cat_btn = document.querySelector(".change-cat");
    //cat_btn.click();

  } else if (checkbox.value === "cat") {
    // Codigo parar mudar a cor do background
    elm.classList.remove("yellowbg");
    elm.classList.add("pinkbg");
    console.log("Checkbox is checked - displaying search with.... cats - meow!");

    // Codigo para mostrar o search
    dog.classList.remove("d-block");
    dog.classList.add("d-none");
    cat.classList.add("d-block");
    // ^--------
   const cat_btn = document.querySelector(".change-cat");
   cat_btn.click();

    //const dog_btn = document.querySelector(".change-dog");
    //dog_btn.click();
  }

  console.log("request para correr controller");

};

const initBGCheckbox = () => {
   const elm = document.getElementById("change-switcher");
   const dog = document.getElementById("change-select-dog");
   const cat = document.getElementById("change-select-cat");

   if (elm) {
    const checkbox = document.querySelector("input");
    toggleBG(elm, checkbox, dog, cat);

    checkbox.addEventListener("change", () => toggleBG(elm, checkbox, dog, cat));
  }
};

export { initBGCheckbox };
