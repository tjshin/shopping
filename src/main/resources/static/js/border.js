class OrderService {
	add(order) {
		return new Promise((resolve, reject) => {
			console.log("add order");

			$.ajax({
				type: 'post',
				url: '/orders/create',
				data: JSON.stringify(order),
				contentType: "application/json; charset=utf-8",
				success: function(result, status, xhr) {

					resolve(result);

				},
				error: function(xhr, status, er) {

					reject(er);

				}
			});
		});
	}
}