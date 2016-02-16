#Los bloques NO son objetos y por tanto no pueden ser manipulados,
#es decir, no tienen métodos asociados al mismo.
#Los procedimientos SI son objetos y por tanto tienen métodos asociados
#a ellos. El objetivo principal es evitar el repetir bloques

proc = Proc.new {
  |v|
    puts "Esto es un procedimiento con la variable #{v}"
}

#Esto lo interpretaria como un hash
#porc = {|v| puts "Esto qué es?"}

#con el método 'call' invocamos el bloque
proc.call 3
proc.call
proc.call 3,4 #sólo cogería el último valor

3.times {
  puts "Hola"
}

3.times(&proc)
