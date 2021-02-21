var hugSecondsField = null;
document.addEventListener("turbolinks:load", function() {
  console.log('hey')
  const mainCircle = document.getElementById("main-hug-circle");
  const totalHeight = mainCircle.offsetHeight;
  const fillingCircle = document.getElementById("filling-circle");
  const hugImg = document.getElementById("hug-img");
  const timerCount = document.getElementById("timer-count");
  var timer = 0;


  hugImg.addEventListener('touchstart', function (e) {
      e.preventDefault();
  });

  hugImg.addEventListener('click', function (e) {
    e.preventDefault();
  });

  const handleUpAction = function() {
    const heightPercentage = (fillingCircle.offsetHeight * 100) / totalHeight
    timer = Math.round((parseFloat(heightPercentage / 10) + Number.EPSILON) * 100) / 100
    timerCount.textContent = timer
    hugSecondsField.value = timer;
    fillingCircle.style.height = `${heightPercentage}%`;
    fillingCircle.classList.remove("filling-circle-animation");
  }

  const handleDownAction = function() {
    timerCount.textContent = `0.0`;
    fillingCircle.style.removeProperty("height");
    hugSecondsField.value = 0;
    fillingCircle.classList.add("filling-circle-animation");
  }

  if (mainCircle) {
    hugSecondsField = document.getElementById('hug_seconds'); 
    mainCircle.addEventListener('touchstart', handleDownAction)
    mainCircle.addEventListener('mousedown', handleDownAction)

    mainCircle.addEventListener('mouseup', handleUpAction)
    mainCircle.addEventListener('touchend', handleUpAction)
  }
})