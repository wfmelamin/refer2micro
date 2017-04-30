function isNumeric(n) {
	return !isNaN(parseFloat(n)) && isFinite(n);
}
function isEmptyObject(obj) {
	for (var i in obj) if (obj.hasOwnProperty(i)) return false;
	return true;
}