const initUploadImage = () => {
  const defaultUpload = document.getElementById("user_photo");
  const userUpload = document.getElementById("upload-this");
  if (defaultUpload){
    userUpload.onclick = () => {
      defaultUpload.click();
    };
    defaultUpload.addEventListener("change", (event) => {
      const reader = new FileReader();
      reader.onload = () => {
        userUpload.style.backgroundImage = `url("${reader.result}")`;
      };
      reader.readAsDataURL(event.target.files[0]);
    });
  }
};

export { initUploadImage };
