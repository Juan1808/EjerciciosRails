load 'modelo/Persona.rb'
load 'dao/LogDAO.rb'
load 'dao/PersonasDAO.rb'
load 'negocio/GestionPersonasLN.rb'

puts "Inicializando..."
negocio = GestionPersonasLN.new(PersonasDAO.new,LogDAO.new)

negocio.guardarPersona(Persona.new "Pepe", "Perez")
negocio.guardarPersona(Persona.new "Juan", "Rodriguez")

negocio.buscarPersona 1
negocio.actualizarPersona(Persona.new "Jose", "García")

