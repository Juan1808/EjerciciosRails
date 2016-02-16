class Dao
  @@clientes = {}
  
  def alta cliente
    @@clientes[cliente.nombre] = cliente
  end
  
  def getClientes
    @@clientes
  end
end