var b1 = null;
var b2 = null;
var b3 = null;
var b4 = null;
var q1 = null;
var q2 = null;
var q3 = null;
var q4 = null;
var coffeePrice = null;
var coffeesQuantity = null;
var totalAmount = null;

document.addEventListener("turbolinks:load", function() {
  b1 = document.getElementById('b1');
  b2 = document.getElementById('b2');
  b3 = document.getElementById('b3');
  b4 = document.getElementById('b4');
  q1 = document.getElementById('q1');
  q2 = document.getElementById('q2');
  q3 = document.getElementById('q3');
  q4 = document.getElementById('q4');
  coffeePrice = document.getElementById('coffee-price');
  coffeesQuantity = document.getElementById('coffees-quantity');
  totalAmount = document.getElementById('total-amount');

  if (b2 && q2) {
    b2.classList.add("selected-btn")
    q2.classList.add("selected-btn-text")
    coffeesQuantity.value = q2.textContent;
  }

  if (b1) {
    b1.addEventListener('click', function() {
      b1.classList.add("selected-btn");
      q1.classList.add("selected-btn-text")
      b2.classList.remove("selected-btn");
      q2.classList.remove("selected-btn-text");
      b3.classList.remove("selected-btn");
      q3.classList.remove("selected-btn-text");
      b4.classList.remove("selected-btn");
      q4.classList.remove("selected-btn-text");
      totalAmount.textContent = Math.floor((q1.textContent*coffeePrice.textContent)*100) / 100
      coffeesQuantity.value = q1.textContent     
    });
  }

  if (b2) {
    b2.addEventListener('click', function() {
      b2.classList.add("selected-btn");
      q2.classList.add("selected-btn-text")
      b1.classList.remove("selected-btn");
      q1.classList.remove("selected-btn-text");
      b3.classList.remove("selected-btn");
      q3.classList.remove("selected-btn-text");
      b4.classList.remove("selected-btn");
      q4.classList.remove("selected-btn-text");
      totalAmount.textContent = Math.floor((q2.textContent*coffeePrice.textContent)*100) / 100
      coffeesQuantity.value = q2.textContent
    });
  } 

  if (b3) {
    b3.addEventListener('click', function() {
      b3.classList.add("selected-btn");
      q3.classList.add("selected-btn-text")
      b1.classList.remove("selected-btn");
      q1.classList.remove("selected-btn-text");
      b2.classList.remove("selected-btn");
      q2.classList.remove("selected-btn-text");
      b4.classList.remove("selected-btn");
      q4.classList.remove("selected-btn-text");
      totalAmount.textContent = Math.floor((q3.textContent*coffeePrice.textContent)*100) / 100
      coffeesQuantity.value = q3.textContent          
    });
  }

  if (b4) {
    b4.addEventListener('click', function() {
      b4.classList.add("selected-btn");
      q4.classList.add("selected-btn-text")
      b1.classList.remove("selected-btn");
      q1.classList.remove("selected-btn-text");
      b2.classList.remove("selected-btn");
      q2.classList.remove("selected-btn-text");
      b3.classList.remove("selected-btn");
      q3.classList.remove("selected-btn-text");
      totalAmount.textContent = Math.floor((q4.textContent*coffeePrice.textContent)*100) / 100
      coffeesQuantity.value = q4.textContent          
    });
  }
})