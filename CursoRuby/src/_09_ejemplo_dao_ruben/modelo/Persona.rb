class Persona
  attr_accessor :nombre, :apellidos, :direccion, :id
  
  def to_s 
    "#{@nombre},#{@apellidos}"
  end
end