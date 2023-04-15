var tipo = document.getElementById("tipo");
document.getElementById("cont_toxo").style.display = 'none'; 
document.getElementById("cont_nivel").style.display = 'none'; 


tipo.addEventListener("change",function(){
    if(tipo.value=="Perro" ){
        document.getElementById("cont_nivel").style.display = 'block';  
    }else{
        document.getElementById("cont_nivel").style.display = 'none'; 
    }
    if(tipo.value=="Gato" ){
        document.getElementById("cont_toxo").style.display = 'block';  
    }else{
        document.getElementById("cont_toxo").style.display = 'none'; 
    }
    
})