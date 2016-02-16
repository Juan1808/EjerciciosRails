load 'modelo/Persona.rb'
load 'dao/LogNuevoDAO.rb'
load 'dao/PersonasDAO.rb'
load 'negocio/GestionPersonasLN.rb'

puts "Inicializando..."
negocio = GestionPersonasLN.new(PersonasDAO.new,LogNuevoDAO.new)
persona1 = Persona.new
persona1.nombre= gets.strip
negocio.guardarPersona(persona1)

puts negocio.listarPersonas
