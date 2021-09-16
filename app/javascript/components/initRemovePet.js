const initRemovePet = () => {
  const resultsRow = document.getElementById("search-results-select2");
  const petSearchId = document.querySelectorAll(".pet-search-id");

  const searchHref = window.location.href;

  const btnToHide1 = document.getElementById("btn-to-hide");


  if (resultsRow){
    petSearchId.forEach(item => {

      item.addEventListener("click", function() {
        const select2UL = document.querySelector(
          "#select2-change-dog-container");
        select2UL.children[item.id].remove();
        item.remove();
        btnToHide1.click();

        console.log(select2UL.children[item.id]);
      //   const fullURLArray = searchHref.split("&");
      //   let url1 = fullURLArray[0];
      //   let url = fullURLArray.shift();
      //  // let index = fullURLArray.indexOf(item.id)
      //   fullURLArray.splice(item.id, 1);
      //   const resultURL = url1 + fullURLArray
      //   const finalURL = resultURL.replaceAll(",","&")
      //   console.log(finalURL);


        //
      })
    })
  }
}

export { initRemovePet }
