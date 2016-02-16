#Las excepciones son errores que ocurren en tiempo de ejecución y que pueden romper la ejecución
#del programa

def lanzarExcepcion
  puts "Antes de lanzar la excepcion"
  #Lanzamos un error utilizando el comando 'raise'
  raise "Ha ocurrido un fallo inesperado"
  puts "Despues de lanzar una excepcion"
end

lanzarExcepcion
puts "Después de llamar al método lanzarExcepcion"
