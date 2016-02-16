load 'Persona.rb'


#Para describir la clase se iguala al nombre de la clase (en mayuscula la primera) y .new
persona = Persona.new("52334455S" , "Pepe" , "Masculino" ,30)
persona2 = Persona.new("47232589" , " Maria" , "Femenino" , 31)

#Esta linea de error ya que no existe el constructor (initialize)
#por defecto o sin parametros
#persona3 = Persona.new
#Aquí estamos llamando al número de personas de la clase Persona
puts "El número de personas creado es: #{Persona.getNumeroDePersonas}"

persona.setColorOjos "Azules"
puts persona.getColorOjos 
#Estos dos métodos existen despues de crear el attr_accessor
puts persona.nombre
persona.nombre = "Juan"
puts persona.nombre
puts persona.dni
#Podemos acceder pero no modificar el DNI
#persona.dni = "otrodni"
puts persona

persona.saludar
persona2.saludar

#persona edad 30
#persona2 edad 31

persona2 = persona
persona2.edad = 44 
puts persona


