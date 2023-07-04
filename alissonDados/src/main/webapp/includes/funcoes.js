
function TestaSenha() {
	 console.log("OK")
	let value = event.target.value;
	 if (!value) return ""
	  value = value.replace(/\D/g,'')
	  value = value.replace(/(\d{2})(\d)/,"($1) $2")
	  value = value.replace(/(\d)(\d{4})$/,"$1-$2")
	  event.target.value = value;	
}