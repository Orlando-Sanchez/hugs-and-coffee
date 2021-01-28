document.addEventListener("turbolinks:load", function() {
  const initialsWrapper = document.querySelector("#initials-wrapper");
  const fullnameText = initialsWrapper.dataset.fullname;
  
  let obtainInitials = (string) => {
    let names = string.split(' ');
    let initials = names[0].substring(0, 1).toUpperCase();
    
    if (names.length > 1) {
        initials += names[names.length - 1].substring(0, 1).toUpperCase();
    };
    return initials;
  };
  obtainInitials(fullnameText);

  if (!initialsWrapper.hasChildNodes()) {
    let initialsText = document.createTextNode(obtainInitials(fullnameText));
    initialsWrapper.appendChild(initialsText);
  };
});
