#Supuestos:
#Se consideran los días de vacaciones adicionales sólo si ha cumplido 3 años de trabajo en la empresa actual.
require 'date'

def antiguedad
	puts "Ingrese años de antigüedad en trabajos anteriores"
	$anterior = gets.chomp
end
def servicioActual
	puts "Ingrese fecha de ingreso a la empresa (dd-mm-aaaa)"
	$servicio = gets.chomp
end
def vacaciones
	puts "Ingrese fecha a calcular (dd-mm-aaaa)"
	$vacaciones = gets.chomp
end
def calculaDias
	fechaServicio = Date.new($servicio.split("-")[2].to_i,$servicio.split("-")[1].to_i,$servicio.split("-")[0].to_i)
	fechaVacaciones = Date.new($vacaciones.split("-")[2].to_i,$vacaciones.split("-")[1].to_i,$vacaciones.split("-")[0].to_i)
	
	auxFecha = fechaVacaciones - fechaServicio
	aniosEmpresa = auxFecha.to_i/365
	aniosAntiguedad = $anterior.to_i
	aniosTotal = aniosEmpresa + aniosAntiguedad
	
	if (aniosTotal < 13)
		puts "Días de vacaciones adicionales: 0"
	elsif (aniosEmpresa < 3)
		puts "Días de vacaciones adicionales: 0"
	else
		diasVacaciones = aniosEmpresa/3
		puts "Días de vacaciones adicionales: " + diasVacaciones.to_s
	end
end

antiguedad
servicioActual
vacaciones
calculaDias


