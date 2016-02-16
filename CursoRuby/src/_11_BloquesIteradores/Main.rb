
#Un bloque es una porción de código encerrada entre llaves {}
#o entre 'do...end'
#El bloque sólo puede aparecer después de usar un método
#Dicho método debería estar preparado para usar dicho bloque

3.times {
  puts "Hola times"
}

3.times do
  puts "hola times con do...end"
end


#En los bloques también podemos poner una variable
#En el caso del método times representará cada una de las iteraciones  

array = ["pepe", "pepin", "pepon"]
array.size.times {
  |var|
   puts "hola time, vamos por la iteración #{var} y el valor es #{array[var]}"
}

#ejecutamos (3-1) +1 Para recorrer el número de veces que hay que recorrer algo
0.upto 3 do
  |var|
  puts "Hola upto #{var}"
  puts "Hola array #{array[var]}"
end

#más métodos
puts "------"
array = [1,2,3,4,"pepe","manuel"]
array.each {
  |var| #Contendrá cada uno de los elementos del array
    puts "Valor del array #{var}"
}

array.each_with_index {
  |valor,indice|
    puts "El valor del indice #{indice} es #{valor}"
}


#El select va a devolver un valor que coincida con la condición, el if está intrinseco en el propio select
load '../_04_clases/Persona.rb'
arrayPersonas = [Persona.new("47232643T", "Juan", "masculino", 26)]
resultado = arrayPersonas.select{
  |persona|#cada var es una persona, renombramos a persona
    persona.nombre == "Juan"
}
puts resultado

#Borra un elemento con una condición
puts "--- borrar elemento con condición ---"
arrayPersonas.delete_if{
  |persona|
    persona.nombre = "Juan"
}
puts arrayPersonas

#todos los métodos pueden recibir un bloque como argumento implicito
#pudiendo invocar dicho bloque en cualquier momento de nuestro código
#usando la palabra reservada 'yield'

puts "------------------------------------------------------------------"
def metodo
  puts "Esto es un método de ejemplo"
  yield
end

metodo {
  puts "Esto es un bloque de ejemplo de la función -método-"
}


def metodo
  puts "Esto es otro metodo de ejemplo"
  variable = "valor1"
  yield variable
end

metodo {
  |var|
    puts "Esto es otro bloque de ejemplo con el parámetro #{var}"
}


def metodo parametro
  puts "Esto es otro método MAS de ejemplo"
  yield parametro
end

metodo("Pepe"){
  |var|
    puts "Esto es otro bloque de ejemplo con el parámetro #{var}"
}
