function openDeliveryPreferencesPage() {
	deliPreChild = window.open("/fruitlight/deliveryPreferences", "_blank","top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no", true);
}

function deliveryPreferencesCloseEvent() {
	deliPreChild.close();
}