function formulario(){ 
    var nombreCap = document.getElementById("nombre");
    var emailCap = document.getElementById("email");
    var asuntoCap = document.getElementById("asunto");
    var mensajeCap = document.getElementById("mensaje");

    let bandera = false;
    var mensaje ="";

    if(nombreCap.value === "" || nombreCap.value === null){
        mensaje += "el nombre es oblgatorio \n";
        bandera  = true;
    }
    else{        
        console.log(nombreCap.value);
    }

    if(emailCap.value === "" || emailCap.value === null){
        mensaje += "el email es oblgatorio \n";
        bandera = true;
    }
    else{        
        console.log(emailCap.value);
    }

    if(asuntoCap.value === "" || asuntoCap.value === null){
        mensaje += "el asunto es oblgatorio \n";
        bandera = true;
    }
    else{        
        console.log(asuntoCap.value);
    }

    if(mensajeCap.value === "" || mensajeCap.value === null){
        mensaje += "el mensaje es oblgatorio \n";
    }
    else{       
        console.log(mensajeCap.value);
    }

    if(bandera == true ){
        alert(mensaje);
    }
}