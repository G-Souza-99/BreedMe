const toggleBG = (elm, checked, dog, cat) => {
  if (checked) {
    elm.classList.remove("yellowbg");
    elm.classList.add("pinkbg");
    console.log("Checkbox is checked.. meow!");
    console.log("displaying search with.... cats");

    dog.classList.remove("d-block");
    dog.classList.add("d-none");
    cat.classList.add("d-block");
  } else {
    elm.classList.remove("pinkbg");
    elm.classList.add("yellowbg");
    
    console.log("Checkbox is not checked.. woof!");
    console.log("displaying search with.... dogs");
    cat.classList.remove("d-block");
    cat.classList.add("d-none");
    dog.classList.add("d-block");
  }
};


const initBGCheckbox = () => {
   const elm = document.getElementById("change-switcher");
   const dog = document.getElementById("change-select-dog");
   const cat = document.getElementById("change-select-cat");

   if (elm) {
    const checkbox = document.querySelector("input");
    toggleBG(elm, checkbox.checked, dog, cat);

    checkbox.addEventListener("change", () => toggleBG(elm, checkbox.checked, dog, cat));
  }
};

export { initBGCheckbox };
