class DaoUsuario
  
  #Si declaramos las variables como insntancia podemos tener problemas a la hora de guardar y crear los objetos
  #Creamos un Hash de usuarios para almacenar datos
  @@usuario = {}
  
  def crear usuario
    @@usuario[usuario.nombre] = usuario
  end
  
  def getUsuarios
    @@usuario
  end
end