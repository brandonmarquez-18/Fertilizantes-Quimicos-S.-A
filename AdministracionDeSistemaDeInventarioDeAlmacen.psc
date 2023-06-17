Algoritmo SistemaDeAdministraci�nDeInventarioDeAlmac�n
	// VARIABLES PARA CICLO "MIENTRAS" DE REPETIR EL PROGRAMA Y EL MEN� PRINCIPAL DEL SISTEMA DE ADMINISTRACI�N
	RepetirPrograma <- 1; RepetirMenuPrincipal <- 1
	// VARIABLES PARA LA EXISTENCIA INICIAL DE SULFATO DE AMONIO, UREA Y FOSFATO
	SulfatoDeAmonioExistenciaInicial <- 0; UreaExistenciaInicial <- 0; FosfatoExistenciaInicial <- 0
	// VARIABLES PARA LA ENTRADA DE MERCANC�A DE SULFATO DE AMONIO, UREA Y FOSFATO
	SulfatoDeAmonioCantidadAIngresar <- 0; UreaCantidadAIngresar <- 0; FosfatoCantidadAIngresar <- 0
	// VARIABLES PARA LA SALIDA DE MERCANC�A DE SULFATO DE AMONIO, UREA Y FOSFATO
	SulfatoDeAmonioCantidadDeSalida <- 0; UreaCantidadDeSalida <- 0; FosfatoCantidadDeSalida <- 0
	// CICLO MIENTRAS PARA REPETIR TODO NUESTRO PROGRAMA
	Mientras RepetirPrograma==1 Hacer
		// MENSAJES DE SALIDA Y LECTURA DE USUARIO Y CONTRASE�A PARA INICIAR SDESION Y ACCEDER A NUESTRO SISTEMA DE ADMINISTRACI�N
		Escribir 'usuario: aa'
		Escribir 'contrase�a: aa'
		Escribir 'Inicio de Sesi�n'
		Escribir 'Ingresa tu usuario:'
		Leer usr
		Escribir 'Ingresa tu contrase�a:'
		Leer pass
		Borrar Pantalla
		// COMPARACI�N PARA VERIFICAR SI NUESTRO USUARIO Y CONTRASE�A SON CORRECTOS
		Si usr=='aa' Y pass=='aa' Entonces
			// SI SE CUMPLE LA CONDICI�N DE QUE NUESTRO USUARIO SEA IGUAL HA "isr" Y CONTRASE�A IGUAL A "pass" ENTONCES ACCEDEMOS A NUESTRO SISTEMA DE ADMINISTRACI�N DE FERTILIZANTERS QU�MICOS
			// CICLO MIENTRAS PARA REPETIR TODO NUESTRO SISTEMA DE ADMINISTRACI�N SIEMPRE Y CUANDO LA VARIABLE "RepetirMenuPrincipal" SEA IGUAL A: 1
			Mientras RepetirMenuPrincipal==1 Hacer
				// MEN� PRINCIPAL PARA ACCEDER A UNA OPCI�N DESEADA 
				Escribir 'BIENVENIDO A TU SISTEMA DE ADMINISTRACI�N FERTILIZANTES QU�MICOS S.A'
				Escribir 'Eliga una opci�n del 1 al 5 para Administar el Sistema de inventario de �lmacen:'
				Escribir '1.- Registro de existencia inicial'
				Escribir '2.- Entrada de Mercanc�a'
				Escribir '3.- Salida de Mercanc�a'
				Escribir '4.- Reporte de existencia'
				Escribir '5.- Salir'
				Escribir 'Opci�n:'
				// LECTURA DE LA VARIABLE "Opc" PARA VERIFICAR QUE OPERACIONES QUEREMOS HACER
				Leer Opc
				Borrar Pantalla
				// SEG�N LA OPCI�N LEIDA SE HAR�N LAS OPERACIONES EN LOS CASOS DEL 1 AL 5
				Segun Opc  Hacer
					1:
						// 1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL YA QUE NO SE PUEDE HACER M�S DE UNA VEZ
						// 2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN N�MERO POSITIVO
						// 3.- SE USA CICLO MIENTRAS PARA EN CASO DE QUE SE DEN N�MEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR N�MEROS NEGATIVOS
						// 4.- EN CASO DE QUE NO SE INTRODUJAN N�MEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						// 5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						Si SulfatoDeAmonioExistenciaInicial>=1 Entonces
							Escribir 'No puede registar m�s de una vez la existencia inicial del Sulfato de Amonio!!'
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
									Escribir 'La mercanc�a inicial del SULFATO DE AMONIO ha sido registrada correctamente!!'
									VolverARegistrarExistenciaInicialSulfatoDeAmonio <- 2
								FinSi
							FinMientras
						FinSi
						// _______________________________________________________________________
						// 1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL YA QUE NO SE PUEDE HACER M�S DE UNA VEZ
						// 2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN N�MERO POSITIVO
						// 3.- SE USA CICLO MIENTRAS PARA EN CASO DE QUE SE DEN N�MEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR N�MEROS NEGATIVOS
						// 4.- EN CASO DE QUE NO SE INTRODUJAN N�MEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						// 5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						Si UreaExistenciaInicial>=1 Entonces
							Escribir 'No puede registar m�s de una vez la existencia inicial de la Urea!!'
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
									Escribir 'La mercanc�a inicial de la UREA ha sido registrada correctamente!!'
									VolverARegistrarExistenciaInicialUrea <- 2
								FinSi
							FinMientras
						FinSi
						// _______________________________________________________________________
						// 1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL YA QUE NO SE PUEDE HACER M�S DE UNA VEZ
						// 2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN N�MERO POSITIVO
						// 3.- SE USA CICLO MIENTRAS PARA EN CASO DE QUE SE DEN N�MEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR N�MEROS NEGATIVOS
						// 4.- EN CASO DE QUE NO SE INTRODUJAN N�MEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						// 5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						Si FosfatoExistenciaInicial>=1 Entonces
							Escribir 'No puede registar m�s de una vez la existencia inicial del Fosfato!!'
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
									Escribir 'La mercanc�a inicial del FOSFATO ha sido registrada correctamente!!'
									VolverARegistrarExistenciaInicialFosfato <- 2
								FinSi
							FinMientras
						FinSi
						RepetirMenuPrincipal <- 1
					2:
						// 1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0, SI ES AS� NO SE PUEDEN HACER-
						// ENTRADAS Y SALIDAS DE MERCANC�A
						// 2.- CASO CONTRARIO PRINCIPALMENTE SE TIENE CICLO MIENTRAS PARA REPETIR PRINCIPALMENTE EL MEN� DE ENTRADA DE MERCANC�A Y TODOS LOS 
						// PROCESOS SEG�N EL N�MERO DE CASO INDICADO
						Si SulfatoDeAmonioExistenciaInicial==0 Y UreaExistenciaInicial==0 Y FosfatoExistenciaInicial==0 Entonces
							Escribir '��No puede dar entrada de mercanc�a, ya que no ha registrado ninguna existencia inicial!!'
						SiNo
							RepetirMenuEntradaDeMercancia <- 1
							Mientras RepetirMenuEntradaDeMercancia==1 Hacer
								Escribir 'Eliga una opci�n del 1 al 3 para Registrar Entrada de Mercanc�a'
								Escribir '1.- Sulfato de Amonio'
								Escribir '2.- Urea'
								Escribir '3.- Fosfato'
								Escribir '4.- Men� principal'
								// SE LEE EL CASO INDICADO POR EL USUARIO
								Leer OpcEntradaMercancia
								// POSTERIORMENTE SE HACE EL PROCESO DEL CASO INDICADO POR EL USUARIO
								Segun OpcEntradaMercancia  Hacer
									1:
										Borrar Pantalla
										// 1.- SE DECLARA VARIABLE PARA DESPU�S USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPU�S DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN N�MERO NEGATIVO YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANC�A Y DESPU�S SE LEE CANTIDAD A INGRESAR
										// 3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANC�A EL NUEVO VALOR INGRESADO
										// 4.- SE COMPARA SI SE INTRODUJO UN N�MERO NEGATIVO, DE SER AS� RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICI�N DEL CICLO
										// 5.- SI SE INTRODUJO UN N�MERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 6.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 7.-REGRESAMOS A NUESTRO MEN� DE ENTRADA DE MERCANC�A
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
										// 1.- SE DECLARA VARIABLE PARA DESPU�S USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPU�S DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN N�MERO NEGATIVO YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANC�A Y DESPU�S SE LEE CANTIDAD A INGRESAR
										// 3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANC�A EL NUEVO VALOR INGRESADO
										// 4.- SE COMPARA SI SE INTRODUJO UN N�MERO NEGATIVO, DE SER AS� RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICI�N DEL CICLO
										// 5.- SI SE INTRODUJO UN N�MERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 6.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 7.-REGRESAMOS A NUESTRO MEN� DE ENTRADA DE MERCANC�A
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
										// 1.- SE DECLARA VARIABLE PARA DESPU�S USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPU�S DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN N�MERO NEGATIVO YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANC�A Y DESPU�S SE LEE CANTIDAD A INGRESAR
										// 3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANC�A EL NUEVO VALOR INGRESADO
										// 4.- SE COMPARA SI SE INTRODUJO UN N�MERO NEGATIVO, DE SER AS� RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICI�N DEL CICLO
										// 5.- SI SE INTRODUJO UN N�MERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 6.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 7.-REGRESAMOS A NUESTRO MEN� DE ENTRADA DE MERCANC�A
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
										// 1.- ROMPEMOS EL CICLO DEL MEN� DE LA ENTRADA DE MERCANC�A
										// 2.- Y CUMPLIMOS CON LA CONDICI�N DE CICLO DEL MEN� PRINCIPAL PARA RETORNAR AL MEN� PRINCIPAL
										RepetirMenuEntradaDeMercancia <- 2
										RepetirMenuPrincipal <- 1
									De Otro Modo:
										// SI NO SE INTROD�JO UN N�MERO DEL MEN� DE LA ENTRADA DE MERCANC�A SE MANDA SMS Y REGRESAMOS AL MEN� DE ENTRADA DE MERCANC�A
										Escribir 'El N�mero o car�cter ingresado no existe en el men�'
										RepetirMenuEntradaDeMercancia <- 1
								FinSegun
							FinMientras
						FinSi
					3:
						// 1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0, SI ES AS� NO SE PUEDEN HACER-
						// ENTRADAS Y SALIDAS DE MERCANC�A
						// 2.- CASO CONTRARIO PRINCIPALMENTE SE TIENE CICLO MIENTRAS PARA REPETIR PRINCIPALMENTE EL MEN� DE ENTRADA DE MERCANC�A Y TODOS LOS 
						// PROCESOS SEG�N EL N�MERO DE CASO INDICADO
						Si SulfatoDeAmonioExistenciaInicial==0 Y UreaExistenciaInicial==0 Y FosfatoExistenciaInicial==0 Entonces
							Escribir '��No puede dar salida de mercanc�a, ya que no ha registrado ninguna existencia inicial!!'
						SiNo
							RepetirMenuSalidaDeMercancia <- 1
							Mientras RepetirMenuSalidaDeMercancia==1 Hacer
								Escribir 'Eliga una opci�n del 1 al 3 para la Salida de Mercanc�a'
								Escribir '1.- Sulfato de Amonio'
								Escribir '2.- Urea'
								Escribir '3.- Fosfato'
								Escribir '4.- Men� principal'
								// LECTURA DE OPCION DEL MEN� DE SALIDA DE MERCANC�A
								Leer OpcSalidaMercancia
								// POSTERIORMENTE SE HACE EL PROCESO DEL CASO INDICADO POR EL USUARIO
								Segun OpcSalidaMercancia  Hacer
									1:
										Borrar Pantalla
										// 1.- SE DECLARA VARIABLE PARA DESPU�S USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPU�S DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN N�MERO NEGATIVO Y SE PRETENDE RETIRAR M�S MERCANC�A DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANC�A Y DESPU�S SE LEE CANTIDAD A RETIRAR
										// 3.- SE COMPARA SI SE INTRODUJO UN N�MERO NEGATIVO, DE SER AS� RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICI�N DEL CICLO
										// 4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES AS� SE DA SMS DE SALIDA
										// INDICANDO QUE NO SE PUEDE RETIRAR M�S DE LA QUE NO SE CUENTA YA ES ALGO IL�GICO
										// 4.- SI SE INTRODUJO UN N�MERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 6.-REGRESAMOS A NUESTRO MEN� DE SALIDA DE MERCANC�A
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
													Escribir 'No puede retirar m�s cantidad de SULFATO DE AMONIO ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...'
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
										// 1.- SE DECLARA VARIABLE PARA DESPU�S USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPU�S DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN N�MERO NEGATIVO Y SE PRETENDE RETIRAR M�S MERCANC�A DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANC�A Y DESPU�S SE LEE CANTIDAD A RETIRAR
										// 3.- SE COMPARA SI SE INTRODUJO UN N�MERO NEGATIVO, DE SER AS� RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICI�N DEL CICLO
										// 4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES AS� SE DA SMS DE SALIDA
										// INDICANDO QUE NO SE PUEDE RETIRAR M�S DE LA QUE NO SE CUENTA YA ES ALGO IL�GICO
										// 4.- SI SE INTRODUJO UN N�MERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 6.-REGRESAMOS A NUESTRO MEN� DE ENTRADA DE MERCANC�A
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
													Escribir 'No puede retirar m�s cantidad de UREA ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...'
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
										// 1.- SE DECLARA VARIABLE PARA DESPU�S USARLA EN CICLO MIENTRAS Y NOS RETORNE DE NUEVO DESPU�S DEL CICLO MIENTRAS
										// SI ES QUE SE INTRODUCE UN N�MERO NEGATIVO Y SE PRETENDE RETIRAR M�S MERCANC�A DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
										// 2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANC�A Y DESPU�S SE LEE CANTIDAD A RETIRAR
										// 3.- SE COMPARA SI SE INTRODUJO UN N�MERO NEGATIVO, DE SER AS� RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICI�N DEL CICLO
										// 4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES AS� SE DA SMS DE SALIDA
										// INDICANDO QUE NO SE PUEDE RETIRAR M�S DE LA QUE NO SE CUENTA YA ES ALGO IL�GICO
										// 4.- SI SE INTRODUJO UN N�MERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
										// 5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
										// 6.-REGRESAMOS A NUESTRO MEN� DE ENTRADA DE MERCANC�A
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
													Escribir 'No puede retirar m�s cantidad de FOSFATO ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...'
													VolverADarSalidaDeMercanciaFosfato <- 1
												SiNo
													FosfatoExistenciaInicial <- FosfatoExistenciaInicial-FosfatoCantidadDeSalida
													Escribir 'La salida de FOSFATO ha sido exitosa!!'
													VolverADarSalidaDeMercanciaFosfato <- 2
												FinSi
											FinSi
										FinMientras
									4:
										// 1.- ROMPEMOS EL CICLO DEL MEN� DE LA ENTRADA DE MERCANC�A
										// 2.- Y CUMPLIMOS CON LA CONDICI�N DE CICLO DEL MEN� PRINCIPAL PARA RETORNAR AL MEN� PRINCIPAL
										RepetirMenuSalidaDeMercancia <- 2
										RepetirMenuPrincipal <- 1
									De Otro Modo:
										// SI NO SE INTROD�JO UN N�MERO DEL MEN� DE LA ENTRADA DE MERCANC�A SE MANDA SMS Y REGRESAMOS AL MEN� DE ENTRADA DE MERCANC�A
										Escribir 'El N�mero o car�cter ingresado no existe en el men�'
										RepetirMenuSalidaDeMercancia <- 1
								FinSegun
							FinMientras
						FinSi
					4:
						// 1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0, SI ES AS� NO SE PUEDEN MOSTRAR EXISTENCIAS ACTUALES YA QUE
						// NO LAS HAY
						Si SulfatoDeAmonioExistenciaInicial==0 Y UreaExistenciaInicial==0 Y FosfatoExistenciaInicial==0 Entonces
							Escribir '��No existe ninguna cantidad en toneladas para Sulfato de Amonio, Urea y Fosfato Ya que no ha registrado ninguna existencia inicial!!'
						SiNo
							// SE HACEN LAS OPERACIONES PARA SULFATO DE AMONIO, UREA Y FOSFATO
							Escribir 'Reporte de existencia:'
							// SE IMPRIME EL RESULTADO DE LAS NUEVAS MERCANC�AS PARA EL SULFATO DE AMONIO, UREA Y FOSFATO
							Escribir 'La existencia actual de Sulfato de Amonio es de: ',SulfatoDeAmonioExistenciaInicial,' Ton.'
							Escribir 'La existencia actual de Urea es de: ',UreaExistenciaInicial,' Ton.'
							Escribir 'La existencia actual de Fosfato es de: ',FosfatoExistenciaInicial,' Ton.'
							// REGRESAMOS AL MEN� PRINCIPAL
							RepetirMenuPrincipal <- 1
						FinSi
					5:
						// SMS DE SALIDA, Y SE ROMPEN LOS CICLOS DEL MEN� PRINCIPAL Y DE REPETIR EL PROGRAMA
						Escribir 'BYE!'
						RepetirMenuPrincipal <- 2
						RepetirPrograma <- 2
					De Otro Modo:
						// SI NO SE INTROD�JO UN N�MERO DEL MEN� PRINCIPAL SE MANDA SMS Y REGRESAMOS AL MEN� PRINCIPAL
						Escribir 'El N�mero o car�cter ingresado no existe en el men�'
						RepetirMenuPrincipal <- 1
				FinSegun
			FinMientras
		SiNo
			// SI EL USUARIO Y LA CONTRASE�A NO SON COMO SE ASIGNARON SE MANDA SE SMS DE QUE ALGO ES INCORRECTO
			// SE PREGUNTA SI SE QUIERE REPETIR EL PROGRAMA SE REPITE SI SE CUMPLE LA CONDICI�N DEL CICLO MIENTRAS
			Escribir 'Usuario o Contrase�a incorrectos!'
			Escribir '�Quieres repetir el programa?, (1/2)'
			// SE LEE LA VARIABLE "RepetirPrograma"
			Leer RepetirPrograma
		FinSi
	FinMientras
FinAlgoritmo
