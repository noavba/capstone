document.addEventListener("DOMContentLoaded", function(){
	const isNotCanadianRadio = document.querySelectorAll('[name="[inquiry[is_Canadian]"]');
	const englishTestWritten = document.getElementById('english-test-written');

	//adding event listener
	isNotCanadianRadio.forEach(function(radio){
		radio.addEventListener('click', function(){
			if(radio.value === "0") {
				console.log("worked");
			} else {
				console.log("didn't work");
			}
		});
	});
});

