$(window).on("load", function(){
	
	
	bind1();

});


//Update price based on qty
function update_price() {
	
	window.price = $('.cost').val() * $('.qty').val();
	price = price.toFixed(2);
	$('.price').val(price);
	
	
	console.log("Hi");
	
	
	}

	//Keeps changing values on change
function bind1() {
	$('.cost').blur(update_price);
	$('.qty').blur(update_price);

	}