class GestionPersonasLN
  def initialize (dao,log)
  @personasDao = dao
  @personasLog = log
  end

  
  def guardarPersona persona
    @personasDao.insert persona
    @personasLog.generarLog "Persona #{persona} insertada"
  end
  
  def buscarPersona(idPersona)
    listaDePersonas = @personasDao.list
    #TODO: Recorro el array buscando el idPersona
    for persona in listaDePersonas
      if persona.id == idPersona
        return persona
      end
    @personasLog.generarLog "Persona con id: #{idPersona} no encontrada"
    end
    return nil
  end
  
  def borrarPersonas(arrayIdPersonas)
    #TODO: Recorro el array de personas
      #TODO: En cada iteración @@personasDao.delete id
      for id in arrayIdPersonas
        @personasDao.delete id
        
      end
  end
  
  def actualizarPersona(persona)
    @personasDao.update persona
    
  end
  
end