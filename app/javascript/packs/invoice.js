$(window).on("load", function(){
	
	
		window.form_field_value = $(".cust_id").val();
		console.log(form_field_value);
		
		$('.selected_id').val(form_field_value);
		
		
		//Declare Order Contents Table
		order_info();
		car_info();

		
		//Declare Shipping Variables
		container_info();
		warehouse_info();
		location_info();
		via_info();
		

		/*
		//Set Totals 
		set_price(); 
		set_tax();
		set_subtotal();
		set_total();
		*/
		
		
		//Set Order Contents Table
		set_table_info();

		//Set Shipping Contents Table
		set_shipping_table();
		
	//bind1();

});


/*

//Tables updates order contents
$( document ).ready(function(){
$(document).on("change", ".cust-id", function(e){

//update_id();
order_info();
update_car_info();

update_table_info();
		
});
});



//Tables updates shipping contents
$( document ).ready(function(){
$(document).on("change", ".cust-id", function(e){

update_container_info();
update_warehouse_info();
update_location_info();
update_via_info();

update_shipping_table();

});
});

//Updates totals table on change
$( document ).ready(function(){
$(document).on("change", ".cust-id", function(e){

var temp_subtotal = orders.total;

var total = Number(orders.total)+(Number(orders.total)*((Number($('#9').val()))/100));

total = total.toFixed(2);

$('.total').val(total);
$('.subtotal').val(temp_subtotal);
		
});
});


function update_id() {
}
*/


function order_info() {


	window.orders = gon.customer_orders.filter(function(e) {

		//console.log(e.customer_id);

			return e.customer_id == form_field_value;
		
		})[0];

/*
	window.orders = gon.customer_orders.filter(function(e) {

		//console.log(e.customer_id);

		if( orders == undefined)
		{
		
				return e.customer_id == undefined;
		}
		else{
		
			return e.customer_id == form_field_value;
		
		}
		
		})[0];

*/

console.log(orders);

}


function car_info() {

//var und_cars={model:"No Cars in Order", vinnumber:"NA", year:"NA"}; 
//console.log(e.order_id);
//console.log(orders.id);


window.cars = gon.customer_cars.filter(function(e) {

		return e.order_id == orders.id;


})[0];

/*
window.cars = gon.customer_cars.filter(function(e) {

	//return e.order_id == orders.id;
	//console.log(e.order_id );
	
	if( cars == undefined)
	{
	
			return e.order_id == undefined;
	}
	else{

		return e.order_id == orders.id;
	
	}

})[0];
*/


console.log(cars);

}



function container_info() {

window.containerorders = gon.customer_containerorders.filter(function(e) {

return e.order_id == orders.id;


})[0];



window.containers = gon.customer_containers.filter(function(e) {

	if( containerorders== undefined)
	{

			return e.id== undefined;
	}
	else{

		return e.id== containerorders.container_id;

	}
	
})[0];

//console.log(containers);

}



//Update warehouse name 
function warehouse_info() {

window.shipments = gon.customer_shipments.filter(function(e) {

if( containers == undefined)
{

		return e.id == undefined;
}
else{

	return e.id == containers.shipment_id;

}

})[0];

window.warehouses = gon.customer_warehouses.filter(function(e) {

if( shipments == undefined)
{

		return e.id == undefined;
}
else{

	return e.id == shipments.warehouse_id;

}


})[0];

console.log(warehouses);

}



//Update location 

function location_info() {

window.locations = gon.customer_locations.filter(function(e) {

if( warehouses == undefined)
{

		return e.id == undefined;
}
else{

	return e.id == warehouses.location_id;

}

})[0];

}


//Update via method 

function via_info() {

window.via = gon.customer_via.filter(function(e) {

if( shipments == undefined)
{

		return e.id == undefined;
}
else{

	return e.id == shipments.shipmentmethod_id;

}

})[0];

console.log(via);

}




/****Total area calculations below ******/

/*

//Update price based on qty
function set_price() {
var row = $(this).parents('.item-row');
window.price = row.find('.cost').val() * row.find('.qty').val();
price = price.toFixed(2);
isNaN(price) ? $('.price').val('NaN') : $('.price').val(price);


update_subtotal();

}


//Update total based on tax
function set_tax() {

	
window.new_total = Number(orders.total)+(Number(orders.total)*((Number($('#9').val()))/100));
new_total = new_total.toFixed(2);


$('.total').val(new_total);

update_total();

//Comments to verify values
console.log("New Total");
console.log(new_total);

}
*/

/*
//Keeps changing values on change
function bind1() {
$('.cost').blur(update_price);
$('.qty').blur(update_price);
$('#9').blur(update_tax);

}
*/

/*

function set_subtotal() {
var subtotal = price;

//Not needed unless we add more columns 

$('.price').each(function(i){
var price = $(this).html();
if (!isNaN(price)) subtotal += Number(price);
});


$('.subtotal').val(subtotal);

//update_balance();
}



function set_total() {

$('.total').val(new_total);

}

*/




//Selects specific item from array and place it in table
function set_table_info() {




if (orders == undefined || orders == null) {

	$('.order_selected_id').val("NA");
	
	} 
	else {
	
	var order_id = orders.ordernum;

	console.log(order_id);

	$('.order_selected_id').val(order_id);

	}
	

//Arrays for cars 
//Test values ["Saab", "Volvo", "BMW"]
var table_cars=[]; 


if (cars == undefined || cars == null) {
table_cars.push("No Cars in Order");
} else {

table_cars.push("Car Model: "+cars.model);
}

console.log(table_cars);

if (cars == undefined || cars == null) {
table_cars.push("Vin Number: NA");
} else {
table_cars.push("Vin Number: "+cars.vinnumber);
}


if (cars == undefined|| cars == null) {
table_cars.push("Year: NA");
} else {
table_cars.push("Car Year: "+cars.year);
}


//table_cars.push(cars.model);
//table_cars.push(cars.year);

console.log(table_cars);

//Array.join glues the array together separated by the argument 
$('.item_desc').val(table_cars.join("\n"));



//Updates order qty
var order_quantity = orders.quantity; 

$('.qty').val(order_quantity);


var order_cost = orders.price; 

$('.cost').val(order_cost);


var order_price = orders.total; 

$('.price').val(order_price);


$('.subtotal').val(order_price);


}



function set_shipping_table() {


//Updating container number
if (containers == undefined || containers == null) {
		
$('.cointainer_num').val("NA");

} else {

var container_num = containers.containernum;

$('.cointainer_num').val(container_num);
}



//Updating warehouse name
if (warehouses == undefined || warehouses == null) {
	
$('.warehouse').val("No Warehouse Assigned");

} else {

var warehouse_name = warehouses.warehousename;

$('.warehouse').val(warehouse_name);
}


//Updating location address
if (locations == undefined || containers == null) {
		
$('.location').val("No Location Assigned");

} else {

var location_address = locations.city;

$('.location').val(location_address);
}


//Updating via method
if (via == undefined || via == null) {
		
$('.method').val("NA");

} else {

var via_method = via.shipmentmethod;

$('.method').val(via_method);
}


}