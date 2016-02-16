class GestionPeliculasLN
  def initialize dao,log
    @peliculasDao = dao
    @personasLog = log
  end
  
  def guardarPelicula pelicula
    @peliculasDao.insert pelicula
    @personasLog.generarLog "Pelicula #{pelicula} insertada!!"
  end
  
  def borrarPelicula id
      @peliculasDao.delete id
      puts "Película Borrada!! :)"
  end
  
  def listarPeliculas
    @peliculasDao.list
  end
  
  def actualizarPeliculas id
    @peliculasDao.update id
    puts "Película Actualizada!!:)"
  end
end