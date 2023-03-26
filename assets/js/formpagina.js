
//Variables
const nombre = document.querySelector('#nombre')
const email = document.querySelector('#email')
const asunto = document.querySelector('#asunto')
const mensaje = document.querySelector('#mensaje')
const formulario = document.querySelector('#forms')

//buttons

const btnEnviar = document.querySelector('#enviar')
const btnReset = document.querySelector('#resetear')

const resultadoEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

escuchadorEventos()


//escuchar todos los eventos=====
function escuchadorEventos(){
	document.addEventListener('DOMContentLoaded',iniciarWebApp)

	nombre.addEventListener('blur',validarInformacion)
	email.addEventListener('blur',validarInformacion)
	asunto.addEventListener('blur',validarInformacion)
	mensaje.addEventListener('blur',validarInformacion)


	//botones
	btnReset.addEventListener('click', resetearFormulario)
	formulario.addEventListener('submit', enviarFormulario)

}

function iniciarWebApp(){
	//alert('iniciando web app')
	btnEnviar.disabled = true
	nombre.classList.remove('correcto')
	email.classList.remove('correcto')
	asunto.classList.remove('correcto')
	mensaje.classList.remove('correcto')
	nombre.classList.remove('error-mostrar')
	email.classList.remove('error-mostrar')
	asunto.classList.remove('error-mostrar')
	mensaje.classList.remove('error-mostrar')
	const err = document.querySelector('p.error')

	if(err){
		err.remove()
	}
}


function validarInformacion(elemento){
	//console.log('te saliste del input')
	const err = document.querySelector('p.error')

	if(err){
		err.remove()
	}


	if(elemento.target.value.length > 0){
		//console.log('si hay info en')
		elemento.target.classList.remove('error-mostrar')
		elemento.target.classList.add('correcto')	
	}
	else{
		//console.log('no hay info')
		elemento.target.classList.remove('correcto')
		elemento.target.classList.add('error-mostrar')
		mostrarError('todos los campos deben ser llenados')
	}

	//console.log(elemento.target.type)
	if(elemento.target.type === 'email'){
		
		if(resultadoEmail.test(elemento.target.value)){
			elemento.target.classList.remove('error-mostrar')
			elemento.target.classList.add('correcto')
		}
		else{
		elemento.target.classList.remove('correcto')
		elemento.target.classList.add('error-mostrar')
		mostrarError('email no es valido')
		}
	}

	//condicion para activar el boton de enviar
	//que todos los campos estan llenos el valo sea !=''
	//btnEnviar.disables = false

	if(resultadoEmail.test(email.value) !='' && nombre.value !='' && asunto.value !='' && mensaje.value !='' ){
		btnEnviar.disabled = false
	}

}

function mostrarError(mensaje){
	const indicarError = document.createElement('p')
	indicarError.textContent = mensaje

	indicarError.classList.add('alert','alert-danger','my-5','text-center','error')//esto añade las clases de estilos

	const numeroErrores = document.querySelectorAll('.error') //asignarle a la variable todos los elementos que tengan la clases error

	//console.log(numeroErrores.length)

	if(numeroErrores.length === 0){
		formulario.appendChild(indicarError)
	}

}

function resetearFormulario(){
	formulario.reset()
	iniciarWebApp()
}

function enviarFormulario(elemento){
	//console.log(elemento)
	elemento.preventDefault()
	swal({
	title: 'tu mensaje ha sido enviado',
	text: 'pronto resiviras informacion :D',
	timer: 4000,
	buttons: false
	})
	resetearFormulario()

	
}
/*
swal({
	title: 'tu mensaje ha sido enviado',
	text: 'pronto resiviras informacion :D'
	timer 3000,
	buttons: false
})*/


