document.addEventListener("turbolinks:load", function() {
  const initialsWrapper = document.querySelector("#initials-wrapper");
  var fullnameText = null;

  if (initialsWrapper) {
    fullnameText = initialsWrapper.dataset.fullname;
  }

  let obtainInitials = (string) => {
    let names = string.split(' ');
    let initials = names[0].substring(0, 1).toUpperCase();
    
    if (names.length > 1) {
        initials += names[names.length - 1].substring(0, 1).toUpperCase();
    };
    return initials;
  };

  if (fullnameText) {
    obtainInitials(fullnameText);
  }

  if (initialsWrapper && !initialsWrapper.hasChildNodes()) {
    let initialsText = document.createTextNode(obtainInitials(fullnameText));
    initialsWrapper.appendChild(initialsText);
  };
});
