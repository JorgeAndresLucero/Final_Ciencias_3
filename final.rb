class Apostador 
	attr_accessor :nombre, :documento, :edad, :num_perro
end

def initialize(nombre, documento, edad, num_perro)
    @nombre = nombre
    @documento = documento
    @edad = edad
    @num_perro = num_perro
end

def ingresar_datos()
	perros = [1,2,3,4,5]
	apostadores = []
	for i in (0..4)
	puts "ingrese su nombre"
	nombre = gets.chomp
	puts "ingrese su documento"
	documento = gets.chomp
	puts "ingrese su edad"
	edad = gets.chomp
	puts "Seleccione un perro de 1-5"
	num_perro = gets.chomp
	ap = Apostador.new(nombre,documento,edad,num_perro)
	apostadores[i] = ap
	puts apostadores[i].nombre
	puts apostadores[i].documento
	puts apostadores[i].edad
	puts apostadores[i].num_perro

end
puts "BIENVENIDO A LA CARRERA DE PERROS GALGOS,"
	puts"Compitiendo..."
	
	puts " \\(:v)/ \\(._.)/ \\(:v)/ \\(._.)/ \\(._.)/ \\(:v)/"
	puts "_______________"
	puts "*"
	puts "_______________"
	puts "  *"
	puts "_______________"
	puts "    *"
	puts "_______________"
	puts "      *"
	puts "_______________"
	puts "           *"
	puts "_______________"
	
	ganador = rand(1..5)
	puts "perro ganador :" 
	puts ganador
	for i in (0..4)
	if apostadores[i].num_perro == ganador.to_s
	puts "Ganó el perro el perro No. " + ganador.to_s +  " Con su apostador: " + apostadores[i].nombre	
		end
	end
end

ingresar_datos()
gets()
