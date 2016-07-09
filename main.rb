require_relative "agenda"
class Main
	
	p self
	def initialize
		@agenda = Agenda.new()
	end

	def pintar_menu 
	
		
		n=0
		while (n!=7)
			system 'clear'
			puts "Escoge una opcion:\n1.Agregar Cita\n2.Mis citas hoy\n3.Mostrar Citas\n7.Salir"

			n = gets.chomp.to_i

			
			case n
			  when 1
			  	agregar_cita_dialogo
			    
			  when 2
			  	mostrar_citas_hoy_dialogo
			    
			  when 3
			  	mostrar_citas_dialogo
			    
			  when 4
			    
			  when 5
			  		    	  
			  when 7		   	 
			    puts "Exiting"
			    n=7
			end
		end

	end

	def agregar_cita_dialogo
		puts "AGREGAR NUEVA CITA \n Ingresa su descripcion:"
		desc = gets.chomp.to_s
		puts 'Ingresa su fecha'
		fecha = gets.chomp.to_s
		puts 'Agrega la Hora'
		hora = gets.chomp.to_s

		@agenda.agregar_cita(desc,fecha,hora)

		puts 'Cita agregada con exito'
		gets.chomp
		self.pintar_menu
	end

	def mostrar_citas_dialogo
		@agenda.mostrar_citas
		gets.chomp
		self.pintar_menu

	end

	def mostrar_citas_hoy_dialogo
		@agenda.citas_hoy
		gets.chomp
		self.pintar_menu

	end


	
end
console = Main.new()
console.pintar_menu
