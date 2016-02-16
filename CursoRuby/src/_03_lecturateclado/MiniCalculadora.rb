def suma valor1, valor2
  valor1.to_i + valor2.to_i
end

def resta valor1, valor2
  valor1.to_i - valor2.to_i
end

puts "Introduzca los valores : "
puts "valor1"
valor1= gets.strip
puts "valor2"
valor2 = gets.strip


restSuma = suma valor1,valor2

restResta = resta valor1, valor2

puts "El resultado de la suma es #{restSuma}"
puts "El resultado de la resta es #{restResta}"

  