const toggleBG = (elm, checked) => {
  if (checked) {
    elm.classList.remove("yellowbg");
    elm.classList.add("pinkbg");
    console.log("Checkbox is checked.. meow!");
  } else {
    elm.classList.remove("pinkbg");
    elm.classList.add("yellowbg");
    console.log("Checkbox is not checked.. woof!");
  }
};

const initBGCheckbox = () => {
   const elm = document.getElementById("change-switcher");

   if (elm) {
    const checkbox = document.querySelector("input");
    toggleBG(elm, checkbox.checked);

    checkbox.addEventListener("change", () => toggleBG(elm, checkbox.checked));
  }
};

export { initBGCheckbox };
