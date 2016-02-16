
  
class Ordenador
  def initialize (marca, sistemaoperativo, procesador, memoria, almacenamiento, tarjetagrafica, mac_adress)
    @marca = marca
    @sistemaoperativo = sistemaoperativo
    @procesador = procesador
    @memoria = memoria 
    @almacenamiento = almacenamiento
    @tarjetagrafica = tarjetagrafica
    @mac_adress = mac_adress
  end
  
  def setProcesador procesador
    @procesador = procesador
  end
  
  def setMemoria memoria
    @memoria = memoria
  end
  
  def setAlmacenamiento almacenamiento
    @almacenamiento = almacenamiento
  end
  
  def setTarjetagrafica tarjetagrafica
    @tarjetagrafica = tarjetagrafica
  end
  
  def setMacAdress mac_adress
    @mac_adress = mac_adress
  end
   
  def precio_total
    @procesador.precio.to_i + @memoria.precio.to_i + @almacenamiento.precio.to_i + @tarjetagrafica.precio.to_i
  end
  
  def to_s
    "Especificaciones Técnicas\n Precio Total: #{self.precio_total} €\n Marca: #{@marca}\n Sistema Operativo: #{@sistemaoperativo}\n #{@procesador}\n #{@memoria}\n #{@almacenamiento}\n #{@tarjetagrafica}\n Dirección MAC: #{@mac_adress}"
  end
  

end

