#include<iostream>
#include<locale.h>//LIBRERÍA PARA PODER USAR CARÁCTERES ESPECIALES EN C++
#include <stdlib.h>
using namespace std;
int main(){
	setlocale(LC_CTYPE, "Spanish");//LLAMADA DE LA LIBRERïA PARA CARÁCTERES ESPECIALES EN C++ CON EL IDIOMA ESPAÑOL
	//VARIABLES PARA LA EXISTENCIA INICIAL DE SULFATO DE AMONIO, UREA Y FOSFATO
	float SulfatoDeAmonioExistenciaInicial = 0, UreaExistenciaInicial = 0, FosfatoExistenciaInicial = 0;
	//VARIABLES PARA LA ENTRADA DE MERCANCÍA DE SULFATO DE AMONIO, UREA Y FOSFATO
	float SulfatoDeAmonioCantidadAIngresar = 0, UreaCantidadAIngresar = 0, FosfatoCantidadAIngresar = 0;
	//VARIABLES PARA LA SALIDA DE MERCANCÍA DE SULFATO DE AMONIO, UREA Y FOSFATO
	float SulfatoDeAmonioCantidadDeSalida = 0, UreaCantidadDeSalida = 0, FosfatoCantidadDeSalida = 0;
	//VARIABLE PARA REPETIR PROGRAMA
	int RepetirPrograma = 1;
	//CICLO WHILE PARA REPETIR TODO NUESTRO PROGRAMA
	while(RepetirPrograma == 1){
		//MENSAJES DE SALIDA Y LECTURA DE USUARIO Y CONTRASEÑA PARA INICIAR SDESION Y ACCEDER A NUESTRO SISTEMA DE ADMINISTRACIÓN
		cout<<"Inicio de Sesión"<<endl;
		cout<<"usuario: aa"<<endl;
		cout<<"contraseña: aa"<<endl;
		cout<<""<<endl;
		cout<<"Ingresa tu usuario:"; string usr;
		cin>>usr;
		cout<<"Ingresa tu contraseña:"; string pass;
		cin>>pass;
		system("cls");
		//COMPARACIÓN PARA VERIFICAR SI NUESTRO USUARIO Y CONTRASEÑA SON CORRECTOS CON LA SENTENCIA "if"
		if((usr == "aa") && (pass == "aa")){
			//SI SE CUMPLE LA CONDICIÓN DE QUE NUESTRO USUARIO SEA IGUAL HA "isr" Y CONTRASEÑA IGUAL A "pass" ENTONCES ACCEDEMOS A NUESTRO SISTEMA DE ADMINISTRACIÓN DE FERTILIZANTERS QUÍMICOS
			//CICLO MIENTRAS PARA REPETIR TODO NUESTRO SISTEMA DE ADMINISTRACIÓN SIEMPRE Y CUANDO LA VARIABLE "RepetirMenuPrincipal" SEA IGUAL A: 1
			int RepetirMenuPrincipal = 1;
			while(RepetirMenuPrincipal == 1){
				cout<<""<<endl;	
				//MENÚ PRINCIPAL PARA ACCEDER A UNA OPCIÓN DESEADA 
				cout<<"BIENVENIDO A TU SISTEMA DE ADMINISTRACIÓN FERTILIZANTES QUÍMICOS S.A"<<endl;
				cout<<"Eliga una opción del 1 al 5 para Administar el Sistema de inventario de Álmacen:"<<endl;
				cout<<"1.- Registro de existencia inicial"<<endl;
				cout<<"2.- Entrada de Mercancía"<<endl;
				cout<<"3.- Salida de Mercancía"<<endl;
				cout<<"4.- Reporte de existencia"<<endl;
				cout<<"5.- Salir"<<endl;
				cout<<"Opción: "; int Opc;
				//LECTURA DE LA VARIABLE "Opc" PARA VERIFICAR QUE OPERACIONES QUEREMOS HACER 
				cin>>Opc;
				system("cls");
				switch(Opc){
					//REGISTRO DE EXISTENCIA INICIAL
					case 1:
						//1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL CON LA SENTENCIA "if" YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
						//2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
						//3.- SE USA CICLO WHILE PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
						//4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						//5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						if(SulfatoDeAmonioExistenciaInicial >= 1){
							cout<<"No puede registar más de una vez la existencia inicial del SULFATO DE AMONIO!!"<<endl;
						}
						else{
							int VolverARegistrarExistenciaInicialSulfatoDeAmonio = 1;
							while(VolverARegistrarExistenciaInicialSulfatoDeAmonio == 1){
								cout<<"Registro inicial en toneladas_____________________________________________________"<<endl;
								cout<<"Digite la existencia inicial de Sulfato de Amonio:"; cin>>SulfatoDeAmonioExistenciaInicial;
								if(SulfatoDeAmonioExistenciaInicial <= -1){
								    cout<<"No puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!"<<endl;
									VolverARegistrarExistenciaInicialSulfatoDeAmonio = 1;
									}
								else{
									cout<<"La mercancía inicial del SULFATO DE AMONIO ha sido registrada correctamente!!"<<endl;
									VolverARegistrarExistenciaInicialSulfatoDeAmonio = 2;
								}
							}
						}
						//----------------------------------------------------------------------------------------------------------------------------------
						//1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL CON LA SENTENCIA "if" YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
						//2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
						//3.- SE USA CICLO WHILE PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
						//4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						//5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						if(UreaExistenciaInicial >= 1){
							cout<<"No puede registar más de una vez la existencia inicial de la UREA!!"<<endl;
						}
						else{
							int VolverARegistrarExistenciaInicialUrea = 1;
							while(VolverARegistrarExistenciaInicialUrea == 1){
								cout<<"Registro inicial en toneladas_____________________________________________________"<<endl;
							    cout<<"Digite la existencia inicial de Urea:"; cin>>UreaExistenciaInicial;
							    if(UreaExistenciaInicial <= -1){
							    	cout<<"No puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!"<<endl;
									VolverARegistrarExistenciaInicialUrea = 1;
								}
								else{
									cout<<"La mercancía inicial de la UREA ha sido registrada correctamente!!"<<endl;
									VolverARegistrarExistenciaInicialUrea = 2;
								}
							}
						}
						//----------------------------------------------------------------------------------------------------------------------------------
						//1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL CON LA SENTENCIA "if" YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
						//2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
						//3.- SE USA CICLO WHILE PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
						//4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
						//5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
						if(FosfatoExistenciaInicial >= 1){
							cout<<"No puede registar más de una vez la existencia inicial del FOSFATO!!"<<endl;
						}
						else{
							double VolverARegistrarExistenciaInicialFosfato = 1;
							while(VolverARegistrarExistenciaInicialFosfato == 1){
								cout<<"Registro inicial en toneladas___________________________________________________________"<<endl;
								cout<<"Digite la existencia inicial del Fosfato:"; cin>>FosfatoExistenciaInicial;
								if(FosfatoExistenciaInicial <= -1){
									cout<<"No puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!"<<endl;
									VolverARegistrarExistenciaInicialFosfato = 1;
								}
								
								else{
									cout<<"La mercancía inicial del FOSFATO ha sido registrada correctamente!!"<<endl;
									VolverARegistrarExistenciaInicialFosfato = 2;
								}
							}
						}
					cout<<"---------------------------------------------------------------------------------------------------------"<<endl;
					//UNA VEZ ECHO TODOS NUESTRAS EXISTENCIAS INICIALES PARA EL SULFATO DE AMONIO, UREA Y FOSFATO REGRESAMOS AUTOMATICAMENTE-
					//HA NUESTRO MENÚ PRINCIPAL CUMPLIENDO LA CONDICIÓN DEL CICLO WHILE (RepetirMenuPrincipal == 1)
					RepetirMenuPrincipal = 1;
					break;
					//ENTRADA DE MERCANCIA
					case 2:
						{
							//1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0 CON LA SENTENCIA "if",
							//SI ES ASÍ NO SE PUEDEN HACER ENTRADAS Y SALIDAS DE MERCANCÍA
							//2.- CASO CONTRARIO PRINCIPALMENTE SE TIENE CICLO WHILE PARA REPETIR PRINCIPALMENTE EL MENÚ DE ENTRADA DE MERCANCÍA Y TODOS LOS 
							//PROCESOS SEGÚN EL NÚMERO DE CASO INDICADO
							if((SulfatoDeAmonioExistenciaInicial == 0)&&(UreaExistenciaInicial == 0)&&(FosfatoExistenciaInicial == 0)){
								cout<<"\n¡¡No puede dar entrada de mercancía, ya que no ha registrado ninguna existencia inicial!!"<<endl;
							}
							else{
								int RepetirMenuEntradaDeMercancia = 1;
								while(RepetirMenuEntradaDeMercancia == 1){
									cout<<"Eliga una opción del 1 al 3 para Registrar Entrada de Mercancía"<<endl;
									cout<<"1.- Sulfato de Amonio"<<endl;
									cout<<"2.- Urea"<<endl;
									cout<<"3.- Fosfato"<<endl;
									cout<<"4.- Menú principal"<<endl;
									int OpcEntradaMercancia;
									cout<<"Opcion: "; 
									//SE LEE EL CASO INDICADO POR EL USUARIO
									cin>>OpcEntradaMercancia;
									//POSTERIORMENTE SE HACE EL PROCESO DEL CASO INDICADO POR EL USUARIO
									switch(OpcEntradaMercancia){
										case 1:
											system("cls");
											{
												//1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO WHILE
												//SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
												//2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
												//3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
												//4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
												//5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
												//6.- SI SE INTRODUJO UN NÚMERO POSITIVO SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
												//7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
												int VolverIngrearSulfatoDeAmonio = 1;
												while(VolverIngrearSulfatoDeAmonio == 1){
													cout<<"Entrada en toneladas________________________________________________________________________"<<endl;
													cout<<"Digita la cantidad a ingresar del Sulfato de Amonio: "; cin>>SulfatoDeAmonioCantidadAIngresar;
													if(SulfatoDeAmonioCantidadAIngresar <= -1){
														cout<<"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!"<<endl;
														SulfatoDeAmonioCantidadAIngresar = 0;
														VolverIngrearSulfatoDeAmonio = 1;	
													}
													else{
														SulfatoDeAmonioExistenciaInicial = SulfatoDeAmonioExistenciaInicial + SulfatoDeAmonioCantidadAIngresar;
														cout<<"El registro del SULFATO DE AMONIO ha sido exitoso!!"<<endl;
														VolverIngrearSulfatoDeAmonio = 2;
														cout<<"--------------------------------------------------------------"<<endl;
													}
												}
											}
										break;
										case 2:
											system("cls");
											{
												//1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO WHILE
												//SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
												//2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
												//3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
												//4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
												//5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
												//6.- SI SE INTRODUJO UN NÚMERO POSITIVO SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
												//7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
												int VolverIngrearUrea = 1;
												while(VolverIngrearUrea == 1){
													cout<<"Entrada en toneladas________________________________________________________________________"<<endl;
													cout<<"Digita la cantidad a ingresar de la Urea: "; cin>>UreaCantidadAIngresar;
													if(UreaCantidadAIngresar <= -1){
														cout<<"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!"<<endl;
														UreaCantidadAIngresar = 0;
														VolverIngrearUrea = 1;	
													}
													else{
														UreaExistenciaInicial = UreaExistenciaInicial + UreaCantidadAIngresar;
														cout<<"El registro de la UREA ha sido exitoso!!"<<endl;
														VolverIngrearUrea = 2;
														cout<<"--------------------------------------------------------------"<<endl;
													}
												}
											}
										break;
										case 3:
											system("cls");
											{
												//1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO WHILE
												//SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
												//2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
												//3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
												//4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
												//5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
												//6.- SI SE INTRODUJO UN NÚMERO POSITIVO SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
												//7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
												int VolverIngrearFosfato = 1;
												while(VolverIngrearFosfato == 1){
													cout<<"Entrada en toneladas________________________________________________________________________"<<endl;
													cout<<"Digita la cantidad a ingresar del Fosfato: "; cin>>FosfatoCantidadAIngresar;
													if(FosfatoCantidadAIngresar <= -1){
														cout<<"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!"<<endl;
														FosfatoCantidadAIngresar = 0;
														VolverIngrearFosfato = 1;	
													}
													else{
														FosfatoExistenciaInicial = FosfatoExistenciaInicial + FosfatoCantidadAIngresar;
														cout<<"El registro del FOSFATO ha sido exitoso!!"<<endl;
														VolverIngrearFosfato = 2;
														cout<<"--------------------------------------------------------------"<<endl;
													}
												}
											}
										break;
										case 4:
											//1.- ROMPEMOS EL CICLO WHILE DEL MENÚ DE LA ENTRADA DE MERCANCÍA
											//2.- Y CUMPLIMOS CON LA CONDICIÓN DE CICLO DEL MENÚ PRINCIPAL PARA RETORNAR AL MENÚ PRINCIPAL
											RepetirMenuEntradaDeMercancia = 2;
											RepetirMenuPrincipal = 1;
										break;
									}
								}
							}
							
						}
					break;
					//SALIDA DE MERCANCÍA
					case 3:
						{
							//1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0 CON LA SENTENCIA "if",
							 //SI ES ASÍ NO SE PUEDEN HACER ENTRADAS Y SALIDAS DE MERCANCÍA
							//2.- CASO CONTRARIO PRINCIPALMENTE SE TIENE CICLO WHILE PARA REPETIR PRINCIPALMENTE EL MENÚ DE ENTRADA DE MERCANCÍA Y TODOS LOS 
							//PROCESOS SEGÚN EL NÚMERO DE CASO INDICADO
							if((SulfatoDeAmonioExistenciaInicial == 0)&&(UreaExistenciaInicial == 0)&&(FosfatoExistenciaInicial == 0)){
								cout<<"\n¡¡No puede dar salida de mercancía, ya que no ha registrado ninguna existencia inicial!!"<<endl;
							}
							else{
								int RepetirMenuSalidaDeMercancia = 1;
								while(RepetirMenuSalidaDeMercancia == 1){
									cout<<"Eliga una opción del 1 al 3 para la Salida de Mercancía"<<endl;
									cout<<"1.- Sulfato de Amonio"<<endl;
									cout<<"2.- Urea"<<endl;
									cout<<"3.- Fosfato"<<endl;
									cout<<"4.- Menú principal"<<endl; 
									int OpcSalidaMercancia; 
									cout<<"Opción: ";
									//LECTURA DE OPCION DEL MENÚ DE SALIDA DE MERCANCÍA
									cin>>OpcSalidaMercancia;
									//POSTERIORMENTE SE HACE EL PROCESO DEL CASO INDICADO POR EL USUARIO
									switch(OpcSalidaMercancia){
										case 1:
											system("cls");
											{
												//1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
												//SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
												//2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
												//3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
												//4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA HA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
												//INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
												//4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
												//5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
												//6.-REGRESAMOS A NUESTRO MENÚ DE SALIDA DE MERCANCÍA
												int VolverADarSalidaDeMercanciaSulfatoDeAmonio = 1;
												while(VolverADarSalidaDeMercanciaSulfatoDeAmonio == 1){
													cout<<"Salida en toneladas________________________________________________________________________"<<endl;
													cout<<"Digita la cantidad de Salida de SULFATO DE AMONIO: "; cin>>SulfatoDeAmonioCantidadDeSalida;
													if(SulfatoDeAmonioCantidadDeSalida <= -1){
														cout<<"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!"<<endl;
														SulfatoDeAmonioCantidadDeSalida = 0;
														VolverADarSalidaDeMercanciaSulfatoDeAmonio = 1;
													}
													else{
														if(SulfatoDeAmonioCantidadDeSalida > SulfatoDeAmonioExistenciaInicial){
															cout<<"No puede retirar más cantidad de SULFATO DE AMONIO ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor..."<<endl;
															VolverADarSalidaDeMercanciaSulfatoDeAmonio = 1;
														}
														else{
															SulfatoDeAmonioExistenciaInicial = SulfatoDeAmonioExistenciaInicial - SulfatoDeAmonioCantidadDeSalida;
															cout<<"La salida de SULFATO DE AMONIO ha sido exitosa!!"<<endl;
															VolverADarSalidaDeMercanciaSulfatoDeAmonio = 2;
														}
													}
												}
											}
										break;
										
										case 2:
											system("cls");
											{
												//1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
												//SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
												//2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
												//3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
												//4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA HA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
												//INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
												//4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
												//5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
												//6.-REGRESAMOS A NUESTRO MENÚ DE SALIDA DE MERCANCÍA
												int VolverADarSalidaDeMercanciaUrea = 1;
												while(VolverADarSalidaDeMercanciaUrea == 1){
													cout<<"Salida en toneladas________________________________________________________________________"<<endl;
													cout<<"Digita la cantidad de Salida de la UREA: "; cin>>UreaCantidadDeSalida;
													if(UreaCantidadDeSalida <= -1){
														cout<<"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!"<<endl;
														UreaCantidadDeSalida = 0;
														VolverADarSalidaDeMercanciaUrea = 1;
													}
													else{
														if(UreaCantidadDeSalida > UreaExistenciaInicial){
															cout<<"No puede retirar más cantidad de UREA ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor..."<<endl;
															VolverADarSalidaDeMercanciaUrea = 1;
														}
														else{
															UreaExistenciaInicial = UreaExistenciaInicial - UreaCantidadDeSalida;
															cout<<"La salida de la UREA ha sido exitosa!!"<<endl;
															VolverADarSalidaDeMercanciaUrea = 2;
														}
													}
												}
											}
										break;
										
										case 3:
											system("cls");
											{
												//1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
												//SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
												//2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
												//3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
												//4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA HA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
												//INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
												//4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
												//5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
												//6.-REGRESAMOS A NUESTRO MENÚ DE SALIDA DE MERCANCÍA
												int VolverADarSalidaDeMercanciaFosfato = 1;
												while(VolverADarSalidaDeMercanciaFosfato == 1){
													cout<<"Salida en toneladas________________________________________________________________________"<<endl;
													cout<<"Digita la cantidad de Salida del FOSFATO: "; cin>>FosfatoCantidadDeSalida;
													if(FosfatoCantidadDeSalida <= -1){
														cout<<"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!"<<endl;
														FosfatoCantidadDeSalida = 0;
														VolverADarSalidaDeMercanciaFosfato = 1;
													}
													else{
														if(FosfatoCantidadDeSalida > FosfatoExistenciaInicial){
															cout<<"No puede retirar más cantidad de FOSFATO ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor..."<<endl;
															VolverADarSalidaDeMercanciaFosfato = 1;
														}
														else{
															FosfatoExistenciaInicial = FosfatoExistenciaInicial - FosfatoCantidadDeSalida;
															cout<<"La salida del FOSFATO ha sido exitosa!!"<<endl;
															VolverADarSalidaDeMercanciaFosfato = 2;
														}
													}
												}
											}
										break;
										
										case 4:
											//1.- ROMPEMOS EL CICLO DEL MENÚ DE LA ENTRADA DE MERCANCÍA PARA QUE YA NO RETORNE
											//2.- Y CUMPLIMOS CON LA CONDICIÓN DE CICLO DEL MENÚ PRINCIPAL PARA RETORNAR AL MENÚ PRINCIPAL
											RepetirMenuSalidaDeMercancia = 2;
											RepetirMenuPrincipal = 1;
										break;
									}
								}
							}
						}
					break;
					//REPORTE DE EXISTENCIA
					case 4:
						//1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0 CON LA SENTENCIA "if",
						//SI ES ASÍ NO SE PUEDEN MOSTRAR EXISTENCIAS ACTUALES YA QUE NO LAS HAY
						if((SulfatoDeAmonioExistenciaInicial == 0)&&(UreaExistenciaInicial == 0)&&(FosfatoExistenciaInicial == 0)){
							cout<<"\n¡¡No existe ninguna cantidad en toneladas para Sulfato de Amonio, Urea y Fosfato Ya que no ha registrado ninguna existencia inicial!!"<<endl;
						}
						else{
							//SE DA SMS DE SALIDA PARA MOSTAR: "Reporte de existencia:"
							cout<<"Reporte de existencia:"<<endl;
							
							//SE IMPRIME EL RESULTADO DE LAS EXISTENCIAS ACTUALES DE LAS MERCANCÍAS PARA EL SULFATO DE AMONIO, UREA Y FOSFATO EN TONELADAS
							cout<<"La existencia actual de Sulfato de Amonio es de: "<< SulfatoDeAmonioExistenciaInicial<< " Ton."<<endl;
							cout<<"La existencia actual de Urea es de: "<< UreaExistenciaInicial<< " Ton."<<endl;
							cout<<"La existencia actual de Fosfato es de: "<< FosfatoExistenciaInicial<< " Ton."<<endl;
							cout<<"-----------------------------------------------------------------------------------"<<endl;
							RepetirMenuPrincipal = 1;
						}
					break;
					case 5:
						//SMS DE SALIDA, Y SE ROMPEN LOS CICLOS DEL MENÚ PRINCIPAL Y DE REPETIR EL PROGRAMA
						cout<<"BYE!!";
						RepetirMenuPrincipal = 2;
						RepetirPrograma = 2;
					break;
					default:
						//SI NO SE INTRODÚJO UN NÚMERO DEL MENÚ PRINCIPAL SE MANDA SMS Y REGRESAMOS AL MENÚ PRINCIPAL
						cout<<"El Número o carácter ingresado no existe en el menú";
						RepetirMenuPrincipal = 1;
				}
			}
		}
		else{
			//SI EL USUARIO Y LA CONTRASEÑA NO SON COMO SE ASIGNARON SE MANDA SE SMS DE QUE ALGO ES INCORRECTO
			//SE PREGUNTA SI SE QUIERE REPETIR EL PROGRAMA SE REPITE SI SE CUMPLE LA CONDICIÓN DEL CICLO WHILE
			cout<<"USUARIO O CONTRASEÑA INCORRECTOS"<<endl;
			cout<<"¿Quieres repetir el programa?, (1/2): "; cin>>RepetirPrograma;
		}
	}
	return 0;
}






      
