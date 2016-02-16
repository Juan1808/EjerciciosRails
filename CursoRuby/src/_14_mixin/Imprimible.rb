#el mixin es una manera de simular la herencia múltiple en Ruby, pudiendo heredar los módulos
#que queramos dentro de una misma clase, ya que Ruby no permite la herencia múltiple, mediante este
#método podemos incluir todos los módulos que queramos a una clase.

module Imprimible
  def imprimir_pantalla texto
    puts "Imprimimos por pantalla: #{texto}"
  end
  
  def imprimir_fichero fichero,texto
    File.open(fichero,'w'){ #se pone esta w como método de escritura 'write'
      |f| #Representa el fichero
        f.puts "-- #{texto}"
     }
  end
end