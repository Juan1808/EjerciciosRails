class DiscoController < ApplicationController
  def index
    @discos = Disco.all
    if @discos.size > 0
      puts @discos[0].album
    end
  end

  def create
    album = params[:album]
    artista = params[:artista]
    anio = params[:anio].to_i
    discoHash = {}
    discoHash[:album] = album
    discoHash[:artista] = artista
    discoHash[:anio] = anio
    #@disco.save = con esta sentencia salvamos el objeto en la Base de Datos
    @disco = Disco.create(discoHash)
        if @disco.errors.any? then
          puts "Error"
        end
    @discos = Disco.all
    render :index
  end

  def delete
    id = params[:id].to_i
    Disco.delete id
    render :index
  end
  
  def delete_chequeados
    id = []
    id = params[:id]
    Disco.delete id
    Disco.all
    render :index
  end
  
  def update_vista
    @disco = nil
    id = params[:id].to_i
    @disco = Disco.find id
    
  end

  def update
    id = params[:id].to_i
    album = params[:album]
    artista = params[:artista]
    anio = params[:anio]
    musicaHash = {}
    musicaHash[:id] = id
    musicaHash[:album] = album
    musicaHash[:artista] = artista
    musicaHash[:anio] = anio
    
    @disco = Disco.find id
    modificar = @disco.update_attributes(musicaHash)    
    render :index
  end

  def search_by_artista
    artista = params[:artista]
    @artistasEncontrados = Disco.where(:artista => artista)
    render "search"
  end
  
  def search_by_anio
    anio = params[:anio].to_i
    @aniosEncontrados = Disco.where(:anio => anio)
    render "search"
  end
end
