$(document)
	.on("change", "#select_filter", function () {
		location.href=base_url('webview/history?m='+$(this).val())
	})
