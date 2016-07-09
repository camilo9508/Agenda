class Cita

	attr_accessor :descripcion
	attr_accessor :fecha
	attr_accessor :hora

	def initialize(descripcion, fecha, hora)
		@descripcion = descripcion
		@fecha = fecha
		@hora = hora
	end 

end 