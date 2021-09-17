const initScrollDown = () => {
 const elem = document.querySelector(".chatroom-container")
 if(elem){
  elem.scroll(0, 1500);
 }
}

export { initScrollDown }
