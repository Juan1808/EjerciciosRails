

class Ordenador::Almacenamiento < Ordenador::Pieza
  
  attr_accessor :tipo, :velocidad, :capacidad
  def initialize (tipo, velocidad, capacidad, fabricante, precio)
    @tipo = tipo
    @velocidad = velocidad
    @capacidad = capacidad
    super fabricante, precio
  end
  
  def to_s
    "Almacenamiento: Tipo: #{@tipo}, Velocidad #{@velocidad}, Capacidad: #{@capacidad}, Fabricante: #{@fabricante}, Precio: #{@precio}"
  end
end