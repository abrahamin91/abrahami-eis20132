require 'rspec'
require_relative './fizz_buzz'

describe FizzBuzz do

    it 'Deberia mostrar FizzBuzz con 15' do
      ob = FizzBuzz.new
      ob.ObtenerFizzBuzz(15).should eq 'FizzBuzz'
    end
    
end
