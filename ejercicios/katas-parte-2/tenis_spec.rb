require 'rspec'
require_relative '/home/mint/abrahami-eis20132/ejercicios/katas-parte-2/tenis.rb'

describe TennisGame do

    it 'Muestra nombre del jugador' do
      a = TennisGame.new("Abraham","love","lanzador")
      a.nombre.should eq "Abraham"
    end

    it 'Muestra puntuacion correcta de los jugadores' do
      a = TennisGame.new("Abraham",3,"lanzador")
      b = TennisGame.new("Luis",0,"receptor")
      a.verificar_puntuacion(a,b) 
      a.puntuacion.should eq "fourty"
      b.puntuacion.should eq "love"
    end
	
   it 'Selecciona el proximo lanzador' do
      a = TennisGame.new("Abraham",0,"lanzador")
      b = TennisGame.new("Luis",0,"receptor")
      a.elegir_lanzamiento(a,b)
      a.rol.should eq "receptor"
      b.rol.should eq "lanzador"
    end

   it 'Muestra el Ganador' do
      a = TennisGame.new("1",3,"lanzador")
      b = TennisGame.new("2",0,"receptor")
      (g1,g2) = a.verificar_ganador(a,b)
      g1.should eq true
      g2.should eq false
   end
end

