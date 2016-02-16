

class Ordenador::Memoria < Ordenador::Pieza
  
  attr_accessor :tipo, :capacidad 
  def initialize (tipo, capacidad, fabricante, precio)
    @tipo = tipo
    @capacidad = capacidad
    super fabricante, precio
  end
  
  def to_s
    "Memoria: Tipo: #{@tipo}, Capacidad: #{@capacidad}, Fabricante: #{@fabricante}, Precio: #{@precio}"
  end
end