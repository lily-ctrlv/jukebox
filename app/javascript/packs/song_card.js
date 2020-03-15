import { initSweetalert } from '../plugins/init_sweetalert';

const cards = document.querySelectorAll('.song-card');

cards.forEach((card) => {
  card.addEventListener("click", (event) => {

    const form = card.parentNode.querySelector('.form');
    const deletebtn = card.parentNode.querySelector('.delete');
    const addbtn = card.parentNode.querySelector('.add');

    if (form) {
      form.classList.toggle('d-none');
    } else if (deletebtn) {
      deletebtn.classList.toggle('d-none');
    } else if (addbtn) {
      addbtn.classList.toggle('d-none');
    };
  });

  const minus = card.parentNode.querySelector('.minus');
  const plus = card.parentNode.querySelector('.plus');
  const input = card.parentNode.querySelector('#bid_amount');

  if (input) {
    input.value = 0.5;

    minus.addEventListener('click', (event) => {
      if (Number.parseFloat(input.value) >= 1.0) {
        const count = Number.parseFloat(input.value) - 0.5;
        input.value = count;
        bid_submit.value = `BID £${count.toFixed(2)}`;
      };
    });

    plus.addEventListener('click', (event) => {
      if (Number.parseFloat(input.value) < 5.0) {
        const count = Number.parseFloat(input.value) + 0.5;
        input.value = count;
        bid_submit.value = `BID £${count.toFixed(2)}`;
      };
    });

    const bid_submit = card.parentNode.querySelector("#bid-submit");
    if (bid_submit) {
      bid_submit.addEventListener('click', (event) => {
        if (input.value > nav_balance.innerHTML) {
          event.preventDefault();
          swal({
            title: "Top up your balance!",
            text: `Sorry, you do not have enough funds to place this bid. You can top up your balance from your account page.`,
            icon: "error",
            buttons: false,
            timer: 4000
          });
        } else {
          const form = card.parentNode.querySelector('.form');
          const total_bid_amount = card.parentNode.querySelector('.first-number');
          const nav_balance = document.getElementById('nav-balance');
          const song_title = card.parentNode.querySelector('.song-title');
          const song_artist = card.parentNode.querySelector('.song-artist');
          form.classList.toggle('d-none');
          card.parentNode.style.order = card.parentNode.style.order - (parseFloat(input.value) * 100);
          if (total_bid_amount) {
            nav_balance.innerText = (nav_balance.innerText - input.value).toFixed(2);
            total_bid_amount.innerText = (parseFloat(total_bid_amount.innerText) + parseFloat(input.value)).toFixed(2);
          };
          swal({
            title: "Bid placed!",
            text: `Bid: £${parseFloat(input.value).toFixed(2)}
                   Song: ${song_title.innerText} by ${song_artist.innerText}`,
            icon: "success",
            buttons: false,
            timer: 3000
          });
        };
      });
    };
  };
});
