require 'rspec'
require_relative './juego.rb'

describe 'Juego' do

	describe 'modelo del juego' do
		subject { @juego = Juego.new }

		it { should respond_to( :set_palabra) }
		it { should respond_to( :verificar_letra) }
		it { should respond_to( :obtener_longitud) }
		it { should respond_to( :get_errores) }
		it { should respond_to( :verificar_num_repeticiones) }
		it { should respond_to( :mostrar_juego) }
		it { should respond_to( :verificar_ganador) }
	end
	before (:each) { @juego = Juego.new }

	describe 'set_palabra' do

	    it 'deberia devolver gato si se envia gato' do
	      @juego.set_palabra('gato').should eq 'gato' 
	    end
	end

	describe 'verificar_letra' do

	    it 'deberia devolver true si se verifica a en gato' do
	      @juego.set_palabra('gato')
	      @juego.verificar_letra('a').should eq true 
	    end
	end

	describe 'obtener_longitud' do

	    it 'Deberia devolver 4 con la palabra gato' do
	      @juego.set_palabra('gato')
	      @juego.obtener_longitud().should eq 4
	    end
		
	    it 'Deberia devolver 5 con la palabra arbol' do
	      @juego.set_palabra('arbol')
	      @juego.obtener_longitud().should eq 5
	    end
	end

	describe 'get_errores' do

	    it 'Deberia devolver 1 cuando pregunto mal 1 vez con gato' do
	      @juego.set_palabra('gato')
	      @juego.verificar_letra('e')
	      @juego.get_errores().should eq 1
	    end
	    
    	    it 'Deberia devolver 0 cuando pregunto correctamente con gato' do
	      @juego.set_palabra('gato')
	      @juego.verificar_letra('g')
	      @juego.get_errores().should eq 0
	    end
		
	end
	
	describe 'verificar_num_repeticiones' do

	    it 'Deberia devolver 2 cuando pregunto por a en casa' do
	      @juego.set_palabra('casa')
	      @juego.verificar_num_repeticiones('a').should eq 2
	    end
	end

	describe 'mostrar_juego' do

	    it 'Deberia devolver #a#a cuando pregunto por a en casa' do
	      @juego.set_palabra('casa')
	      @juego.verificar_num_repeticiones('a')
	      @juego.mostrar_juego().should eq '#a#a'	
	    end
	end
	describe 'verificar_ganador' do

	    it 'Deberia devolver Ganaste cuando pregunto correctamente casa' do
	      @juego.set_palabra('casa')
	      @juego.verificar_num_repeticiones('c')
	      @juego.verificar_num_repeticiones('a')
	      @juego.verificar_num_repeticiones('s')
	      @juego.verificar_num_repeticiones('a')
	      @juego.verificar_ganador().should eq 'Ganaste'
	    end
	    it 'Deberia devolver Ahorcado cuando pregunte incorrectamente 7 veces por casa' do
	      @juego.set_palabra('casa')
	      @juego.verificar_num_repeticiones('t')
	      @juego.verificar_num_repeticiones('e')
	      @juego.verificar_num_repeticiones('w')
	      @juego.verificar_num_repeticiones('q')
	      @juego.verificar_num_repeticiones('r')
	      @juego.verificar_num_repeticiones('l')
	      @juego.verificar_num_repeticiones('p')
	      @juego.verificar_ganador().should eq 'Ahorcado'
	    end
	end
	
end
