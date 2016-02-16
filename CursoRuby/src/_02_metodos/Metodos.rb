#metodo()
#Esta linea fallaria debido a que todavia no está declarado el metodo

#los métodos en ruby se crean mediante la palabra reservada 'def'

def metodo
    puts "Hola metodo"
end

metodo

#Si damos a un metodo el mismo nombre que otro anterior, 
#sobreescribimos el anterior
def metodo
  puts "Hola metodo 2"
end

metodo

def saludar (nombre)
  puts "Hola #{nombre}!"
end

saludar "Juan"

#valores de retorno
def devolverSaludo
  #Podemos poner la palabra 'return'
  #pero por defecto se devuelve la última linea de ejecución
  puts "Hola devolverSaludo -> Entrando en el metodo"
  "Hola devolverSaludo"
end

valorDeRetorno = devolverSaludo
puts valorDeRetorno

#En ruby podemos dar valores por defecto a los parametros con el simbolo igual
def sumar (valor1,valor2=0)
  valor1 + valor2
end

puts "El resultado es: #{sumar 15,30}"
valor1= 50
puts "El resultado es: #{sumar valor1}"
#Como solo le paso el valor1, coge el valor2 por defecto declarado en el metodo
#en este caso el valor es el 0

def sumar (valor1,valor2=0,valor3)
  puts "#{valor1},#{valor2},#{valor3}"
  valor1+valor2+valor1
end

puts sumar 2,5
puts sumar 3,3,3

variableExterna = 1
def metodo
  #La siguiente linea da errorya que no hay visibilidad desde main al métido
  #puts "La variable externa #{variableExterna}"
  variableInterna = "Pepe"
end

metodo

def metodo(*valores)
  puts valores
  puts "------"
  puts valores [0] #valores es un Array
end

metodo "hola", "como estas", "yo bien", "etc..."
metodo

def sumaCompleta(*valores)
  resultado = 0
  
  for valor in valores
    #resultado = resultado + valor
    resultado += valor
  end
  #return resultado
  resultado
  
end

puts sumaCompleta 1,2,3,4,8
puts sumaCompleta 99,23
puts sumaCompleta
