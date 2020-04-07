$(window).on("load", function(){
		

			var cust = gon.customer_invoice.filter(function(cust) {
				return cust.duedate == "2019-04-03";
			})[0];

			console.log(cust);

			var new_cust = cust.duedate;

			console.log(new_cust);

			


});

$( document ).ready(function(){
	$(document).on("change", ".cust-id", function(e){
  
		update_id();
		update_order_info();
		update_table_info();

	});
});


function update_id() {
	
	var cust = gon.customer_invoice.filter(function(cust) {
		return cust.id == 3;
	})[0];


	window.form_field_value = $(".cust-id").val();
	console.log(form_field_value);
	
	$('.selected_id').val(form_field_value);

}

function update_order_info() {
	
	window.orders = gon.customer_orders.filter(function(e) {
		return e.customer_id == form_field_value;
	})[0];

	console.log(orders);
	
	$('.selected_id').val(form_field_value);

}

function update_table_info() {
	
	var order_id = orders.ordernum;

	console.log(order_id);
	
	$('.order_selected_id').val(order_id);




	var order_quantity = orders.quantity; 

	$('.qty').val(order_quantity);


	var order_cost = orders.price; 

	$('.cost').val(order_cost);


	var order_price = orders.total; 

	$('.price').val(order_price);

}
