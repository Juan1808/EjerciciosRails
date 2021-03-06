class ClientesController < ApplicationController
  def alta
    cliente = Cliente.new
    cliente.nombre = params[:nombre]
    cliente.apellidos = params[:apellidos]
    cliente.edad = params[:edad]
    cliente.telefono = params[:telefono]
    dao= DaoCliente.new
    dao.alta cliente
    @clientes = dao.getClientes
    render :index
  end

  def detalle
    id = params[:id].to_i
    @cliente = DaoCliente.new.getClienteById id
  end

  def index
    dao = DaoCliente.new
    @clientes = dao.getClientes
  end
  
  def borrar
    id = params[:id].to_i
    dao = DaoCliente.new
    @clienteBorrado = dao.baja id

  end
  
  def modificarVista
   id = params[:id].to_i
   dao = DaoCliente.new
   @cliente1 = dao.getClienteById id
   end
   
  def modificar
   dao = DaoCliente.new
   nuevoCliente = Cliente.new
   nuevoCliente.nombre = params[:nombre]
   nuevoCliente.apellidos = params[:apellidos]
   nuevoCliente.edad = params[:edad]
   nuevoCliente.telefono = params[:telefono]
   nuevoCliente.id = params[:id].to_i
   dao.modificar nuevoCliente
   index
   render :index 
  end
end
