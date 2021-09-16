const initSearchCat = () => {
  const searchIcon = document.querySelector('.search-btn-cat-index');
  let searchArray = []; // Array that will be pushing the info to be searched
  let count = 0;
  let href =  "?pet_type=cat&";
  const btnToHide = document.getElementById("btn-to-hide");
  if (searchIcon) {
    searchIcon.addEventListener('click', () => {
      console.log("You Clicked on the button");
      let searchTexts = document.querySelectorAll(".select2-selection__choice"); // Value that is searched
      searchTexts.forEach((searchText) => {
        count += 1;
        searchArray.push(searchText.title);
        href += `pet${count}=${searchText.title}&`;
      });
      btnToHide.href = href;
      btnToHide.click();
    })
  }
}

export { initSearchCat }
