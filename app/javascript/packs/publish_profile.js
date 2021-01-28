var isPublished = null;
var profileId = null;
var buttonClickable = null;
var toggleBtn = null;
var btnLabel = null;

document.addEventListener("turbolinks:load", function() {
  let innerCircle = document.querySelector('#inner_circle');
  toggleBtn = document.querySelector('#toggle_btn');
  btnLabel = document.querySelector('#btn_label');
  buttonClickable = document.querySelector('#btn-wrapper');

  if (buttonClickable && innerCircle) {
    isPublished = innerCircle.dataset['ispublished'] == 'true';
    profileId = innerCircle.dataset.id;
    buttonClickable.addEventListener('click', handleToggle);
  };

  if (toggleBtn && btnLabel) {
    if (isPublished == true) {
      toggleBtn.classList.add('active');
      btnLabel.innerText = "Ocultar perfil";
    } else {
      btnLabel.innerText = "Publicar perfil";
    };
  };
});

const hideDiv = () => {
  setTimeout(() => {
    const div = document.getElementById('msg-wrapper')
    div.parentNode.removeChild(div);
  }, 3000)
}

const handleNotification = (message) => {
  const notificationDiv = document.createElement("div")
  const profileFormHeader = document.querySelector("#profile-form-header")
  const imageWrapper = document.createElement("div")
  const h6 = document.createElement("H6")
  const msg = document.createTextNode(message)
  notificationDiv.setAttribute("id", "msg-wrapper")
  notificationDiv.classList.add("msg-wrapper")
  notificationDiv.classList.add("notice")
  imageWrapper.classList.add("vectormsg-wrapper")
  h6.classList.add("primary-font")
  h6.classList.add("msg-fix")
  h6.appendChild(msg)
  notificationDiv.appendChild(h6)
  profileFormHeader.appendChild(notificationDiv)
}

let handleToggle = () => {
  console.log('click');
  buttonClickable.style.pointerEvents = "none";
  var url = 'http://127.0.0.1:3000/toggle_profile';
  var data = { id: profileId, is_published: !isPublished };
  fetch(url, {
    method: 'PUT', // or 'PUT'
    body: JSON.stringify(data), // data can be `string` or {object}!
    headers:{
      'Content-Type': 'application/json'
    }
  }).then(res => res.json())
  .then(response => {
    if (response.result === true) {
      isPublished = response.profile.is_published;
      if (isPublished == true) {
        toggleBtn.classList.add('active');
        btnLabel.innerText = "Ocultar perfil";
        const message = 'El perfil ha sido publicado'
        handleNotification(message)
        hideDiv()
      } else {
        toggleBtn.classList.remove('active');
        btnLabel.innerText = "Publicar perfil";
        const message2 = 'El perfil ya no es visible'
        handleNotification(message2)
        hideDiv()
      };
      buttonClickable.style.pointerEvents = "auto";
    }
  })
  .catch(error => {
    const errorMessage = 'No se pudo realizar la acción'
    handleNotification(errorMessage)
    hideDiv()
    buttonClickable.style.pointerEvents = "auto";
    // Mostrar error en una notificacion
  })
}