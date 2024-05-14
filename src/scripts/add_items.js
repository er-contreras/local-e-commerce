import data from '../../assets/items.json';

function addItems() {
  const items = document.querySelector("#items");
  const dataSize = data.items.length

  for (let i = 0; i < dataSize; i++) {
    const div = document.createElement("div");
    const header = document.createElement("h3");
    const ul = document.createElement("ul");
    const liPrice = document.createElement("li");
    const liDescription = document.createElement("li");

    items.appendChild(div);
    div.setAttribute("class", "item");
    header.textContent = `${data.items[i].name}`;
    div.appendChild(header);

    div.appendChild(ul);

    liPrice.textContent = `${data.items[i].price}`;
    liDescription.textContent = `${data.items[i].description}`;
    ul.appendChild(liPrice);
    ul.appendChild(liDescription);
  }
}

export default addItems;
