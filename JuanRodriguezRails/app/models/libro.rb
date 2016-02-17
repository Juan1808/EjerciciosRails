class Libro < ActiveRecord::Base
  
  validates_presence_of :titulo, :autor, message: 'No se puede dar de alta el libro con los campos Título y Autor vacios'
  validates_uniqueness_of :titulo, message: 'El título debe ser único'
  
end
