const initDragAndDrop = () => {
  const imgUploadDefault = document.getElementById("pet_photo");
  const dragField = document.getElementById("drag-field");
  if (imgUploadDefault) {
    dragField.onclick = () => {
      console.log("click")
      imgUploadDefault.click();
    };
  }
};

export { initDragAndDrop };
