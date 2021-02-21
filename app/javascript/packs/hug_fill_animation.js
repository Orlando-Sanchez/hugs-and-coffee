document.addEventListener("turbolinks:load", function() {
  console.log('hey')
  const mainCircle = document.getElementById("main-hug-circle");
  const fillingCircle = document.getElementById("filling-circle");
  var timer = 0;
  var height = 0;
  var mouseIsDown = false;
  var timerInterval = null;

  if (mainCircle) {
    mainCircle.addEventListener('mousedown', function() {
      fillingCircle.classList.add("filling-circle-animation")
      mouseIsDown = true;
      timerInterval = setInterval(() => {
        if (timer === 10000) {
          clearInterval(timerInterval)
        }
        else if (mouseIsDown) {
          timer = timer + 100;
          height = height + 1
          fillingCircle.style.height = `${height}%`
        }
      }, 100);
      console.log('animation') 
    })

    mainCircle.addEventListener('mouseup', function() {
      fillingCircle.classList.remove("filling-circle-animation")
      clearInterval(timerInterval)
      mouseIsDown = false;
      timer = 0
      height = 0
      console.log('mouseup') 
    })
  }
})