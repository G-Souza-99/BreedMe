const changeBG = () => {
   const elm = document.getElementById("change-switcher");
   if (elm) {
    const checkbox = document.querySelector("input");
    checkbox.addEventListener("change", function () {
      if (this.checked) {
        elm.classList.remove("yellowbg");
        elm.classList.add("pinkbg");
        console.log("Checkbox is checked.. meow!");

      } else {
        elm.classList.remove("pinkbg");
        elm.classList.add("yellowbg");
        console.log("Checkbox is not checked.. woof!");
      }
    });
  }
};

export { changeBG };
