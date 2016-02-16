class EjercicioCalculadoraController < ApplicationController
  
  def calcularOperacion
    @valor1 = params[:valor1]
    @valor2 = params[:valor2]
    eval(params[:Operacion])

  end
  end
  
  def resultadoOperacion
  end
  
  def suma
    @resultado = @valor1.to_f + @valor2.to_f
    render "resultadoOperacion"
  end
       
  def resta
    @resultado = @valor1.to_f - @valor2.to_f
    render "resultadoOperacion"
  end
   
  def multi
    @resultado = @valor1.to_f * @valor2.to_f
    render "resultadoOperacion"
  end
 
  def division
    @resultado = @valor1.to_f / @valor2.to_f
    render "resultadoOperacion"
  end

