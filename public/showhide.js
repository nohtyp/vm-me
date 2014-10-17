$(document).ready(function () {
	toggleFields();

	$("#nginxver").change(function () {
		toggleFields();
	});

  });

function toggleFields() {
	if ($("#nginxver").val() =="nginx")
		$("#nginxversion").show();
	else
		$("#nginxversion").hide();
}
