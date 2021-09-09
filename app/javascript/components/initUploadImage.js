const initUploadImage = () => {
  const defaultUpload = document.getElementById("user_photo");
  console.log(defaultUpload);

  const userUpload = document.getElementById("upload-this");
  console.log(userUpload);

  userUpload.onclick = () => {
    defaultUpload.click();
  }
};

export { initUploadImage };
