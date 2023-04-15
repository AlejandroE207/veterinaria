<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="estilo.css">
    <script src="script.js"></script>
    <title>VETERINARIA</title>
</head>
<body>
    <h1 class="titulo1">REGISTRO DE MASCOTA</h1>
    <div class="contenedor_formulario">
        <form action="miServlet" method="post" class="formulario">
            <fieldset class="formulario_fieldset">
                <legend>
                    INGRESA LA INFO DE LA MASCOTA
                </legend>
                <div class="formulario_contenedor_campos">
                    <div class="campo">
                        <label for="tipo" class="campo_label">Especie (gato o perro)</label>
                        <select name="tipo" class="campo_field" id="tipo">
                            <option value="Nada">Selecciona tipo</option>
                            <option value="Perro">Perro</option>
                            <option value="Gato">Gato</option>
                        </select>
                    </div>
                    <div class="campo">
                        <label for="nombre" class="campo_label">Nombre</label>
                        <input type="text" class="campo_field" placeholder="Nombre del animal" name="nombre">
                    </div>
                    <div class="campo">
                        <label for="raza" class="campo_label">Raza</label>
                        <input type="text" class="campo_field" placeholder="La raza del animal" name="raza">
                    </div>
                    <div class="campo">
                        <label for="color" class="campo_label">Color</label>
                        <input type="text" class="campo_field" placeholder="Color de mascota" name="color">
                    </div>
                    <div class="campo">
                        <label for="edad" class="campo_label">Edad</label>
                        <input type="number" min="0" class="campo_field" placeholder="Edad de mascota" name="edad">
                    </div>
                    <div class="campo" id="cont_nivel">
                        <label for="nivelEntreno" class="campo_label" >Nivel de entreno (0-10)</label>
                        <select name="nivelEntreno" class="campo_field" id="nivelEntreno" >
                            <option value="0">Selecciona un nivel</option>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                        </select>
                    </div>
                    <div class="campo" id="cont_toxo">
                        <label for="toxoplasmosis" class="campo_label">Tiene toxoplasmosis?</label>
                        <select name="toxoplasmosis" class="campo_field" id="toxopla" >
                            <option value="No">Selecciona opcion</option>
                            <option value="Si">Si</option>
                            <option value="No">No</option>
                        </select>
                    </div>
                   
                </div> 
                <div class="flex alinear-centro">
                    <input type="submit" class="boton enviar w-sm-100" value="Enviar">
                </div>
            </fieldset>
        </form>
    </div>
    <script src="script.js"></script>
</body>
</html>