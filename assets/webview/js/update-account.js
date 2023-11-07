$(document)
	.on("click", "#update_account", function (e) {
		e.preventDefault();
		var form = $(this).closest('form').serialize();
		bootbox.confirm({
			title: 'Konfirmasi',
			message: 'Yakin melakukan perubahan data?',
			size: 'small',
			buttons: {
				confirm: {
					label: 'Yes',
					className: 'btn-success'
				},
				cancel: {
					label: $lang.bootbox_btn_no,
					className: 'btn-danger'
				}
			},
			callback: function (result) {
				if (result) {	
					http_request('webview/account/update-account', 'POST', form)
						.done(function (result) {
							Msg.success(result.message);
							if ($("#password") != "") {
								setTimeout(function () {
									location.href=base_url('webview/auth/signout')
								},1000)
							}
						})
				}
			}
		})
		
	})
	.on("click", "#logout", function () {
		bootbox.confirm({
			title: 'Konfirmasi',
			message: 'Yakin logout?',
			size: 'small',
			buttons: {
				confirm: {
					label: 'Yes',
					className: 'btn-success'
				},
				cancel: {
					label: $lang.bootbox_btn_no,
					className: 'btn-danger'
				}
			},
			callback: function (result) {
				if (result) {
					location.href = base_url('webview/auth/signout');
				}
			}
		})
	})
