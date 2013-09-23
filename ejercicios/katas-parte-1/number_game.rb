#!/usr/bin/env ruby
class FizzBuzz
	def ObtenerFizzBuzz(valor)
		if((valor.modulo(3) == 0)&&(valor.modulo(5) == 0))
			valor = "FizzBuzz"
		elsif(valor.modulo(3) == 0)
			valor = "Fizz"
		elsif(valor.modulo(5) == 0)
			valor = "Buzz"
		end
		return valor
	end
end

ob = FizzBuzz.new()
for i in(1..100)
	i = ob.ObtenerFizzBuzz(i)
	puts i
end
