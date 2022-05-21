
const estilo = (id,clase) => {

    let element = document.querySelector(`#${id}`);


    let par1 = document.getElementById('par1');
    let par2 = document.getElementById('par2');
    let par3 = document.getElementById('par3');
    let par4 = document.getElementById('par4');
    let par5 = document.getElementById('par5');
    

    let Impar1 = document.getElementById('impar1');
    let Impar2 = document.getElementById('impar2');
    let Impar3 = document.getElementById('impar3');
    let Impar4 = document.getElementById('impar4');
    let Impar5 = document.getElementById('impar5');

    if(Number(element.value) == 1){
        

        par1.classList.add('estilo1');
        par2.classList.add('estilo1');
        par3.classList.add('estilo1');
        par4.classList.add('estilo1');
        par5.classList.add('estilo1');

        Impar1.classList.remove('estilo2');
        Impar2.classList.remove('estilo2');
        Impar3.classList.remove('estilo2');
        Impar4.classList.remove('estilo2');
        Impar5.classList.remove('estilo2');
        
    }
    if(Number(element.value) == 2){

        Impar1.classList.add('estilo2');
        Impar2.classList.add('estilo2');
        Impar3.classList.add('estilo2');
        Impar4.classList.add('estilo2');
        Impar5.classList.add('estilo2');  
        
        par1.classList.remove('estilo1');
        par2.classList.remove('estilo1');
        par3.classList.remove('estilo1');
        par4.classList.remove('estilo1');
        par5.classList.remove('estilo1');
    }

}