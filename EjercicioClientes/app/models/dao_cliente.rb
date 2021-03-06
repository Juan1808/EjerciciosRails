class DaoCliente
  @@clientesHash = {}
  @@id = 0
  
  def alta cliente
    cliente.id = @@id
    @@clientesHash[@@id] = cliente
    @@id += 1
  end
  
  def getClientes
    @@clientesHash.values
    #Con el método values de ruby sólo nos muestra los valores reales del Hash
  end
  
  def getClienteById id
    @@clientesHash[id]
  end
  
  def baja id
   @@clientesHash.delete(id) 
  end
  
  def modificar cliente
    @@clientesHash[cliente.id] = cliente
  end
  
  
end