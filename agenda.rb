require_relative "cita"
require 'date'
class Agenda

	def initialize
		@citas = []
		llenar_agenda
	end

	def agregar_cita(desc,fecha,hora)
		#t= Time.new(fecha)

		cita = Cita.new(desc,fecha.lstrip.lstrip,hora)
		@citas.push(cita)
	end

	def mostrar_citas
		system 'clear'
		
		puts "TODAS MIS CITAS \n"
		#@citas.each.with_index {|cita, index| puts "#{index+1}. #{cita.descripcion} - #{cita.fecha} - #{cita.hora}"}
		grupo = @citas.group_by{|cita| cita.fecha}
		grupo.each do |fecha, citas|
			puts fecha
			citas.each.with_index {|cita, index| puts " #{index+1}.#{cita.descripcion} - #{cita.fecha}"}
		end

	end

	def citas_hoy
		system 'clear'
		puts "MIS CITAS HOY \n"
		t = Time.now
		puts @citas.take_while{ |cita| cita.fecha.to_s == t.strftime("%d/%m/%Y").to_s }#.each.with_index{|cita,index| puts "#{index+1}. #{cita.descripcion}"}

	end

	def llenar_agenda
		t = Time.now
		cita_hoy = Cita.new("cita de hoy",t.strftime("%d/%m/%Y").to_s,"19:45")
		cita_hoy_o = Cita.new("Otra cita de hoy",t.strftime("%d/%m/%Y").to_s,"19:45")	
		cita_mañana = Cita.new("cita de mañana","25/06/2016","19:45")
		@citas.push(cita_hoy)
		@citas.push(cita_hoy_o)
		@citas.push(cita_mañana)
	end

end
