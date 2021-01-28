var msgWrapper = null;

document.addEventListener("turbolinks:load", function() {
  msgWrapper = document.querySelector("#msg-wrapper");
  var vectorMsgWrapper = document.querySelector("#vectormsgwrapper-img");

  if (vectorMsgWrapper) {
    vectorMsgWrapper.addEventListener('click', hideMsgWrapper);
  };
});

let hideMsgWrapper = () => {
  if (msgWrapper) {
    msgWrapper.style.display = "none";
  };
};