module Biblioteca
    module NegocioBiblioteca
        class GestionLibreria
          
          #Le damos acceso a los métodos de gestion alojados en el DAO con el attr_accessor, y con el intialize le damos la referencia del DAO igualandolo en una variable 
          #En este caso @librosDao
          attr_accessor :librosDao
          
          def initialize dao
            @librosDao = dao
           
          end
          
          def gestionAlta libro
            @librosDao.insert libro
          end
        
          def modificacionLibro libro
            @librosDao.update libro
          end
          
          def listar
            @librosDao.list
          end
          
          def gestionBajaLibro id
            @librosDao.delete id
          end
        end
    end
end