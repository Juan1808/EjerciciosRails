class NegocioCliente
  
  def initialize dao
    @dao = dao
  end
  
  def alta cliente
    @dao.alta cliente
    true
  end
  
  def lista
    @dao.getClientes
  end
end