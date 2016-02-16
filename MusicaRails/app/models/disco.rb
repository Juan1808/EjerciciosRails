class Disco < ActiveRecord::Base
  
    validates_presence_of :album, :artista, :anio,  message: 'No puede haber ningún campo vacio!!'
    validates_uniqueness_of :album, message: 'El albúm debe ser único'
    validate :anio_mayor
    
    def anio_mayor
      if anio < 1000 then
        errors.add(:anio, "El año tiene que ser mayo que 1000!")
      end
    end
end
