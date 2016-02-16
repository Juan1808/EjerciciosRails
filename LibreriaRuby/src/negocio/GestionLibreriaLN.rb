class GestionLibreriaLN
  def initialize dao, log
    @librosDao = dao
    @librosLog = log
  end
  
  def guardarLibro libro
    @librosDao.insert libro
    @librosLog.generarLog "Libro #{libro} guardado!"
  end
  
   def listarLibros
    @librosDao.list
   end

  def borrarLibro libro
    @librosDao.delete libro
    puts "Libro Borrado!!"
  end
  
  def actualizarLibro libro
    @librosDao.update libro
    
  end
  
end