
$("#search_jenis_pemeriksaan").select2({
	minimumInputLength: 0,
	allowClear: false,
	multiple: false,
	placeholder: 'click untuk mencari',
	width: '100%',
	ajax: {
			url: base_url('webview/lab/pemeriksaan/search-jenis-pemeriksaan-select2-with-cost'),
			headers: {
					'x-user-agent': 'ctc-webapi'
			},
			data: function(params) {
					return {
						search: params.term
					}
			},
			processResults: function(data){
					return {results: data};
			}
	},
})
$('[name="tgl_lahir"]').datepicker({
	changeMonth: true,
	changeYear: true,
	showOtherMonths: true,
	selectOtherMonths: true,
	dateFormat: 'yy-mm-dd',
	reverseYearRange: true,
	yearRange: 'c-80:c',
	container: '#modal-manage-pasien'
});
$('[name="tgl_periksa"]').datepicker({
	changeMonth: true,
	changeYear: true,
	showOtherMonths: true,
	selectOtherMonths: true,
	dateFormat: 'yy-mm-dd',
	reverseYearRange: true,
	yearRange: 'c:c+1',
	minDate: 0,
	maxDate: +14,
	container: '#modal-manage-pasien'
});
$(document)
	.on("click","#submit_register",function(e){
		e.preventDefault();
		$that=$(this)
		var form=$(this).closest('form').serialize();
		http_request('webview/lab/pemeriksaan/save-self-register','POST',form)
			.done(function (res) {
				Msg.success(res.message);
				$that.find('.reset-form').val('')
			// if (res.action = "call-print") {
			// 	var modalRegSuccessID = "#modal-reg-success";
			// 	var _body = $(modalRegSuccessID).find('.modal-body');
			// 	$.each(res.data, function (key, val) {
			// 		$(_body).find("." + key).text(val);
			// 	})
			// 	$(modalRegSuccessID).modal({
			// 			effect: 'effect-slide-in-right',
			// 			backdrop: 'static',
			// 			keyboard: false,
			// 			show: true
			// 	})
			// 	.on('hidden.bs.modal', function () {
			// 		setTimeout(function(){
			// 			location.href=base_url('auth');
			// 		},2000)
			// 	})
			// } else {
			// 	Msg.success(res.message);
			// 	setTimeout(function(){
			// 		location.href=base_url('auth');
			// 	},2000)
			// }
		})
	})
$('.time-format').mask('H0:M0', {
translation: {
            'H': {
                pattern: /[0-2]/
            },
            'M': {
                pattern: /[0-5]/
            },
            // 'S': {
            //     pattern: /[0-5]/
            // }
        }
});
