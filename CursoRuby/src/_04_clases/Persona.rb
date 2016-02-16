#el nombre de las clases siempre comienza con mayúscula

class Persona
  
  #Con esto estamos creando sus respectivos getters y setters
  
  attr_accessor :nombre,:sexo,:edad
  
  
 #Con esto damos permisos de solo lectura y no de escritura
 
 attr_reader :dni
 
 #Tambien tenemos de solo escritura
 #attr_writer
 
 #Genero una variable de clase
 @@numero_de_personas = 0 
 
#Defino el método de clase para acceder al número de personas con self. para crear los métodos de clase
def self.getNumeroDePersonas
  puts "El DNI es #{@dni}"
  @@numero_de_personas
end
 
  #Este es el constructor de clase
  def initialize (dni,nombre,sexo,edad)
    @dni = dni
    @nombre = nombre
    @sexo = sexo
    @edad = edad
    @colorOjos = nil
    @@numero_de_personas = @@numero_de_personas + 1
  end
  
  #Estos métodos, tanto SET como GET, se realizan por el concepto de encapsulación
  def setColorOjos colorOjos
    @colorOjos = colorOjos
  end
  
  def getColorOjos
    @colorOjos
  end
  
  def colorOjos= colorOjos
    @colorOjos = colorOjos
    
  end
  
  def saludar
    puts "Hola a todos, soy una persona y me llamo #{@nombre}"
  end
  
  def to_s
    "#{@dni}, #{@nombre}, #{@edad}, #{@sexo}, #{@colorOjos}"
  end
end