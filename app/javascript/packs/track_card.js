const cards = document.querySelectorAll('.song-card')

cards.forEach((card) => {
  card.addEventListener("click", (event) => {
    const form = card.parentNode.querySelector('.form');
    form.classList.toggle('d-none');
  });

  const minus = card.parentNode.querySelector('.minus');
  const plus = card.parentNode.querySelector('.plus');
  const input = card.parentNode.querySelector('#bid_amount');
  const amount = card.parentNode.querySelector('.amount-song');
  minus.addEventListener('click', (event) => {
    console.log('i clicked minus')
    if (Number.parseFloat(input.value) >= 0.5) {
      const count = Number.parseFloat(input.value) - 0.5;
      input.value = count;
      amount.innerHTML = count;
    }
  })

  plus.addEventListener('click', (event) => {
    console.log('i clicked plus')
    const count = Number.parseFloat(input.value) + 0.5;
    input.value = count;
    amount.innerHTML = count;
  })
});
