
required_relative '../models/Dao.rb'
required_relative '../models/GestionUsuariosLN.rb'
required_relative '../models/Persona.rb'


class PantallaLoginController < ApplicationController

  #@@users = Dao.list
  def altaUsuario
    usuario1= Persona.new params[:usuario], params[:password]
    GestionUsuariosLN.altaUsuario usuario1
    puts Dao.list
  end

  def logearUsuario
    if params[:password]==@@users[params[:usuario]]
      @usuario = "Bienvenido usuario correcto!!"
    else
      @usuario = "El usuario es incorrecto!!"
    end

  end

end
