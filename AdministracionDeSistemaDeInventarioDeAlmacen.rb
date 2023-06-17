#VARIABLES PARA LA EXISTENCIA INICIAL DE SULFATO DE AMONIO, UREA Y FOSFATO
SulfatoDeAmonioExistenciaInicial = 0
UreaExistenciaInicial = 0
FosfatoExistenciaInicial = 0
#VARIABLES PARA LA ENTRADA DE MERCANCÍA DE SULFATO DE AMONIO, UREA Y FOSFATO
SulfatoDeAmonioCantidadAIngresar = 0
UreaCantidadAIngresar = 0
FosfatoCantidadAIngresar = 0
#VARIABLES PARA LA SALIDA DE MERCANCÍA DE SULFATO DE AMONIO, UREA Y FOSFATO
SulfatoDeAmonioCantidadDeSalida = 0
UreaCantidadDeSalida = 0
FosfatoCantidadDeSalida = 0
#VARIABLE PARA REPETIR PROGRAMA
RepetirPrograma = 1
#CICLO WHILE PARA REPETIR TODO NUESTRO PROGRAMA
while RepetirPrograma == 1
  #MENSAJES DE SALIDA Y LECTURA DE USUARIO Y CONTRASEÑA PARA INICIAR SDESION Y ACCEDER A NUESTRO SISTEMA DE ADMINISTRACIÓN
  puts "Inicio de Sesión"
  puts"usuario: aa"
  puts"contraseña: aa"
  puts""
  print "Ingresa tu usuario: "
  usr = gets.chomp
  print "Ingresa tu contraseña:"
  pass = gets.chomp
  puts""
  system "cls"
  #COMPARACIÓN PARA VERIFICAR SI NUESTRO USUARIO Y CONTRASEÑA SON CORRECTOS CON LA SENTENCIA "if"
  if usr == "aa" and pass == "aa"
    #SI SE CUMPLE LA CONDICIÓN DE QUE NUESTRO USUARIO SEA IGUAL HA "isr" Y CONTRASEÑA IGUAL A "pass" ENTONCES ACCEDEMOS A NUESTRO SISTEMA DE ADMINISTRACIÓN DE FERTILIZANTERS QUÍMICOS
		#CICLO MIENTRAS PARA REPETIR TODO NUESTRO SISTEMA DE ADMINISTRACIÓN SIEMPRE Y CUANDO LA VARIABLE "RepetirMenuPrincipal" SEA IGUAL A: 1
    RepetirMenuPrincipal = 1
    while RepetirMenuPrincipal == 1
      #MENÚ PRINCIPAL PARA ACCEDER A UNA OPCIÓN DESEADA
      puts"\nBIENVENIDO A TU SISTEMA DE ADMINISTRACIÓN FERTILIZANTES QUÍMICOS S.A"
      puts"Eliga una opción del 1 al 5 para Administar el Sistema de inventario de Álmacen:"
      puts""
      puts"1.- Registro de existencia inicial"
      puts"2.- Entrada de Mercancía"
      puts"3.- Salida de Mercancía"
      puts"4.- Reporte de existencia"
      puts"5.- Salir del sistema"
      print"Opción: "
      #LECTURA DE LA VARIABLE "Opc" PARA VERIFICAR QUE OPERACIONES QUEREMOS HACER
      Opc = gets.to_i
      system "cls"

      case Opc

      #REGISTRO DE EXISTENCIA INICIAL
      when 1
        #REGISTRO EXISTENCIA INICIAL PARA EL SULFATO DE AMONIO
        #1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL CON LA SENTENCIA "if" YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
				#2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
				#3.- SE USA CICLO WHILE PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
				#4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
				#5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
        if SulfatoDeAmonioExistenciaInicial >= 1
          print"\nNo puede registar más de una vez la existencia inicial del SULFATO DE AMONIO!!\n"
        else
          VolverARegistrarExistenciaInicialSulfatoDeAmonio = 1
          while VolverARegistrarExistenciaInicialSulfatoDeAmonio == 1
            print"\nRegistro inicial en toneladas_____________________________________________________\n"
            print"Digite la existencia inicial de Sulfato de Amonio: "
            SulfatoDeAmonioExistenciaInicial = gets.to_f
            if SulfatoDeAmonioExistenciaInicial <= -1
              print"\nNo puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!\n"
              VolverARegistrarExistenciaInicialSulfatoDeAmonio = 1
            else
              NuevaMercanciaSulfatoDeAmonio = SulfatoDeAmonioExistenciaInicial + SulfatoDeAmonioCantidadAIngresar - SulfatoDeAmonioCantidadDeSalida
              print"La mercancía inicial del SULFATO DE AMONIO ha sido registrada correctamente!!\n"
              VolverARegistrarExistenciaInicialSulfatoDeAmonio = 2
            end
          end
        end
        #REGISTRO EXISTENCIA INICIAL PARA LA UREA
        #1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL CON LA SENTENCIA "if" YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
				#2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
				#3.- SE USA CICLO WHILE PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
				#4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
				#5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
        if UreaExistenciaInicial >= 1
          print"\nNo puede registar más de una vez la existencia inicial de la UREA!!\n"
        else
          VolverARegistrarExistenciaInicialUrea = 1
          while VolverARegistrarExistenciaInicialUrea == 1
            print"\nRegistro inicial en toneladas_____________________________________________________\n"
            print"Digite la existencia inicial de la UREA: "
            UreaExistenciaInicial = gets.to_f
            if UreaExistenciaInicial <= -1
              print"\nNo puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!\n"
              VolverARegistrarExistenciaInicialUrea = 1
            else
              NuevaMercanciaUrea = UreaExistenciaInicial + UreaCantidadAIngresar - UreaCantidadDeSalida
              print"La mercancía inicial de la UREA ha sido registrada correctamente!!\n"
              VolverARegistrarExistenciaInicialUrea = 2
            end
          end
        end
        #REGISTRO EXISTENCIA INICIAL PARA EL FOSFATO
        #1.- SE COMPRUEBA QUE NO SE HALLA HECHO YA ANTES UNA EXISTENCIA INIACIAL CON LA SENTENCIA "if" YA QUE NO SE PUEDE HACER MÁS DE UNA VEZ
				#2.- SE COMPARA SI EL USUARIO INTRODUJO UN NUMERO NEGATIVO, SI ES ASI RETORNAMOS AL CICLO MIENTRAS PARA INGREASAR UN NÚMERO POSITIVO
				#3.- SE USA CICLO WHILE PARA EN CASO DE QUE SE DEN NÚMEROS NEGATIVOS NOS RETORNE A EL SMS DE SALIDA Y LECTURA YA QUE NO SE PUEDEN INGRESAR NÚMEROS NEGATIVOS
				#4.- EN CASO DE QUE NO SE INTRODUJAN NÚMEROS NEGATIVOS SE DA SMS DE SALIDA PARA INDICAR QUE SE HIZO EL REGISTRO CORRECTAMENTE
				#5.- ROMPEMOS NUESTRO CICLO MIENTRAS PARA QUE NO NOS RETORNE AL MENSAJE DE SALIDA Y LECTURA DE LA EXISTENCIA INICIAL
        if FosfatoExistenciaInicial >= 1
          print"\nNo puede registar más de una vez la existencia inicial del FOSFATO!!\n"
        else
          VolverARegistrarExistenciaInicialFosfato = 1
          while VolverARegistrarExistenciaInicialFosfato == 1
            print"\nRegistro inicial en toneladas_____________________________________________________\n"
            print"Digite la existencia inicial del FOSFATO: "
            FosfatoExistenciaInicial = gets.to_f
            if FosfatoExistenciaInicial <= -1
              print"\nNo puede registrar esxistencias iniciales negativas, porfavor ingrese una cantidad positiva!!!\n"
              VolverARegistrarExistenciaInicialFosfato = 1
            else
              NuevaMercanciaFosfato = FosfatoExistenciaInicial + FosfatoCantidadAIngresar - FosfatoCantidadDeSalida
              print"La mercancía inicial del FOSFATO ha sido registrada correctamente!!\n"
              VolverARegistrarExistenciaInicialFosfato = 2
            end
          end
        end

      #ENTRADA DE MERCANCÍA
      when 2
        #1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0 CON LA SENTENCIA "if",
				#SI ES ASÍ NO SE PUEDEN HACER ENTRADAS Y SALIDAS DE MERCANCÍA
				#2.- CASO CONTRARIO PRINCIPALMENTE SE TIENE CICLO WHILE PARA REPETIR PRINCIPALMENTE EL MENÚ DE ENTRADA DE MERCANCÍA Y TODOS LOS
				#PROCESOS SEGÚN EL NÚMERO DE CASO INDICADO
        if SulfatoDeAmonioExistenciaInicial == 0 and UreaExistenciaInicial == 0 and FosfatoExistenciaInicial
          print"\n¡¡No puede dar entrada de mercancía, ya que no ha registrado ninguna existencia inicial!!\n"
        else
          RepetirMenuEntradaDeMercancia = 1
          while RepetirMenuEntradaDeMercancia == 1
            print"\nEliga una opción del 1 al 3 para Registrar Entrada de Mercancía\n"
            print"1.- Sulfato de Amonio\n"
            print"2.- Urea\n"
            print"3.- Fosfato\n"
            print"4.- Menú principal\n"
            print"Opción: "
            #SE LEE EL CASO INDICADO POR EL USUARIO
            OpcEntradaMercancia = gets.to_i
            #POSTERIORMENTE SE HACE EL PROCESO DEL CASO INDICADO POR EL USUARIO
            case OpcEntradaMercancia
            #ENTRADA DE MERCANCÍA PARA EL SULFATO DE AMONIO
            when 1
              system "cls"
              #1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO WHILE
							#SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
							#2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
							#3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
							#4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
							#5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
							#6.- SI SE INTRODUJO UN NÚMERO POSITIVO SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
							#7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
              VolverIngrearSulfatoDeAmonio = 1
              while VolverIngrearSulfatoDeAmonio == 1
                  print"\nEntrada en toneladas________________________________________________________________________\n"
                  print"Digita la cantidad a ingresar del Sulfato de Amonio: "
                SulfatoDeAmonioCantidadAIngresar = gets.to_f
                if SulfatoDeAmonioCantidadAIngresar <= -1
                  print"\nNo puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!\n"
                  SulfatoDeAmonioCantidadAIngresar = 0
                  VolverIngrearSulfatoDeAmonio = 1
                else
                  SulfatoDeAmonioExistenciaInicial = SulfatoDeAmonioExistenciaInicial + SulfatoDeAmonioCantidadAIngresar
                  print"El registro del SULFATO DE AMONIO ha sido exitoso!!\n"
                  VolverIngrearSulfatoDeAmonio = 2
                  print"--------------------------------------------------------------\n"
                end
              end
            #ENTRADA DE MERCANCÍA PARA LA UREA
            when 2
              system "cls"
              #1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO WHILE
							#SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
							#2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
							#3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
							#4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
							#5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
							#6.- SI SE INTRODUJO UN NÚMERO POSITIVO SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
							#7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
              VolverIngrearUrea = 1
              while VolverIngrearUrea == 1
                print"\nEntrada en toneladas________________________________________________________________________\n"
                print"Digita la cantidad a ingresar de la UREA: "
                UreaCantidadAIngresar = gets.to_f
                if UreaCantidadAIngresar <= -1
                  print"\nNo puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!\n"
                  UreaCantidadAIngresar = 0
                  VolverIngrearUrea = 1
                else
                  UreaExistenciaInicial = UreaExistenciaInicial + UreaCantidadAIngresar
                  print"El registro de la UREA ha sido exitoso!!\n"
                  VolverIngrearUrea = 2
                  print"--------------------------------------------------------------\n"
                end
              end
            #ENTRADA DE MERCANCÍA PARA EL FOSFATO
            when 3
              system "cls"
              #1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO WHILE
							#SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO YA QUE NO SE PERMITE
							#2.- SE DA SMS DE SALIDA PARA PEDIR ENTRADA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A INGRESAR
							#3.- SE ASIGNA LA VARIABLE DE NUEVA MERCANCÍA EL NUEVO VALOR INGRESADO
							#4.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
							#5.- SI SE INTRODUJO UN NÚMERO POSITIVO SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
							#6.- SI SE INTRODUJO UN NÚMERO POSITIVO SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
							#7.-REGRESAMOS A NUESTRO MENÚ DE ENTRADA DE MERCANCÍA
              VolverIngrearFosfato = 1
              while VolverIngrearFosfato == 1
                print"\nEntrada en toneladas________________________________________________________________________\n"
                print"Digita la cantidad a ingresar del FOSFATO: "
                FosfatoCantidadAIngresar = gets.to_f
                if FosfatoCantidadAIngresar <= -1
                  print"\nNo puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!\n"
                  FosfatoCantidadAIngresar = 0
                  VolverIngrearFosfato = 1
                else
                  FosfatoExistenciaInicial = FosfatoExistenciaInicial + FosfatoCantidadAIngresar
                  print"El registro del FOSFATO ha sido exitoso!!\n"
                  VolverIngrearFosfato = 2
                  print"--------------------------------------------------------------\n"
                end
              end
            #REGRESAR AL MENÚ PRINCIPAL
            when 4
              #1.- ROMPEMOS EL CICLO WHILE DEL MENÚ DE LA ENTRADA DE MERCANCÍA
							#2.- Y CUMPLIMOS CON LA CONDICIÓN DE CICLO DEL MENÚ PRINCIPAL PARA RETORNAR AL MENÚ PRINCIPAL
              RepetirMenuEntradaDeMercancia = 2
              RepetirMenuPrincipal = 1
            end
          end
        end

      #SALIDA DE MERCANCÍA
      when 3
        #1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0 CON LA SENTENCIA "if",
				#SI ES ASÍ NO SE PUEDEN HACER ENTRADAS Y SALIDAS DE MERCANCÍA
				#2.- CASO CONTRARIO PRINCIPALMENTE SE TIENE CICLO WHILE PARA REPETIR PRINCIPALMENTE EL MENÚ DE ENTRADA DE MERCANCÍA
        #Y TODOS LOS PROCESOS SEGÚN EL NÚMERO DE CASO INDICADO
        if SulfatoDeAmonioExistenciaInicial == 0 and UreaExistenciaInicial == 0 and FosfatoExistenciaInicial
          print"\n¡¡No puede dar salida de mercancía, ya que no ha registrado ninguna existencia inicial!!\n"
        else
          RepetirMenuSalidaDeMercancia = 1
          while RepetirMenuSalidaDeMercancia == 1
            print"\nEliga una opción del 1 al 3 para la Salida de Mercancía\n"
            print"1.- Sulfato de Amonio\n"
            print"2.- Urea\n"
            print"3.- Fosfato\n"
            print"4.- Menú principal\n"
            print"Opción: "
            #LECTURA DE OPCION DEL MENÚ DE SALIDA DE MERCANCÍA
            OpcSalidaMercancia = gets.to_i
            #POSTERIORMENTE SE HACE EL PROCESO DEL CASO INDICADO POR EL USUARIO
            case OpcSalidaMercancia
            #SALIDA DE MERCANCÍA PARA EL SULFATO DE AMONIO
            when 1
              system "cls"
              #1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
							#SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
							#2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
							#3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
							#4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA HA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
							#INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
							#4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
							#5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
							#6.-REGRESAMOS A NUESTRO MENÚ DE SALIDA DE MERCANCÍA
              VolverADarSalidaDeMercanciaSulfatoDeAmonio = 1
              while VolverADarSalidaDeMercanciaSulfatoDeAmonio == 1
                print"\nSalida en toneladas________________________________________________________________________\n"
                print"Digita la cantidad de Salida de SULFATO DE AMONIO: "
                SulfatoDeAmonioCantidadDeSalida = gets.to_f
                if SulfatoDeAmonioCantidadDeSalida <= -1
                  print"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!\n"
                  SulfatoDeAmonioCantidadDeSalida = 0
                  VolverADarSalidaDeMercanciaSulfatoDeAmonio = 1
                elsif SulfatoDeAmonioCantidadDeSalida > SulfatoDeAmonioExistenciaInicial
                  print"\nNo puede retirar más cantidad de SULFATO DE AMONIO ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...\n"
                  VolverADarSalidaDeMercanciaSulfatoDeAmonio = 1
                else
                  SulfatoDeAmonioExistenciaInicial = SulfatoDeAmonioExistenciaInicial - SulfatoDeAmonioCantidadDeSalida
                  print"La salida de SULFATO DE AMONIO ha sido exitosa!!\n"
                  VolverADarSalidaDeMercanciaSulfatoDeAmonio = 2
                end
              end

            #SALIDA DE MERCANCÍA PARA LA UREA
            when 2
              system "cls"
              #1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
							#SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
							#2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
							#3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
							#4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA HA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
							#INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
							#4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
							#5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
							#6.-REGRESAMOS A NUESTRO MENÚ DE SALIDA DE MERCANCÍA
              VolverADarSalidaDeMercanciaUrea = 1
              while VolverADarSalidaDeMercanciaUrea == 1
                print"\nSalida en toneladas________________________________________________________________________\n"
                print"Digita la cantidad de Salida de UREA: "
                UreaCantidadDeSalida = gets.to_f
                if UreaCantidadDeSalida <= -1
                  print"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!\n"
                  UreaCantidadDeSalida = 0
                  VolverADarSalidaDeMercanciaUrea = 1
                elsif UreaCantidadDeSalida > UreaExistenciaInicial
                  print"\nNo puede retirar más cantidad de UREA ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...\n"
                  VolverADarSalidaDeMercanciaUrea = 1
                else
                  UreaExistenciaInicial = UreaExistenciaInicial - UreaCantidadDeSalida
                  print"La salida de UREA ha sido exitosa!!\n"
                  VolverADarSalidaDeMercanciaUrea = 2
                end
              end

            #SALIDA DE MERCANCÍA PARA EL FOSFATO
            when 3
              system "cls"
              #1.- SE DECLARA VARIABLE PARA DESPUÉS USARLA EN CICLO WHILE Y NOS RETORNE DE NUEVO DESPUÉS DEL CICLO MIENTRAS
							#SI ES QUE SE INTRODUCE UN NÚMERO NEGATIVO Y SE PRETENDE RETIRAR MÁS MERCANCÍA DE LA QUE NO SE CUENTA, YA QUE NO SE PERMITE
							#2.- SE DA SMS DE SALIDA PARA PEDIR SALIDA DE MERCANCÍA Y DESPUÉS SE LEE CANTIDAD A RETIRAR
							#3.- SE COMPARA SI SE INTRODUJO UN NÚMERO NEGATIVO, DE SER ASÍ RETORNAMOS A VOLVER PEDIR DATOS Y DAR LECTURA CUMPLIENDO LA CONDICIÓN DEL CICLO
							#4.- SI NO PASA ESO, SE VUELVE A COMPARAR SI LA CANTIDAD DESEADA HA RETIRAR ES MAYOR A LA QUE SE TIENE, SI ES ASÍ SE DA SMS DE SALIDA
							#INDICANDO QUE NO SE PUEDE RETIRAR MÁS DE LA QUE NO SE CUENTA YA ES ALGO ILÓGICO
							#4.- SI SE INTRODUJO UN NÚMERO POSITIVO Y UNA CANTIDAD MENOR A LA ACTUAL SE DA SMS DE SALIDA DICIENDO QUE EL REGISTRO FUE EXITOSO
							#5.- SE ROMPE EL CICLO PARA QUE NO VOLVAMOS A RETORNAR A VOLVER A PEDIR DATO Y DAR LECTURA
							#6.-REGRESAMOS A NUESTRO MENÚ DE SALIDA DE MERCANCÍA
              VolverADarSalidaDeMercanciaFosfato = 1
              while VolverADarSalidaDeMercanciaFosfato == 1
                print"\nSalida en toneladas________________________________________________________________________\n"
                print"Digita la cantidad de Salida de FOSFATO: "
                FosfatoCantidadDeSalida = gets.to_f
                if FosfatoCantidadDeSalida <= -1
                  print"No puede ingresar cantidades negativas, porfavor ingrese una cantidad positiva!!\n"
                  FosfatoCantidadDeSalida = 0
                  VolverADarSalidaDeMercanciaFosfato = 1
                elsif FosfatoCantidadDeSalida > FosfatoExistenciaInicial
                  print"\nNo puede retirar más cantidad de FOSFATO ya que no cuenta con esa cantidad!!, por favor retire una cantidad menor...\n"
                  VolverADarSalidaDeMercanciaFosfato = 1
                else
                  FosfatoExistenciaInicial = FosfatoExistenciaInicial - FosfatoCantidadDeSalida
                  print"La salida de FOSFATO ha sido exitosa!!\n"
                  VolverADarSalidaDeMercanciaFosfato = 2
                end
              end

            #REGRESAR AL MENÚ PRINCIPAL
            when 4
              #1.- ROMPEMOS EL CICLO DEL MENÚ DE LA ENTRADA DE MERCANCÍA PARA QUE YA NO RETORNE
							#2.- Y CUMPLIMOS CON LA CONDICIÓN DE CICLO DEL MENÚ PRINCIPAL PARA RETORNAR AL MENÚ PRINCIPAL
              RepetirMenuSalidaDeMercancia = 2
              RepetirMenuPrincipal = 1
            end
          end
        end

      #REPORTE DE EXISTENCIA
      when 4
        #1.- SE COMPARA SI LAS EXISTENCIAS INICIALES DE SULFATO DE AMONIO, UREA Y FOSFATO SEAN IGUAL 0 CON LA SENTENCIA "if",
			  #SI ES ASÍ NO SE PUEDEN MOSTRAR EXISTENCIAS ACTUALES YA QUE NO LAS HAY
        if SulfatoDeAmonioExistenciaInicial == 0 and UreaExistenciaInicial == 0 and FosfatoExistenciaInicial
          print"\n¡¡No existe ninguna cantidad en toneladas para Sulfato de Amonio, Urea y Fosfato Ya que no ha registrado ninguna existencia inicial!!\n"
        else
          #SE DA SMS DE SALIDA PARA MOSTAR: "Reporte de existencia:"
          print("\nReporte de existencia:\n")

          #SE IMPRIME EL RESULTADO DE LAS EXISTENCIAS ACTUALES DE LAS MERCANCÍAS PARA EL SULFATO DE AMONIO, UREA Y FOSFATO EN TONELADAS
          print"La Existencia actual de SULFATO DE AMONIO es de: ", SulfatoDeAmonioExistenciaInicial, " Ton.\n"
          print"La Existencia actual de UREA es de: ", UreaExistenciaInicial, " Ton.\n"
          print"La Existencia actual del FOSFATO es de: ", FosfatoExistenciaInicial, " Ton.\n"
          print"-----------------------------------------------------------------------------------\n"
        end

      #SALIR DEL SISTEMA
      when 5
        #SMS DE SALIDA, Y SE ROMPEN LOS CICLOS DEL MENÚ PRINCIPAL Y DE REPETIR EL PROGRAMA
        RepetirMenuPrincipal = 2
        RepetirPrograma = 2
        print("EJECUCIÓN FINALIZADA!!")
      end
    end
  else
    #SI EL USUARIO Y LA CONTRASEÑA NO SON COMO SE ASIGNARON SE MANDA SE SMS DE QUE ALGO ES INCORRECTO
	  #SE PREGUNTA SI SE QUIERE REPETIR EL PROGRAMA SE REPITE SI SE CUMPLE LA CONDICIÓN DEL CICLO WHILE
    puts("USUARIO O CONTRASEÑA INCORRECTOS!!")
    print"¿Quieres repetir el programa?, (1/2): "
    RepetirPrograma = gets.to_i
    if RepetirPrograma == 2
      print("Ejecución finalizada!!")
    end
  end
end
