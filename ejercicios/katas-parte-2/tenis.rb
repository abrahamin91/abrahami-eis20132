class TennisGame
	attr_accessor :nombre, :puntuacion, :rol #Getter y setter
	$jugadas = 0
	def initialize(nombre,puntuacion,rol)
		@nombre = nombre
		@puntuacion = puntuacion
		@rol = rol
	end
	def status
		puts "Jugador: #{@nombre} | Puntuacion: #{@puntuacion} | Rol: #{@rol} | Jugadas: #{$jugadas}"
	end
	def iniciar_juego(j1,j2)
		aleatorio = rand(2)
		if(aleatorio == 0)
			j1.rol = "lanzador"
			j2.rol = "receptor"
			else	
			j1.rol = "receptor"
			j2.rol = "lanzador"
		end 
		return j1.rol,j2.rol
	end
	def elegir_lanzamiento(j1,j2)
		#Seleccionar lanzamiento
		if(j1.rol == "lanzador")
			j1.rol = "receptor"
			j2.rol = "lanzador"
		elsif (j2.rol == "lanzador")
			j1.rol = "lanzador"
			j2.rol = "receptor"
		end
	end
	def jugada(j1,j2)
		#0 fallo y 1 acerto
		fallo = false
		cont = 0
		begin
			if(j1.rol == "lanzador")
				aleatorio = rand(2)
				#j2 fallo
				if(aleatorio == 0)
					j1.puntuacion = j1.puntuacion + 1
					fallo = true
				end
			end
			if(j2.rol == "lanzador")
				aleatorio =rand(2)
				#j1 fallo
				if(aleatorio == 0)
					j2.puntuacion = j2.puntuacion + 1
					fallo = true
				end
			end
		end while(fallo != true)
		$jugadas = $jugadas + 1
	end
	def verificar_ganador(j1,j2)
		ganador1 = false
		ganador2 = false
		if((j1.puntuacion > 2)&&((j1.puntuacion-j2.puntuacion)>1))
			ganador1 = true
		end
		if((j2.puntuacion > 2)&&((j2.puntuacion-j1.puntuacion)>1))
			ganador2 = true
		end
		return ganador1,ganador2
	end
	def verificar_puntuacion(j1,j2)
		if(j1.puntuacion == 0)
			j1.puntuacion = "love"
			elsif(j1.puntuacion == 1)
				j1.puntuacion = "fifteen"
			elsif(j1.puntuacion == 2)
				j1.puntuacion = "thirty"
			elsif(j1.puntuacion > 2)
				j1.puntuacion = "fourty"
		end
		if(j2.puntuacion == 0)
			j2.puntuacion = "love"
			elsif(j2.puntuacion == 1)
				j2.puntuacion = "fifteen"
			elsif(j2.puntuacion == 2)
				j2.puntuacion = "thirty"
			elsif(j2.puntuacion > 2)
				j2.puntuacion = "fourty"
		end
	end
end
a = TennisGame.new("A",0,"")
a.status
b = TennisGame.new("B",0,"")
b.status
(a.rol,b.rol) = a.iniciar_juego(a,b)
ganador = false
contador = 0
begin
	a.jugada(a,b)
	a.elegir_lanzamiento(a,b)
	(g1,g2) = a.verificar_ganador(a,b)
end while((g1 == true)||(g2 == true))
a.verificar_puntuacion(a,b)
a.status
b.status

