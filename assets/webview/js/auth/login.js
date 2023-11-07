$(document)
.on("submit","#form-login",function(e){
		e.preventDefault()
		var form=$(this).serialize();
		console.log(form)
		http_request('webview/auth/process-signin','POST',form)
		.done(function(res){
			Msg.success(res.message);
			setTimeout(function () {
				location.href=base_url('webview/home')
			},1000)
		})
})
	.on("click", "#forget_password", function () {
		http_request('webview/auth/forget-password', 'POST', { email: $("[name='username']").val() })
			.done(function (result) {
				Msg.success(result.message)
			})
	})
