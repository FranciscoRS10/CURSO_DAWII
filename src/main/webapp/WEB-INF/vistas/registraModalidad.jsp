<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Ejemplos de CIBERTEC - Jorge Jacinto </title>
</head>
<body>

<div class="container">
<h3>Registra Modalidad</h3>

	<form  id="id_form" method="post"> 
			<div class="row">
				<div class="form-group col-md-6">
					<label class="control-label" for="id_nombre">Nombre</label>
					<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
				</div>
				<div class="form-group col-md-3">
					<label class="control-label" for="id_num_hombres"># Hombres</label>
					<input class="form-control" id="id_num_hombres" name="numHombres" placeholder="Ingrese el n�mero de hombres" type="text" maxlength="2"/>
				</div>
				<div class="form-group col-md-3">
					<label class="control-label" for="id_num_mujeres"># Mujeres</label>
					<input class="form-control" id="id_num_mujeres" name="numMujeres" placeholder="Ingrese el n�mero de mujeres" type="text" maxlength="2"/>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<label class="control-label" for="id_deporte">Deporte</label>
					<select id="id_deporte" name="deporte.idDeporte" class='form-control'>
						<option value=" ">[Seleccione]</option>    
					</select>
			    </div>
				<div class="form-group col-md-3">
					<label class="control-label" for="id_maxima">Edad M�xima</label>
					<input class="form-control" id="id_maxima" name="edadMaxima" placeholder="Ingrese la edad m�xima" type="text" maxlength="2"/>
				</div>
				<div class="form-group col-md-3">
					<label class="control-label" for="id_minima">Edad M�nima</label>
					<input class="form-control" id="id_minima" name="edadMinima" placeholder="Ingrese la edad m�nima" type="text" maxlength="2"/>
				</div>
				
		    </div>
		    <div class="row">
				<div class="form-group col-md-12" align="center">
					<button type="button" class="btn btn-primary" >Registra</button>
				</div>
			</div>
	</form>
</div>

<script type="text/javascript">
console.log("inicio");
$.getJSON("cargaDeporte", {}, function(data){
	console.log("inicio2");
	$.each(data, function(index,item){
		$("#id_deporte").append("<option value="+item.idDeporte +">"+ item.nombre +"</option>");
	});
});
</script>

<script type="text/javascript">

$('#id_form').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	nombre: {
    		selector : '#id_nombre',
            validators: {
                notEmpty: {
                    message: 'El nombre es un campo obligatorio'
                },
                stringLength :{
                	message:'El nombre es de 5 a 100 caracteres',
                	min : 5,
                	max : 100
                }
            }
        },
        numHombres: {
    		selector : '#id_num_hombres',
            validators: {
                notEmpty: {
                    message: 'El n�mero de hombres es un campo obligatorio'
                },
                lessThan: {
	                value: 15,
	                inclusive: true,
	                message: 'La edad es menor a 15'
	            },
	            greaterThan: {
	                value: 0,
	                inclusive: true,
	                message: 'La edad es mayor a 0'
	            }
            }
        },
        numMujeres: {
    		selector : '#id_num_mujeres',
            validators: {
            	notEmpty: {
                    message: 'El n�mero de mujeres es un campo obligatorio'
                },
                lessThan: {
	                value: 15,
	                inclusive: true,
	                message: 'La edad es menor a 15'
	            },
	            greaterThan: {
	                value: 0,
	                inclusive: true,
	                message: 'La edad es mayor a 0'
	            }
            }
        },
        edadMaxima: {
    		selector : '#id_maxima',
            validators: {
            	notEmpty: {
                    message: 'La edad m�xima es un campo obligatorio'
                },
                lessThan: {
	                value: 35,
	                inclusive: true,
	                message: 'La edad es menor a 35'
	            },
	            greaterThan: {
	                value: 18,
	                inclusive: true,
	                message: 'La edad es mayor a 18'
	            }
            }
        },
        edadMinima: {
    		selector : '#id_minima',
            validators: {
            	notEmpty: {
                    message: 'La edad m�nima es un campo obligatorio'
                },
                lessThan: {
	                value: 35,
	                inclusive: true,
	                message: 'La edad es menor a 35'
	            },
	            greaterThan: {
	                value: 18,
	                inclusive: true,
	                message: 'La edad es mayor a 18'
	            }
            }
        },
        deporte: {
    		selector : '#id_deporte',
            validators: {
            	notEmpty: {
                    message: 'El deporte un campo obligatorio'
                },
            }
        },
    	
    }   
});
</script>


</body>
</html>




