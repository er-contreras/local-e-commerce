let letters = document.querySelector("#my_title").textContent;
let nLetters = "";

for (let char of letters) {
  nLetters += "<span class = 'char'>" + char + "</span>";  
}

document.querySelector('#my_title').innerHTML = nLetters;
