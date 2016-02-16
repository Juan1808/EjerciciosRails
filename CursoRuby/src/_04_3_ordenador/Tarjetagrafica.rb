

class Ordenador::Tarjetagrafica < Ordenador::Pieza 
  
  attr_accessor :capacidad, :modelo
  def initialize (capacidad, modelo, fabricante, precio)
    @capacidad = capacidad
    @modelo = modelo
    super fabricante, precio
  end
  
  def to_s
    "Tarjeta Gráfica: Capacidad: #{@capacidad}, Modelo: #{@modelo}, Fabricante: #{@fabricante}, Precio: #{@precio}"
  end
end