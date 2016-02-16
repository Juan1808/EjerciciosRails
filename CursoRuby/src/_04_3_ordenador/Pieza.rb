#Esta es la definida como clase padre que define los atributos que van a ser
#comunes al resto de clases, en este caso, cada uno de los componentes
class Ordenador::Pieza
  
attr_accessor :fabricante, :precio

def initialize (fabricante,precio)
  @fabricante = fabricante
  @precio = precio
end

end