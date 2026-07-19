Algoritmo alarma_de_medicamentos
	Definir opcion, totalMedicamentos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir encontrado Como Logico
	Definir siguienteID Como Entero
	Dimension id[100]
	Dimension medicamento[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension dosis[100]
	Dimension frecuencia[100]
	Dimension observaciones[100]
	Dimension estado[100]
	totalMedicamentos <- 0
	siguienteID <- 1
	//-------------------------------------------//
	//--|menu_principal_alarma_de_medicamentos|--//
	//-------------------------------------------//
	Repetir
		Escribir "menu principal alarma de medicamentos"
		Escribir "1) registrar medicamento"
		Escribir "2) editar medicamento"
		Escribir "3) eliminar medicamento"
		Escribir "4) buscar medicamento"
		Escribir "5) listar medicamentos"
		Escribir "6) ver detalles del medicamento"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//---------------------------//
			//--|registrar_medicamento|--//
			//---------------------------//
			1:
				Escribir "registrar medicamento"
				id[totalMedicamentos + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalMedicamentos + 1]
				Escribir "ingrese el nombre del medicamento:"
				Leer medicamento[totalMedicamentos + 1]
				Escribir "ingrese la fecha de inicio:"
				Leer fecha[totalMedicamentos + 1]
				Escribir "ingrese la hora:"
				Leer hora[totalMedicamentos + 1]
				Escribir "ingrese la dosis:"
				Leer dosis[totalMedicamentos + 1]
				Escribir "ingrese la frecuencia:"
				Leer frecuencia[totalMedicamentos + 1]
				Escribir "ingrese las observaciones:"
				Leer observaciones[totalMedicamentos + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalMedicamentos + 1]
				totalMedicamentos <- totalMedicamentos + 1
				Escribir "medicamento registrado correctamente."
			//------------------------//
			//--|editar_medicamento|--//
			//------------------------//
			2:
				Escribir "editar medicamento"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalMedicamentos Hacer
						Escribir id[i], " | ", medicamento[i], " | ", fecha[i], " | ", hora[i], " | ", dosis[i], " | ", frecuencia[i], " | ", observaciones[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del medicamento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMedicamentos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo medicamento:"
							Leer medicamento[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese la nueva hora:"
							Leer hora[i]
							Escribir "ingrese la nueva dosis:"
							Leer dosis[i]
							Escribir "ingrese la nueva frecuencia:"
							Leer frecuencia[i]
							Escribir "ingrese las nuevas observaciones:"
							Leer observaciones[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "medicamento editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un medicamento con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|eliminar_medicamento|--//
			//--------------------------//
			3:
				Escribir "eliminar medicamento"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalMedicamentos Hacer
						Escribir id[i], " | ", medicamento[i], " | ", fecha[i], " | ", hora[i], " | ", dosis[i], " | ", frecuencia[i], " | ", observaciones[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del medicamento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMedicamentos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalMedicamentos Entonces
								Para j <- i Hasta totalMedicamentos - 1 Hacer
									
									id[j] <- id[j + 1]
									medicamento[j] <- medicamento[j + 1]
									fecha[j] <- fecha[j + 1]
									hora[j] <- hora[j + 1]
									dosis[j] <- dosis[j + 1]
									frecuencia[j] <- frecuencia[j + 1]
									observaciones[j] <- observaciones[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalMedicamentos <- totalMedicamentos - 1
							Escribir "medicamento eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un medicamento con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|buscar_medicamento|--//
			//------------------------//
			4:
				Escribir "buscar medicamento"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "ingrese el id del medicamento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMedicamentos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrado"
							Escribir id[i], " | ", medicamento[i], " | ", fecha[i], " | ", hora[i], " | ", dosis[i], " | ", frecuencia[i], " | ", observaciones[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un medicamento con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|listar_medicamentos|--//
			//-------------------------//
			5:
				Escribir "listar medicamentos"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalMedicamentos Hacer
						Escribir id[i], " | ", medicamento[i], " | ", fecha[i], " | ", hora[i], " | ", dosis[i], " | ", frecuencia[i], " | ", estado[i]
					FinPara
				FinSi
			//----------------------------------//
			//--|ver_detalles_del_medicamento|--//
			//----------------------------------//
			6:
				Escribir "ver detalles del medicamento"
				Si totalMedicamentos = 0 Entonces
					Escribir "no hay medicamentos registrados."
				SiNo
					Escribir "ingrese el id del medicamento:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalMedicamentos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del medicamento"
							Escribir "id: ", id[i]
							Escribir "medicamento: ", medicamento[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "dosis: ", dosis[i]
							Escribir "frecuencia: ", frecuencia[i]
							Escribir "observaciones: ", observaciones[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un medicamento con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			7:
				Escribir "gracias por utilizar la alarma de medicamentos."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo