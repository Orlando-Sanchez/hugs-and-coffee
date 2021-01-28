var profileMenu = null;
var profileAdminDark = null;
var profileFormMain = null;

document.addEventListener("turbolinks:load", function() {
  profileMenu = document.querySelector("#profile-menu");
  profileAdminDark = document.querySelector("#profile-admin-dark");
  profileFormMain = document.querySelector("#profile-form-main");
  var menuIcon = document.querySelector("#menu-icon");
  var vectorProfileMenu = document.querySelector("#vectorprofilemenu-img");

  if (menuIcon && vectorProfileMenu) {
    menuIcon.addEventListener('click', showProfileMenu);
    vectorProfileMenu.addEventListener('click', hideProfileMenu);
  };
});

let showProfileMenu = () => {
  if (profileAdminDark && profileFormMain && profileMenu) {
    profileAdminDark.style.backgroundColor = "rgba(0, 0, 0, 0.7)";
    profileFormMain.style.mixBlendMode = "multiply";
    profileMenu.style.display = "block";
  };
};

let hideProfileMenu = () => {
  if (profileAdminDark && profileFormMain && profileMenu) {
    profileAdminDark.style.backgroundColor = "#FFFFFF";
    profileFormMain.style.mixBlendMode = "normal";
    profileMenu.style.display = "none";
  };
};