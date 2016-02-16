class PersonasDAO
  # Almacen persistente
  @@almacenPersonas = []
  def insert(persona)
    #Guardar Persona en almacenPersonas
    persona.id = @@almacenPersonas.length
    @@almacenPersonas << persona
  end
  def update(persona)
    #TODO: Obtengo el id de la persona a actualizar
    #TODO: Busco el id el el arrayPersonas
    #TODO: Sustituyo la persona vieja por la nueva
    puts "Actualizo persona"
  end
  def delete(idPersona)
    #TODO: Borro Persona del array
    puts "Borro persona"
  end
  def list
    #TODO: Devuelvo el array
    @@almacenPersonas
    #puts "Listo persona, aquí está #{@@almacenPersonas}"
   
  end
end