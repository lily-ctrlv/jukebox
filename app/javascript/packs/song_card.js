const grow = document.querySelectorAll("song-card").forEach((img) => {
  grow.addEventListener("click", (event) => {
    event.currentTarget.classList.toggle("img-circle");
  });
});
