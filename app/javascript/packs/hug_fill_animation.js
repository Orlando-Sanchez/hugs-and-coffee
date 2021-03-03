document.addEventListener("turbolinks:load", function() {
  const mainCircle = document.getElementById("main-hug-circle");
  const fillingCircle = document.getElementById("filling-circle");
  const timerSeconds = document.getElementById("timer-seconds");
  var heightPercentage = null;
  var timer = 0;
  var interval = null;
  var hugSecondsField = null;
  var totalHeight = null;

  const handleUpAction = function() {
    clearInterval(interval);
    hugSecondsField.value = timer;
    fillingCircle.classList.remove("filling-circle-animation");
  }

  const handleDownAction = function() {
    timerSeconds.textContent = `0.0`;
    fillingCircle.style.removeProperty("height");
    hugSecondsField.value = 0;
    fillingCircle.classList.add("filling-circle-animation");
    interval = setInterval(() => {
      heightPercentage = (fillingCircle.offsetHeight * 100) / totalHeight
      fillingCircle.style.height = `${heightPercentage}%`;
      timer = Math.round(heightPercentage) / 10
      timerSeconds.textContent = timer
    }, 10);
  }

  if (mainCircle) {
    hugSecondsField = document.getElementById('hug_seconds');
    hugSecondsField.value = 10
    totalHeight = mainCircle.offsetHeight;
    mainCircle.addEventListener('touchstart', function (e) {
      e.preventDefault();
    });
    mainCircle.addEventListener('click', function (e) {
      e.preventDefault();
    });
 
    mainCircle.addEventListener('touchstart', handleDownAction)
    mainCircle.addEventListener('mousedown', handleDownAction)

    mainCircle.addEventListener('mouseup', handleUpAction)
    mainCircle.addEventListener('touchend', handleUpAction)
  }
})