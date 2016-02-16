class GestionUsuariosLN

  def self.altaUsuario persona
    Dao.insert persona
  end
  
  
end