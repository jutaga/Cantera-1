/* const cambiarColor = (id,estilo) => {
    let element = document.querySelector(`#${id}`);
    element.classList.add(estilo);    
} */


   
const cambiarColores = (id) => {
    
    let element = document.querySelector(`#${id}`);
    let element1 = document.querySelector(`#principal`);
    console.log(element.value);
    
    switch(Number(element.value)){

        case 1:            
            element1.classList.add('estilo1');
            element1.classList.remove('estilo2');
            element1.classList.remove('estilo3');
            element1.classList.remove('estandar');
            break
        case 2:
            element1.classList.add('estilo2');
            element1.classList.remove('estilo1');
            element1.classList.remove('estilo3');
            element1.classList.remove('estandar');
            break
        case 3:
            element1.classList.add('estilo3'); 
            element1.classList.remove('estilo2');
            element1.classList.remove('estilo1');
            element1.classList.remove('estandar');
            break
        case 4:
            element1.classList.add('estandar');
            element1.classList.remove('estilo2');
            element1.classList.remove('estilo3');
            element1.classList.remove('estilo1');
    }
}