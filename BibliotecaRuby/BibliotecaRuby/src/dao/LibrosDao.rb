module Biblioteca
    module MetodosDao
          class LibrosDao
              def initialize
                @biblioteca = []
                @id = 1
              end
        
              def insert libro
                libro.id = @id
                @id+=1
                @biblioteca << libro
              end
        
              def update nuevoLibro
                idLibroNuevo = nuevoLibro.id
                i = 0
                for libro in @biblioteca
                  if libro.id == idLibroNuevo
                    @biblioteca[i] = nuevoLibro
                    return
                  end
                  i+=1
                end
              end
        
              def list
                @biblioteca
              end
        
              def delete idLibro
                i = 0
                for libroActual in @biblioteca
                  if libroActual.id == idLibro then
                    @biblioteca.delete libroActual
                    return
                  end
                  i+= 1
                end

      end
          end
    end
end