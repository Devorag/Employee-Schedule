const myHeaders = new Headers();
myHeaders.append("apikey", "bLCTsNpm9KaIiWpkZ2OemFfKv6MIf4Pt");

const requestOptions = {
  method: "GET",
  headers: myHeaders,
  redirect: "follow"
};

fetch("\"https://api.apilayer.com/geo/city/name/Tokyo\"", requestOptions)
  .then((response) => response.text())
  .then((result) => console.log(result))
  .catch((error) => console.error(error));