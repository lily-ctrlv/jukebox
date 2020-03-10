const cards = document.querySelectorAll('.song-card')

cards.forEach((card) => {
  card.addEventListener("click", (event) => {

    const form = card.parentNode.querySelector('.form');
    const deletebtn = card.parentNode.querySelector('.delete');
    if (form) {
      form.classList.toggle('d-none');
    } else if (deletebtn) {
      deletebtn.classList.toggle('d-none')
    }

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


// document.querySelectorAll(".song-card").forEach((card) => {
//   card.addEventListener("click", (event) => {
//     const id = event.currentTarget.dataset.id

//     const element = event.currentTarget.nextElementSibling
//     if (element.classList.contains("d-none")) {
//       element.classList.remove("d-none");
//       element.insertAdjacentHTML(
//         "beforeend",
//         `<div class="actions">
//             <a class="btn round-bordered incrementer inc${id}" data-offset="-0.5">-</a>
//             <span id="counter${id}" data-count="0">0</span>
//             <a href="#" class="btn round-bordered incrementer inc${id}" data-offset="0.5">+</a>
//         </div>
//         <form action >
//           <input type="hidden" value='' />
//           <input type="submit" value="Bid" class="btn btn-primary submit${id}" id="submit">
//         </form>`
//       );

//       document.querySelectorAll(`.inc${id}`).forEach(element => {
//         element.addEventListener("click", (event) => {
//           const offset = event.currentTarget.dataset.offset;
//           const counter = document.getElementById(`counter${id}`);
//           const count = Number.parseFloat(counter.dataset.count) + Number.parseFloat(offset);
//           console.log(count)
//           if (count >= 0) {
//             counter.dataset.count = count;
//             counter.innerText = count
//           } else {
//             event.preventDefault()
//           }
//         })
//       })
//     } else {
//       event.currentTarget.nextElementSibling.classList.add("d-none");
//       event.currentTarget.nextElementSibling.innerHTML = "";
//     }
//   });
// });
//
// document.querySelectorAll(`.submit${id}`).forEach(element => {
//   element.addEventListener("click", (event) => {
//     const current_bid = document.querySelector(`.song-bid${id}`).dataset.count;
//     const new_bid = document.getElementById(`counter${id}`).dataset.count;
//     const total = new_bid + current_bid;
//     console.log(total)
//   });
// });





  //       offsetPlus.addEventListener("click", bid(event));






  // const new_bid = document.getElementById(`counter${id}`).dataset.count;
  // const current_bid = document.querySelector(`.song-bid${id}`).dataset.count;
  // const total = new_bid + current_bid;

  // console.log(total)

  // const form = document.querySelector("<div class=""></div>bid");
  // form.addEventListener("submit", update);

//   const update = function(){

//     Rails.ajax({
//       url: "/event_tracks",
//       type: "put",
//       data: "update",
//       success: function(data) {


//       }




//       // error: function(data) {}
//     })

// };







  // const updateFormOnButtonClick = (button) => {
  //   button.addEventListener('click', updateForm);
  // };

  // const buttons = document.querySelectorAll('.incrementer');
  // buttons.forEach(updateFormOnButtonClick);
