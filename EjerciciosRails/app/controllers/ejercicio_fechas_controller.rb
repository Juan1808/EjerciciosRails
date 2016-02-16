class EjercicioFechasController < ApplicationController
  
  def getFechaActual
    fechaAux = Time.now
    #%d representa el dia
    #%m representa el mes
    #%Y representa el año, en mayúscula son 4 dígitos y en minúscula 2
    #%H representa la hora en 24h
    #%M representa los minutos
    #%S representa los segundos
    
    @fechaActual = fechaAux.strftime("%d/%m/%Y --> %H:%M:%S")
    
  end
end
