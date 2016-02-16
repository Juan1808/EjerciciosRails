class GestionPersonasLN
  def initialize(dao,log)
    @personasDao = dao
    @personasLog = log
  end
  
  def guardarPersona(persona)
    @personasDao.insert persona
    @personasLog.generarLog "Persona #{persona} insertada"
  end
  def listarPersonas
    listaDePersonas = @personasDao.list
    #TODO: Recorro el array buscando el idPersona
  end
  def borrarPersonas(arrayIdPersonas)
    #TODO: Recorro el array de peronas
      #TODO: En cada iteracion @personasDao.delete id
    
  end
  def actualizarPersona(persona)
    @personasDao.update persona
  end
end