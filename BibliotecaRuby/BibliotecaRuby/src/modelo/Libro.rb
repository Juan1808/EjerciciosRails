module Biblioteca
    module ClaseLibro
        class Libro
          attr_accessor :id,:titulo,:autor,:descripcion
          
          def initialize titulo, autor, descripcion
            @titulo = titulo
            @autor = autor
            @descripcion = descripcion
            @id
          end
          
          #Utilizamos el método to_s para que en lugar de mostrar la ubicación en memoria de estos atributos, nos muestre el contenido de cada uno de ellos
          def to_s
            "Título: #{@titulo}, Autor: #{@autor}, Descripción: #{@descripcion}, Id: #{@id}"
          end
        end
    end
end 