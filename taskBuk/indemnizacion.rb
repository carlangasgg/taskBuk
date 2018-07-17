def sueldo
	puts "ingrese sueldo"
	$sueldo = gets.chomp
end
def meses_trabajados
	puts "ingrese meses trabajados"
	$meses_trabajados = gets.chomp
end
def filtro_meses
	if $meses_trabajados.to_i < 12
		puts "No hay indemnización."
	else puts indemnizacion($meses_trabajados.to_i)
	end		
end
def indemnizacion(meses)
	if meses % 12 > 6
		beneficio = $sueldo.to_i * (meses/12) + $sueldo.to_i
		puts "Correspode indemnización de $" + beneficio.to_s
	else
		beneficio = $sueldo.to_i * (meses/12)
		puts "Correspode indemnización de $" + beneficio.to_s
	end
end
sueldo
meses_trabajados
filtro_meses