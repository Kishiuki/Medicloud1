$(document)
.on("click","#submit_register",function(e){
		e.preventDefault()
		var form=$(this).closest('form').serialize();
		console.log(form)
		http_request('webview/auth/process-register','POST',form)
		.done(function(res){
			Msg.success(res.message);
			setTimeout(function () {
				location.href=base_url('webview/auth')
			},1000)
		})
	})
