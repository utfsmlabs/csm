// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function pad(num, size) {
    var s = num+"";
    while (s.length < size) s = "0" + s;
    return s;
}

$(document).ready(function() {
	var serverTime = new Date(Date.parse($("#current-time").text()));
	var timeDelta = Math.round((new Date() -serverTime)/1000);

	setInterval(function(){
			//instance current time, addSeconds to current time + timeDelta, update clock
			currentDate = new Date();
			currentDate.setSeconds(currentDate.getSeconds() + timeDelta);
			$(".clock").text(pad(currentDate.getHours(),2) + ":" + pad(currentDate.getMinutes(),2) + ":" + pad(currentDate.getSeconds(),2))
		}, 1000)
});