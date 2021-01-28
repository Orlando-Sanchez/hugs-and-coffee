document.addEventListener("turbolinks:load", function() {
  console.log('estoy aca')
  const coffeePrice = document.getElementById('coffee-price')
  const totalAmount = document.getElementById('total-amount')
  const b1 = document.getElementById('b1')
  const b2 = document.getElementById('b2')
  const b3 = document.getElementById('b3')
  const b4 = document.getElementById('b4')
  const coffeesQuantity = document.getElementById('coffees_quantity')
  const q1 = document.getElementById('q1')
  const q2 = document.getElementById('q2')
  const q3 = document.getElementById('q3')
  const q4 = document.getElementById('q4')

  const handleQuantityBtn = (q, price) => {
    const result = q.value*price.value
    totalAmount.value = result
    coffeesQuantity.value = q.value
    console.log(coffeesQuantity.value)
  }

  b1.addEventListener('click', handleQuantityBtn(q1, coffeePrice))
  b2.addEventListener('click', handleQuantityBtn(q2, coffeePrice))
  b3.addEventListener('click', handleQuantityBtn(q3, coffeePrice))
  b4.addEventListener('click', handleQuantityBtn(q4, coffeePrice))
})