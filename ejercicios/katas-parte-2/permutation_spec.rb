require 'rspec'
require_relative '/home/mint/abrahami-eis20132/ejercicios/katas-parte-2/permutation.rb'

describe Permutation do

    it 'Deberia mostrar las 6 permutaciones con ABC' do
      i = Permutation.new
      i.obtenerPermutacion("ABC").should eq [["A", "B", "C"],["A", "C", "B"],["B", "A", "C"],["B", "C", "A"],["C", "A", "B"],["C", "B", "A"]]
    end
    
end
