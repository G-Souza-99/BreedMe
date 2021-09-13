const initAddPet = () => {
  const linkUserToAdd = document.getElementById("add-pet-button");
  const placeToClick = document.getElementById("add-pet");
  
  if (linkUserToAdd) {
    placeToClick.onclick = () => {
      linkUserToAdd.click();
    };
  }
};

export { initAddPet };
