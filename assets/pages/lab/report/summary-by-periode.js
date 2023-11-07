$(document).ready(function () {
		if(getUrlParameter('clinic_id')==undefined && $("[name='clinic_id']").val() != '' && $("#source_clinic").val() != null) {
			var year = $("#select_year option:selected").val();
			var month = $("#select_month option:selected").val();
			location.href = base_url($module_path_lab+'report/by-periode?clinic_id='+getSelectedClinic()+'&periode=' + year + '-' + month);
		}
	})
	.on("change", "#select_month,#select_year,#source_clinic", function () {
		var year = $("#select_year option:selected").val();
		var month = $("#select_month option:selected").val();
		setTimeout(function () {
			location.href = base_url($module_path_lab+'report/by-periode?clinic_id='+getSelectedClinic()+'&periode=' + year + '-' + month);
		},200)
	})
