console.log("The script is running");

function addPinkBorder(event) {
  event.target.style.border = "2px solid pink";
}

var els = document.getElementsByTagName("p");
var el = els[0];
el.addEventListener("click", addPinkBorder);