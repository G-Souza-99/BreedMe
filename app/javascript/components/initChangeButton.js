const randomColorClass = () => {
  const color = ["btn-yellow", "btn-pink"];
  return color[Math.floor(Math.random() * color.length)];
}

const initChangeButton = () => {
  const button = document.querySelector('.btn-color');

  if (button) {
    button.addEventListener("mouseover", () => {
      button.classList.remove('btn-yellow');
      button.classList.remove('btn-pink');
      button.classList.add(randomColorClass());
    });
  }
};

export { initChangeButton };
