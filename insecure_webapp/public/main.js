const userMessageForm = document.querySelector("form");

document.cookie = "username=me@me.com";
document.cookie = "password=super_safe_password";
if (document.readyState == "loading") {
  document.addEventListener("DOMContentLoaded", ready);
} else {
  ready();
}

var query = new URL(window.location).searchParams.get("query");
loadedResults = [];

fetch(`http://localhost:3001/api/search1/${query}`)
  .then((res) => res.json())
  .then((data) => {
    loadedResults = [...data];
    console.log(loadedResults);
    buildTable(loadedResults);
  });

function ready() {
  var query = new URL(window.location).searchParams.get("query");
  document.getElementById("query-input").value = query;
  document.getElementById("query-output").innerHTML = query;
}

function buildTable(data) {
  var table = document.getElementById("myTable");

  for (var i = 0; i < data.length; i++) {
    var row = `<tr>
						<td>${data[i].product_name}</td>
						<td>${data[i].price}</td>
						<td>${data[i].stock}</td>
				  </tr>`;
    table.innerHTML += row;
  }
}

// buildTable(myArray);
function formSubmitHandler(event) {
  console.log("submited!");
}

userMessageForm.addEventListener("submit", formSubmitHandler);
