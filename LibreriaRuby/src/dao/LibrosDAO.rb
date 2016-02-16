class LibrosDAO
  #Biblioteca de libros
  @@bibliotecaLibros = []
  @@id = 0
  
  def insert libro
    #Método de la clase LibroDAO que inserta el libro en el Array blibiotecaLibros
    libro.id = @@id
    @@id +=1
    @@bibliotecaLibros << libro
    @@bibliotecaLibros
  end
  
  def update libro
    #Método que actualiza el libro que vamos a buscar dentro del Array bibliotecaLibro
    i = 0
    for libroActual in @@bibliotecaLibros
      if libroActual.id == libro.id then
        @@bibliotecaLibros[i]=libro
        return true
      end
      i += 1
    end
  end
  
  def delete idLibro
    i = 0
    #Método que borra el libro cuando introduzimos el id del libro que queremos borrar 
    for libroActual in @@bibliotecaLibros
      if libroActual.id = idLibro then
        @@bibliotecaLibros.delete libroActual
        return
      end
    end
    i += 1
    
    def list
      @@bibliotecaLibros
    end
  end
end