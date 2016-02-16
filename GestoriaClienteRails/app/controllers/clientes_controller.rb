class ClientesController < ApplicationController
  
  def alta
    cliente = crearObjetoCliente params[:nombre],params[:apellido],params[:edad],params[:telefono]
    dao = Dao.new
    negocio = NegocioCliente.new(dao)
    negocio.alta cliente
    @listar = negocio.lista
  end
  
  #Le ponemos el método private porque sólo va a ser un método que sólo utilizaremos en el
  #controlador
  private
  def crearObjetoCliente nombre,apellido,edad,telefono
    cliente = Cliente.new
    cliente.nombre = nombre
    cliente.apellido = apellido
    cliente.edad = edad
    cliente.telefono = telefono
    return cliente
  end
end
