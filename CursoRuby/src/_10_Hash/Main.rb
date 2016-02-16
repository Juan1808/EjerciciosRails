
 #Un hash es una colección de datos que mantiene una estructura
 #clave => valor
 #Son conocidos como Arrays Asociativos
 #Los arrays son indexados (tienen un index)
 
 #Creamos un hash vacio
 hash = {}
 otraHash = Hash.new
 
 #add elementos
 hash["clave"] = "valor del hash"
 hash["otra clave"] = 3
 
 #Buscando elementos, recuperar elementos
 puts hash["clave"] #Recuperamos el valor que almacenados
 puts "El valor de la clave es #{hash["clave"]}"

#Sólo se admite una clave para un valor dado
#Si repitieramos una clave se cambiaría el valor 
hash["clave"] = "Otro valor"
puts hash["clave"]

#Podemos inicializar un hash con valores
otroHash = {"clave1" => "valor1", "clave2" => "valor2", "clave3" => "valor3",}
puts otroHash
puts otroHash["clave1"]

#Normalmente, la manera de poner claves en un hash, Ruby recomienda el uso de los 
#símbolos ':simbolo'
hashSimbolos = {:clave1 => "valor1"}
puts hashSimbolos[:clave1]
hashSimbolos[:clave2] = "valorSimbolo2"
hashSimbolos[:clave3] = "valorSimbolo3"
puts hashSimbolos[:clave2]

#Unless tiene la misma función que un if
unless hashSimbolos[:clave4]
  puts "El valor no existe"
end

if !hashSimbolos[:clave4]
  puts "El valor sigue sin existir!"
end

#Ruby interpreta los nil como false, por eso funciona en este lenguaje de programación

#Los símbolos son inmutables y únicos en todo el programa
#inmutables quiere decir que una vez establecidos los atributos no se pueden cambiar

variable1 = "valor1"
variable2 = "valor1"

if variable1 == variable2
  puts "tiene el mismo valor"
end

#El método equal? compara posiciones en memoria
if variable1.equal? variable2
  puts "el mismo objeto"
else
  puts "distinto objeto"
end

#Convertimos un String a símbolo
hash[variable1.to_sym] = "valor1"
puts hash[:valor1]


hashEquipos = {}
hashEquipos[:madrid] = ["C.Ronaldo","Casillas","Raul"]
hashEquipos[:rayo] = ["Trashorras", "Amaya"]

#Para recorrer un hash se puede hacer de la siguente manera
for jugador in hashEquipos[:madrid]
  puts jugador
end

puts "---------"
#Podemos mostrar un array con todas las "keys" o claves del Hash
puts hashEquipos.keys.inspect
#Podemos mostrar un array con todos los valores o "values" del hash
puts hashEquipos.values.inspect

puts "--- Equipos de la liga Talentum ---"
for equipo in hashEquipos.keys
  puts "- Equipo: #{equipo}"
  for jugador in hashEquipos[equipo]
    puts "-- Jugador: #{jugador}"
  end
end
