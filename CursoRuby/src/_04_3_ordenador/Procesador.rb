
class Ordenador::Procesador < Ordenador::Pieza
  attr_accessor :cache, :nucleo, :velocidad, :tipo
  #definimos el constructor con el método initialize, heredando el atributo precio y fabricante de la clase padre
  def initialize (cache, nucleo, velocidad, tipo, fabricante, precio)
    @cache = cache
    @nucleo = nucleo
    @velocidad = velocidad
    @tipo = tipo
    #el método super es la forma para llamar a la clase padre, a continuación se definen los atributos de la clase padre que se heredan
    super fabricante, precio
  end
  
  #Definimos el método par ala impresión por pantalla
  def to_s
    "Procesador: Caché: #{@cache}, Núcleo: #{@nucleo}, Velocidad: #{@velocidad}, Tipo: #{@tipo}, Fabricante: #{@fabricante}, Precio: #{@precio}"
  end
end