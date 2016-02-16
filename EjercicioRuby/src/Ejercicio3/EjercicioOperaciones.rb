


def imprimirPantalla (valor)
  puts "\tCALCULADORA"
  puts "----------------------------"
  puts "Introduzca primer valor"
  primervalor = gets.strip
  puts "Introduzca segundo valor"
  valor= gets.strip
  puts "El resultado de es #{valor}"
end


#Recibe los valores de la función imprimirPantalla
def suma (valor1,valor2)
   imprimirPantalla valor1 + valor2
end

def resta (valor1,valor2)
   imprimirPantalla valor1 - valor2
end

def multi (valor1,valor2)
    imprimirPantalla valor1 * valor2
end

def division (valor1,valor2)
    imprimirPantalla valor1 / valor2
end



def valores (valor1,valor2)
  suma valor1,valor2
  resta valor1,valor2
  multi valor1,valor2
  division valor1,valor2
end

valores 5,9
