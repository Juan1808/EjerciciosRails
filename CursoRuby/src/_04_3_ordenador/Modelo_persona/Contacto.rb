module ModuloAgenda
  
  class Contacto
      def initialize (dni, nombre, telefono, mail, direccion)
        @dni = dni
        @nombre = nombre
        @telefono = telefono
        @mail = mail
        #quiero guardar un objeto (dirección) de la clase Dirección
        @direccion = direccion
      end
  
  def setDireccion direccion
    @direccion = direccion
  end
  
  def to_s
    "DNI: #{@dni}, Nombre: #{@nombre}, Teléfono: #{@telefono}, E-mail: #{@mail}, Dirección: #{@direccion}"
  end
end

 class Direccion
   def initialize (calle, numero, cp, ciudad, pais)
     @calle = calle
     @numero = numero
     @cp = cp
     @ciudad = ciudad
     @pais = pais 
   end
   def to_s
      "#{@calle}, #{@numero}, #{@ciudad}, #{@cp}, #{@pais}"
   end
 end
end 