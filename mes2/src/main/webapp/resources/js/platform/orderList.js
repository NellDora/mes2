/* Created by Tivotal */

function insertOrder() {
	$.ajax({
		url : "/platform/insertOrder",
		method : "GET",
		success : function(response) {
			$("#bottomContent").html(response);
		},
		error : function() {
			alert("fail");
		}
	});
}

function getOrderDetail(order_code, order_date) {
	$.ajax({
		url : "/platform/orderDetail?order_code=" + order_code,
		data : {
				"order_date" : order_date
				},
		method : "GET",
		success : function(response) {
			$("#bottomContent").html(response);
		},
		error : function() {
			alert("fail");
		}
	});
}