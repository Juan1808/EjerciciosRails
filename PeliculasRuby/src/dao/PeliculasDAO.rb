class PeliculasDAO
  # Almacen de películas
  @@videoclub = []
  @@id = 0
  @@contador = 0
  
  def insert pelicula
    
    if @@contador < 10 then
      pelicula.id = @@id
      @@id += 1
      @@videoclub << pelicula
      @@contador +=1
    else 
      puts "Videoclub lleno!no se pueden guardar más películas!!"
    end
  end
  
  def delete idPelicula
    for peliculaActual in @@videoclub
      if peliculaActual.id == idPelicula then
        @@videoclub.delete peliculaActual
        return
       end 
    end 
    i+= 1
    puts "Borro película"
  end
  
  def update pelicula
    i = 0
    for peliculaActual in @@videoclub
      if peliculaActual.id == pelicula.id then
        @@videoclub[i]=pelicula
        return true
      end
    end
    i += 1
   end
  
  def list
    @@videoclub
  end

end

