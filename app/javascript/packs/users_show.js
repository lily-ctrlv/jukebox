import { initSweetalert } from '../plugins/init_sweetalert';

const plus_btn = document.getElementById("plus");
const minus_btn = document.getElementById("minus");
const submit = document.getElementById("submit-add-money");
const form = document.querySelector('form');
const balance_figure = document.getElementById('balance-figure');
const add_money_section = document.getElementById("add-money");
const add_money_btn = document.getElementById("add-money-btn");
const add_money_form = document.querySelector(".add-money-form");
const cancel_add_money_form = document.getElementById("cancel-add");
const nav_balance = document.getElementById("nav-balance");


const change_value = (action) => {
    if (action === 'plus') {
        submit.value = `ADD £${((parseInt(submit.dataset.count, 10) + 50) / 100).toFixed(2)}`;
        submit.dataset.count = parseInt(submit.dataset.count, 10) + 50
    } else if (action === 'minus') {
        submit.value = `ADD £${((parseInt(submit.dataset.count, 10) - 50) / 100).toFixed(2)}`;
        submit.dataset.count = parseInt(submit.dataset.count, 10) - 50
    }
};

if (add_money_btn) {
  add_money_btn.addEventListener('click', () => {
      add_money_btn.classList.toggle('hidden');
      add_money_form.classList.toggle('hidden');
  });
};

if (cancel_add_money_form) {
  cancel_add_money_form.addEventListener('click', () => {
      add_money_form.classList.toggle('hidden');
      add_money_btn.classList.toggle('hidden');
  });
};

if (plus_btn) {
  plus_btn.addEventListener('click', (event) => {
      event.preventDefault();
      change_value('plus');
  });
};

if (minus_btn) {
  minus_btn.addEventListener('click', (event) => {
      event.preventDefault();
      if (parseInt(submit.dataset.count, 10) > 50) {
          change_value('minus');
      };
  });
};

if (form){
  form.addEventListener('submit', (event) => {
    user_balance_cents.value = parseInt(user_balance_cents.value, 10) + parseInt(submit.dataset.count, 10)
    balance_figure.innerText = (user_balance_cents.value / 100).toFixed(2)
    nav_balance.innerText = (parseInt(user_balance_cents.value, 10) / 100).toFixed(2)
    add_money_btn.classList.toggle('hidden');
    add_money_form.classList.toggle('hidden');
    swal({
      title: "Balance updated!",
      text: `£${(parseInt(submit.dataset.count, 10) / 100).toFixed(2)} has been added to your balance.`,
      icon: "success",
      buttons: false,
      timer: 2500
    });
  });
}

