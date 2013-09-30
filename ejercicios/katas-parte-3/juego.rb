class Juego
	def set_palabra(palabra)
		@palabra = palabra
		@errores = 0
		@repeticiones = 0
		@tablero = ''
		for i in(0..@palabra.length-1)
			@tablero[i] = '#'
		end
		return @palabra
	end
	def verificar_letra(letra)
		if @palabra.include? letra
			return true
		else
			@errores += 1
			return false
		end
	end
	def obtener_longitud
		@palabra.length
	end
	def get_errores
		return @errores
	end
	def verificar_num_repeticiones(letra)
		resp = verificar_letra(letra)
		if ( resp == true)
			for i in(0..@palabra.length)
				if (@palabra[i] == letra)
					@repeticiones += 1
					@tablero[i] = letra
				end
			end
		end
		return @repeticiones
	end
	def mostrar_juego
		return @tablero
	end
	def verificar_ganador
		if((@palabra == @tablero) && (@errores < 7))
			return 'Ganaste'
		else
			return 'Ahorcado'
		end
	end
end
