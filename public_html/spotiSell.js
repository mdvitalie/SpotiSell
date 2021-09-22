//	Creates a new XMLHttpRequest object
var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function () {
  if (this.readyState == 4 && this.status == 200) {
    carTable(this);//Calls the function
  }
};
//Send a Request To a Server
//Specifies the type of request
xhttp.open("GET", "products.xml", true);
//Sends the request to the server (used for GET)
xhttp.send();

//==================================================================================================================

let xmlCarTable = document.querySelector("#xmlCarTable");
let tablerecord = document.getElementsByClassName("tablerecord");

//Function carTable(xml) creates a table with content from the XML file products.xml
function carTable(xml) {

  var item, xmlDoc, table;
  xmlDoc = xml.responseXML;
  table = "";
  headerInfo = "";

  console.log("Show XML table");
  item = xmlDoc.getElementsByTagName('code');

  table += "<table class='tablerecord'><tr><th>Car ID</th><th>Name</th><th>Description</th><th>Quantity</th><th>Price</th></tr>";

  for (let i = 0; i < item.length; i++) {
    table += "<td>" + item[i].getAttribute('codeID') + "</td>" +
      "<td>" + item[i].getElementsByTagName("name")[0].childNodes[0].nodeValue + "</td>" +
      "<td>" + item[i].getElementsByTagName("description")[0].childNodes[0].nodeValue + "</td>" +
      "<td>" + item[i].getElementsByTagName("quantity")[0].childNodes[0].nodeValue + "</td>" +
      "<td>" + item[i].getElementsByTagName("unitPrice")[0].childNodes[0].nodeValue + "</td></tr>";
  }
  table += "</table>";

  xmlCarTable.innerHTML = table;
  xmlCarTable.style.display = "none";

}

//==================================================================================================================


//Click event buttton
let search_btn = document.getElementById("search_btn");

//search input
let filterInput = document.getElementById("searchForm__input");

//EventListener
search_btn.addEventListener('click', showHint);

//function showHint(event) will display the table with the result form the search input by the user
function showHint(event) {

  let fiterValue = document.getElementById("searchForm__input").value.toUpperCase().trim();
  let tr = document.querySelectorAll(".tablerecord tr");

  let CarTable = document.getElementById('carTable');

  CarTable.innerHTML = "";
  let table = document.createElement("table");


  if (fiterValue !== "") {
    console.log("Filter value: ", fiterValue);
    for (let i = 0; i < tr.length; i++) {
      let td = tr[i].getElementsByTagName("td")[0];

      if (td) {
        let txtValue = td.textContent || td.innerText;

        if (txtValue.toUpperCase() === fiterValue) {

          CarTable.appendChild(table);
          table.innerHTML = "<tr><th>Car ID</th><th>Name</th><th>Description</th><th>Quantity</th><th>Price</th></tr>";
          table.appendChild(tr[i]);

          document.getElementById("error").style.display = "none";
          break;
        }
        else {

          document.getElementById("error").style.display = "block";
        }
      }
    }
  }
  else {
    xmlCarTable.style.display = "none";
    document.getElementById("error").style.display = "block";

  }
  event.preventDefault();
}



//==================================================================================================================
