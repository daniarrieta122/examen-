Algoritmo  sin_titulo
	Definir opcion,monto Como Entero;
	Definir usuario, contrasena, usuario_ingresado, contrasena_ingresada Como Cadena;
	Definir intentos Como Entero;
	usuario <- "usuario1";
	contrasena <- "clave123";
	intentos <- 0;
	
	Repetir
		Escribir "Bienvenido al cajero autom�tico";
		Escribir "Ingrese su usuario:";
		Leer usuario_ingresado;
		Escribir "Ingrese su contrase�a:";
		Leer contrasena_ingresada;
		Si (usuario_ingresado = usuario) Y (contrasena_ingresada = contrasena) Entonces
			Escribir "Acceso permitido. Bienvenido ", usuario;
			
		Sino
			intentos <- intentos + 1;
			Escribir "Usuario o contrase�a incorrectos. Intentos restantes: ", (3 - intentos);
		FinSi
	Hasta Que (intentos >= 3) O ((usuario_ingresado = usuario) Y (contrasena_ingresada = contrasena));
	Si intentos >= 3 Entonces
		Escribir "Demasiados intentos fallidos. El sistema est� bloqueado.";

FinSi
	Repetir
		Escribir "Menu de opciones:";
		Escribir "<1> Depositar";
		Escribir "<2> Retirar";
		Escribir "<3> Consultar";
		Escribir "<4> Salir";
		Escribir "Ingrese la opci�n a realizar: ";
		Leer opcion;
		Segun opcion Hacer
			Caso 1:
				Escribir "Ingrese el monto a depositar: ";
				Leer monto;
				Si monto > 0 Entonces
					Escribir "Dep�sito exitoso de ", monto, " colones.";
				Sino
					Escribir "El monto debe ser mayor a cero.";
				FinSi
			Caso 2:
				Escribir "Ingrese el monto a retirar: ";
				Leer monto;
				Si monto > 0 Entonces
					Escribir "Retiro exitoso de ", monto, " colones.";
				Sino
					Escribir "El monto debe ser mayor a cero.";
				FinSi
			Caso 3:
				Escribir "Consulta se imprimi� en Recibo impreso.";
			Caso 4:
				Escribir "Se finalizaron las operaciones.";
			De Otro Modo:
				Escribir "Opci�n inv�lida.";
		FinSegun
		
	Hasta Que opcion = 4

FinProceso
