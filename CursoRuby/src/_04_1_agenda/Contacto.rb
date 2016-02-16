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
    "#{@dni}, #{@nombre}, #{@telefono}, #{@mail}, #{@direccion}"
  end
end