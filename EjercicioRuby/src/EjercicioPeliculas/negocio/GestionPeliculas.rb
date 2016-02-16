class GestionPeliculas
  
  attr_accessor :tamañoMaximo, :peliculasDao
  
  def initialize
    @tamañoMaximo = 10
  end
  
  #Params:
  # => pelicula de la clase Pelicula
  #Output:
  # => true si ha sido insertada
  # => false en caso de que esté llena la memoria con tamañoMaximo
  
 
  def insertarPelicula pelicula
    if @peliculasDao.listar.size < @tamañoMaximo
      @peliculasDao.insert pelicula
      return true
    else
      return false  
    end
   end 
    
    def borrar idPelicula
      @peliculasDao.borrar idPelicula
    end
    
    def listar
      @peliculasDao.listar
    end
    
    def modificar pelicula
      @peliculasDao.modificar pelicula
    end
    
end
