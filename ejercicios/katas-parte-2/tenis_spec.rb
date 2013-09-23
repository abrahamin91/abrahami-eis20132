require 'rspec'
require_relative '/home/mint/abrahami-eis20132/ejercicios/katas-parte-2/TennisGame.rb'

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
      a = TennisGame.new("Abraham","love","lanzador")
      b = TennisGame.new("Luis",0,"receptor")
      a.elegir_lanzamiento(a,b)
      a.rol.should eq "receptor"
      b.rol.should eq "lanzador"
    end
end

