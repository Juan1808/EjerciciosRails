class Registro < ActiveRecord::Base
  
  #Con esta línea validamos que no podamos meter en base
  #de datos un título que esté vacio
  validates_presence_of :titulo, message: 'El título no puede estar vacio, muñón!'
  
  #Podemos validar porque no se repita un campo
  validates_uniqueness_of :titulo, message: 'El título debe ser único'
  
  #Podemos hacer validaciones de tamaño
  validates_length_of :comentarios, :within => 5..200, message: 'El comentario debe tener entre 5 y 200 caracteres'
  #podemos utilizar otras opciones en vez de ':within'
  #':minimum' Establece tamaño mínimo
  #':maximum' Establece tamaño máximo
  
  
  #Decimos que queremos utilizar el método como validador personalizado
  validate :validacion_titulo_Nota
  
  #Definir nuestras propias validaciones
  def validacion_titulo_Nota
    if titulo != nil && titulo== "Nota" then
      errors.add(:titulo,"El título no puede ser 'Nota'")
    end
  end
end
