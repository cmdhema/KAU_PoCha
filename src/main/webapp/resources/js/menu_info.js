function viewProduct( id ) {
	
}

function product_submit ( sType, sAction, oObj) {
	
}

function add_wishlist_nologin ( sAction ) {
	
}

function addCart(name, count, cost, url) {
	var intCost = cost.substring(0,2) + cost.substring(3,6);
	console.log(name +',' + count+','+intCost+','+url);
	
	var menu = {
		'name' : name,
		'count' : count,
		'cost' : intCost,
		'photoUrl' : url
	}
	
	$.ajax({
		type:'POST',
		url:'/cart/add',
		contentType: 'application/json',
		data:JSON.stringify(menu)
	});
}