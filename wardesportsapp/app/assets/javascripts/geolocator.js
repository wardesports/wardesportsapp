$(document).on('turbolinks:load', function() {
  getLocation();
});



function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(getEvent);
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}
function getEvent(position) {
  $.ajax({
    dataType : "script",
    url: "/events?lat=${position.coords.latitude}&long=${position.coords.longitude}",

  });
}
