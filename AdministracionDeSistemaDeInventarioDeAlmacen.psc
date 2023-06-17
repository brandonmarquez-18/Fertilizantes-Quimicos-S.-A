Algoritmo SistemaDeAdministraciónDeInventarioDeAlmacén
	// VARIABLES PARA CICLO "MIENTRAS" DE REPETIR EL PROGRAMA Y EL MENÚ PRINCIPAL DEL SISTEMA DE ADMINISTRACIÓN
	RepetirPrograma <- 1; RepetirMenuPrincipal <- 1
	// VARIABLES PARA LA EXISTENCIA INICIAL DE SULFATO DE AMONIO, UREA Y FOSFATO
	SulfatoDeAmonioExistenciaInicial <- 0; UreaExistenciaInicial <- 0; FosfatoExistenciaInicial <- 0
	// VARIABLES PARA LA ENTRADA DE MERCANCÍA DE SULFATO DE AMONIO, UREA Y FOSFATO
	SulfatoDeAmonioCantidadAIngresar <- 0; UreaCantidadAIngresar <- 0; FosfatoCantidadAIngresar <- 0
	// VARIABLES PARA LA SALIDA DE MERCANCÍA DE SULFATO DE AMONIO, UREA Y FOSFATO
	SulfatoDeAmonioCantidadDeSalida <- 0; UreaCantidadDeSalida <- 0; FosfatoCantidadDeSalida <- 0
	// CICLO MIENTRAS PARA REPETIR TODO NUESTRO PROGRAMA
	Mientras RepetirPrograma==1 Hacer
		// MENSAJES DE SALIDA Y LECTURA DE USUARIO Y CONTRASEÑA PARA INICIAR SDESION Y ACCEDER A NUESTRO SISTEMA DE ADMINISTRACIÓN
		Escribir 'usuario: aa'
		Escribir 'contraseña: aa'
		Escribir 'Inicio de Sesión'
		Escribir 'Ingresa tu usuario:'
		Leer usr
		Escribir 'Ingresa tu contraseña:'
		Leer pass
		Borrar Pantalla
		// COMPARACIÓN PARA VERIFICAR SI NUESTRO USUARIO Y CONTRASEÑA SON CORRECTOS
		Si usr=='aa' Y pass=='aa' Entonces
			// SI SE CUMPLE LA CONDICIÓN DE QUE NUESTRO USUARIO SEA IGUAL HA "isr" Y CONTRASEÑA IGUAL A "pass" ENTONCES ACCEDEMOS A NUESTRO SISTEMA DE ADMINISTRACIÓN DE FERTILIZANTERS QUÍMICOS
			// CICLO MIENTRAS PARA REPETIR TODO NUESTRO SISTEMA DE ADMINISTRACIÓN SIEMPRE Y CUANDO LA VARIABLE "RepetirMenuPrincipal" SEA IGUAL A: 1
			Mientras RepetirMenuPrincipal==1 Hacer
				// MENÚ PRINCIPAL PARA ACCEDER A UNA OPCIÓN DESEADA 
				Escribir 'BIENVENIDO A TU SISTEMA DE ADMINISTRACIÓN FERTILIZANTES QUÍMICOS S.A'
				Escribir 'Eliga una opción del 1 al 5 para Administar el Sistema de inventario de Álmacen:'
				Escribir '1.- Registro de existencia inicial'
				Escribir '2.- Entrada de Mercancía'
				Escribir '3.- Salida de Mercancía'
				Escribir '4.- Reporte de existencia'
				Escribir '5.- Salir'
				Escribir 'Opción:'
				// LECTURA DE LA VARIABLE "Opc" PARA VERIFICAR QUE OPERACIONES QUEREMOS HACER
				Leer Opc
				Borrar Pantalla
				// SEGÚN LA OPCIÓN LEIDA SE HARÁN LAS OPERACIONES EN LOS CASOS DEL 1 AL 5
				Segun Opc  Hacer
					1:
						// 1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
						// 2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
						// 3.- SE USA CICLO MIENTRAS PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
						// 4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						// 5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						Si SulfatoDeAmonioExistenciaInicial>=1 Entonces
							Escribir 'No puede registar más de una vez la existencia inicial del Sulfato de Amonio!!'
						SiNo
							VolverARegistrarExistenciaInicialSulfatoDeAmonio <- 1
							Mientras VolverARegistrarExistenciaInicialSulfatoDeAmonio==1 Hacer
								Escribir 'Registro inicial en toneladas_____________________________________________________'
								Escribir 'Digite la existencia inicial de Sulfato de Amonio:'
								Leer SulfatoDeAmonioExistenciaInicial
								Si SulfatoDeAmonioExistenciaInicial<=-1 Entonces
									Escribir 'No puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!'
									VolverARegistrarExistenciaInicialSulfatoDeAmonio <- 1
								SiNo
									Escribir 'La mercancía inicial del SULFATO DE AMONIO ha sido registrada correctamente!!'
									VolverARegistrarExistenciaInicialSulfatoDeAmonio <- 2
								FinSi
							FinMientras
						FinSi
						// _______________________________________________________________________
						// 1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
						// 2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
						// 3.- SE USA CICLO MIENTRAS PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
						// 4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						// 5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						Si UreaExistenciaInicial>=1 Entonces
							Escribir 'No puede registar más de una vez la existencia inicial de la Urea!!'
						SiNo
							VolverARegistrarExistenciaInicialUrea <- 1
							Mientras VolverARegistrarExistenciaInicialUrea==1 Hacer
								Escribir 'Registro inicial en toneladas____________________________________________________'
								Escribir 'Digite la existencia inicial de Urea:'
								Leer UreaExistenciaInicial
								Si UreaExistenciaInicial<=-1 Entonces
									Escribir 'No puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!'
									VolverARegistrarExistenciaInicialUrea <- 1
								SiNo
									Escribir 'La mercancía inicial de la UREA ha sido registrada correctamente!!'
									VolverARegistrarExistenciaInicialUrea <- 2
								FinSi
							FinMientras
						FinSi
						// _______________________________________________________________________
						// 1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
						// 2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
						// 3.- SE USA CICLO MIENTRAS PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
						// 4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						// 5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						Si FosfatoExistenciaInicial>=1 Entonces
							Escribir 'No puede registar más de una vez la existencia inicial del Fosfato!!'
						SiNo
							VolverARegistrarExistenciaInicialFosfato <- 1
							Mientras VolverARegistrarExistenciaInicialFosfato==1 Hacer
								Escribir 'Registro inicial en toneladas___________________________________________________________'
								Escribir 'Digite la existencia inicial del Fosfato:'
								Leer FosfatoExistenciaInicial
								Si FosfatoExistenciaInicial<=-1 Entonces
									Escribir 'No puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!'
									VolverARegistrarExistenciaInicialFosfato <- 1
								SiNo
									Escribir 'La mercancía inicial del FOSFATO ha sido registrada correctamente!!'
									VolverARegistrarExistenciaInicialFosfato <- 2
								FinSi
							FinMientras
						FinSi
						RepetirMenuPrincipal <- 1
					2:
						// 1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0, SI ES ASÍ NO SE PUEDEN HACER-
						// ENTRADAS Y SALIDAS DE MERCANCÍA
						// 2.- CASO CONTRARIO PRINCIPALMENTE SE TIENE CICLO MIENTRAS PARA REPETIR PRINCIPALMENTE EL MENÚ DE ENTRADA DE MERCANCÍA Y TODOS LOS 
						// PROCESOS SEGÚN EL NÚMERO DE CASO INDICADO
						Si SulfatoDeAmonioExistenciaInicial==0 Y UreaExistenciaInicial==0 Y FosfatoExistenciaInicial==0 Entonces
							Escribir '¡¡No puede dar entrada de mercancía, ya que no ha registrado ninguna existencia inicial!!'
						SiNo
							RepetirMenuEntradaDeMercancia <- 1
							Mientras RepetirMenuEntradaDeMercancia==1 Hacer
								Escribir 'Eliga una opción del 1 al 3 para Registrar Entrada de Mercancía'
								Escribir '1.- Sulfato de Amonio'
								Escribir '2.- Urea'
								Escribir '3.- Fosfato'
								Escribir '4.- Menú principal'
								// SE LEE EL CASO INDICADO POR EL USUARIO
								Leer OpcEntradaMercancia
								// POSTERIORMENTE SE HACE EL PROCESO DEL CASO INDICADO POR EL USUARIO
								Segun OpcEntradaMercancia  Hacer
									1:
										Borrar Pantalla
										// 1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
										// 3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
										// 4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
										// 5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 6.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
										VolverIngrearSulfatoDeAmonio <- 1
										Mientras VolverIngrearSulfatoDeAmonio==1 Hacer
											Escribir 'Entrada en toneladas________________________________________________________________________'
											Escribir 'Digita la cantidad a ingresar del Sulfato de Amonio:'
											Leer SulfatoDeAmonioCantidadAIngresar
											Si SulfatoDeAmonioCantidadAIngresar<=-1 Entonces
												Escribir 'No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!'
												SulfatoDeAmonioCantidadAIngresar <- 0
												VolverIngrearSulfatoDeAmonio <- 1
											SiNo
												SulfatoDeAmonioExistenciaInicial <- SulfatoDeAmonioExistenciaInicial+SulfatoDeAmonioCantidadAIngresar
												Escribir 'El registro ha sido exitoso!!'
												VolverIngrearSulfatoDeAmonio <- 2
											FinSi
										FinMientras
									2:
										Borrar Pantalla
										// 1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
										// 3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
										// 4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
										// 5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 6.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
										VolverIngrearUrea <- 1
										Mientras VolverIngrearUrea==1 Hacer
											Escribir 'Entrada en toneladas________________________________________________________________________'
											Escribir 'Digita la cantidad a ingresar de Urea:'
											Leer UreaCantidadAIngresar
											Si UreaCantidadAIngresar<=-1 Entonces
												Escribir 'No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!'
												UreaCantidadAIngresar <- 0
												VolverIngrearUrea <- 1
											SiNo
												UreaExistenciaInicial <- UreaExistenciaInicial+UreaCantidadAIngresar
												Escribir 'El registro ha sido exitoso!!'
												VolverIngrearUrea <- 2
											FinSi
										FinMientras
									3:
										Borrar Pantalla
										// 1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
										// 3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
										// 4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
										// 5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 6.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
										VolverAIngresarFosfato <- 1
										Mientras VolverAIngresarFosfato==1 Hacer
											Escribir 'Entrada en toneladas________________________________________________________________________'
											Escribir 'Digita la cantidad a ingresar del Fosfato:'
											Leer FosfatoCantidadAIngresar
											Si FosfatoCantidadAIngresar<=-1 Entonces
												Escribir 'No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!'
												FosfatoCantidadAIngresar <- 0
												VolverAIngresarFosfato <- 1
											SiNo
												FosfatoExistenciaInicial <- FosfatoExistenciaInicial+FosfatoCantidadAIngresar
												Escribir 'El registro ha sido exitoso!!'
												VolverAIngresarFosfato <- 2
											FinSi
										FinMientras
									4:
										// 1.- ROMPEMOS EL CICLO DEL MENÚ DE LA ENTRADA DE MERCANCÍA
										// 2.- Y CUMPLIMOS CON LA CONDICIÓN DE CICLO DEL MENÚ PRINCIPAL PARA RETORNAR AL MENÚ PRINCIPAL
										RepetirMenuEntradaDeMercancia <- 2
										RepetirMenuPrincipal <- 1
									De Otro Modo:
										// SI NO SE INTRODÚJO UN NÚMERO DEL MENÚ DE LA ENTRADA DE MERCANCÍA SE MANDA SMS Y REGRESAMOS AL MENÚ DE ENTRADA DE MERCANCÍA
										Escribir 'El Número o carácter ingresado no existe en el menú'
										RepetirMenuEntradaDeMercancia <- 1
								FinSegun
							FinMientras
						FinSi
					3:
						// 1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0, SI ES ASÍ NO SE PUEDEN HACER-
						// ENTRADAS Y SALIDAS DE MERCANCÍA
						// 2.- CASO CONTRARIO PRINCIPALMENTE SE TIENE CICLO MIENTRAS PARA REPETIR PRINCIPALMENTE EL MENÚ DE ENTRADA DE MERCANCÍA Y TODOS LOS 
						// PROCESOS SEGÚN EL NÚMERO DE CASO INDICADO
						Si SulfatoDeAmonioExistenciaInicial==0 Y UreaExistenciaInicial==0 Y FosfatoExistenciaInicial==0 Entonces
							Escribir '¡¡No puede dar salida de mercancía, ya que no ha registrado ninguna existencia inicial!!'
						SiNo
							RepetirMenuSalidaDeMercancia <- 1
							Mientras RepetirMenuSalidaDeMercancia==1 Hacer
								Escribir 'Eliga una opción del 1 al 3 para la Salida de Mercancía'
								Escribir '1.- Sulfato de Amonio'
								Escribir '2.- Urea'
								Escribir '3.- Fosfato'
								Escribir '4.- Menú principal'
								// LECTURA DE OPCION DEL MENÚ DE SALIDA DE MERCANCÍA
								Leer OpcSalidaMercancia
								// POSTERIORMENTE SE HACE EL PROCESO DEL CASO INDICADO POR EL USUARIO
								Segun OpcSalidaMercancia  Hacer
									1:
										Borrar Pantalla
										// 1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
										// 3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
										// 4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
										// INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
										// 4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 6.-REGRESAMOS A NUESTRO MENÚ DE SALIDA DE MERCANCÍA
										VolverADarSalidaDeMercanciaSulfatoDeAmonio <- 1
										Mientras VolverADarSalidaDeMercanciaSulfatoDeAmonio==1 Hacer
											Escribir 'Salida en toneladas________________________________________________________________________'
											Escribir 'Digita la cantidad de Salida de SULFATO DE AMONIO:'
											Leer SulfatoDeAmonioCantidadDeSalida
											Si SulfatoDeAmonioCantidadDeSalida<=-1 Entonces
												Escribir 'No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!'
												SulfatoDeAmonioCantidadDeSalida <- 0
												VolverADarSalidaDeMercanciaSulfatoDeAmonio <- 1
											SiNo
												Si SulfatoDeAmonioCantidadDeSalida>SulfatoDeAmonioExistenciaInicial Entonces
													Escribir 'No puede retirar más cantidad de SULFATO DE AMONIO ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...'
													VolverADarSalidaDeMercanciaSulfatoDeAmonio <- 1
												SiNo
													SulfatoDeAmonioExistenciaInicial <- SulfatoDeAmonioExistenciaInicial-SulfatoDeAmonioCantidadDeSalida
													Escribir 'La salida de SULFATO DE AMONIO ha sido exitosa!!'
													VolverADarSalidaDeMercanciaSulfatoDeAmonio <- 2
												FinSi
											FinSi
										FinMientras
										// __________________________________________________________________________________________________________-
									2:
										Borrar Pantalla
										// 1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
										// 3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
										// 4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
										// INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
										// 4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 6.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
										VolverADarSalidaDeMercanciaUrea <- 1
										Mientras VolverADarSalidaDeMercanciaUrea==1 Hacer
											Escribir 'Salida en toneladas________________________________________________________________________'
											Escribir 'Digita la cantidad de Salida de UREA:'
											Leer UreaCantidadDeSalida
											Si UreaCantidadDeSalida<=-1 Entonces
												Escribir 'No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!'
												UreaCantidadDeSalida <- 0
												VolverADarSalidaDeMercanciaUrea <- 1
											SiNo
												Si UreaCantidadDeSalida>UreaExistenciaInicial Entonces
													Escribir 'No puede retirar más cantidad de UREA ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...'
													VolverADarSalidaDeMercanciaUrea <- 1
												SiNo
													UreaExistenciaInicial <- UreaExistenciaInicial-UreaCantidadDeSalida
													Escribir 'La salida de UREA ha sido exitosa!!'
													VolverADarSalidaDeMercanciaUrea <- 2
												FinSi
											FinSi
										FinMientras
										// _______________________________________________________________
									3:
										Borrar Pantalla
										// 1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
										// 3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
										// 4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
										// INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
										// 4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 6.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
										VolverADarSalidaDeMercanciaFosfato <- 1
										Mientras VolverADarSalidaDeMercanciaFosfato==1 Hacer
											Escribir 'Salida en toneladas________________________________________________________________________'
											Escribir 'Digita la cantidad de Salida de FOSFATO:'
											Leer FosfatoCantidadDeSalida
											Si FosfatoCantidadDeSalida<=-1 Entonces
												Escribir 'No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!'
												FosfatoCantidadDeSalida <- 0
												VolverADarSalidaDeMercanciaFosfato <- 1
											SiNo
												Si FosfatoCantidadDeSalida>FosfatoExistenciaInicial Entonces
													Escribir 'No puede retirar más cantidad de FOSFATO ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...'
													VolverADarSalidaDeMercanciaFosfato <- 1
												SiNo
													FosfatoExistenciaInicial <- FosfatoExistenciaInicial-FosfatoCantidadDeSalida
													Escribir 'La salida de FOSFATO ha sido exitosa!!'
													VolverADarSalidaDeMercanciaFosfato <- 2
												FinSi
											FinSi
										FinMientras
									4:
										// 1.- ROMPEMOS EL CICLO DEL MENÚ DE LA ENTRADA DE MERCANCÍA
										// 2.- Y CUMPLIMOS CON LA CONDICIÓN DE CICLO DEL MENÚ PRINCIPAL PARA RETORNAR AL MENÚ PRINCIPAL
										RepetirMenuSalidaDeMercancia <- 2
										RepetirMenuPrincipal <- 1
									De Otro Modo:
										// SI NO SE INTRODÚJO UN NÚMERO DEL MENÚ DE LA ENTRADA DE MERCANCÍA SE MANDA SMS Y REGRESAMOS AL MENÚ DE ENTRADA DE MERCANCÍA
										Escribir 'El Número o carácter ingresado no existe en el menú'
										RepetirMenuSalidaDeMercancia <- 1
								FinSegun
							FinMientras
						FinSi
					4:
						// 1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0, SI ES ASÍ NO SE PUEDEN MOSTRAR EXISTENCIAS ACTUALES YA QUE
						// NO LAS HAY
						Si SulfatoDeAmonioExistenciaInicial==0 Y UreaExistenciaInicial==0 Y FosfatoExistenciaInicial==0 Entonces
							Escribir '¡¡No existe ninguna cantidad en toneladas para Sulfato de Amonio, Urea y Fosfato Ya que no ha registrado ninguna existencia inicial!!'
						SiNo
							// SE HACEN LAS OPERACIONES PARA SULFATO DE AMONIO, UREA Y FOSFATO
							Escribir 'Reporte de existencia:'
							// SE IMPRIME EL RESULTADO DE LAS NUEVAS MERCANCÍAS PARA EL SULFATO DE AMONIO, UREA Y FOSFATO
							Escribir 'La existencia actual de Sulfato de Amonio es de: ',SulfatoDeAmonioExistenciaInicial,' Ton.'
							Escribir 'La existencia actual de Urea es de: ',UreaExistenciaInicial,' Ton.'
							Escribir 'La existencia actual de Fosfato es de: ',FosfatoExistenciaInicial,' Ton.'
							// REGRESAMOS AL MENÚ PRINCIPAL
							RepetirMenuPrincipal <- 1
						FinSi
					5:
						// SMS DE SALIDA, Y SE ROMPEN LOS CICLOS DEL MENÚ PRINCIPAL Y DE REPETIR EL PROGRAMA
						Escribir 'BYE!'
						RepetirMenuPrincipal <- 2
						RepetirPrograma <- 2
					De Otro Modo:
						// SI NO SE INTRODÚJO UN NÚMERO DEL MENÚ PRINCIPAL SE MANDA SMS Y REGRESAMOS AL MENÚ PRINCIPAL
						Escribir 'El Número o carácter ingresado no existe en el menú'
						RepetirMenuPrincipal <- 1
				FinSegun
			FinMientras
		SiNo
			// SI EL USUARIO Y LA CONTRASEÑA NO SON COMO SE ASIGNARON SE MANDA SE SMS DE QUE ALGO ES INCORRECTO
			// SE PREGUNTA SI SE QUIERE REPETIR EL PROGRAMA SE REPITE SI SE CUMPLE LA CONDICIÓN DEL CICLO MIENTRAS
			Escribir 'Usuario o Contraseña incorrectos!'
			Escribir '¿Quieres repetir el programa?, (1/2)'
			// SE LEE LA VARIABLE "RepetirPrograma"
			Leer RepetirPrograma
		FinSi
	FinMientras
FinAlgoritmo
