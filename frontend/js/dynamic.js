var fruits = ["apple","pear","banana","orange"];

window.onload = () => {
  for(let i=0;i<fruits.length;i++){
    list = document.createElement("LI");
    list.setAttribute("href","#");
    list.innerHTML = fruits[i];
    document.getElementById('list-container').appendChild(list);
  }
}