class Calculadora
  def initialize
    @resultado = 0
  end
 def suma valor1, valor2
  @resultado = valor1.to_f + valor2.to_f
  @resultado
  end
    
  def resta valor1, valor2
  @resultado = valor1.to_f - valor2.to_f
  @resultado
  end
    
  def multi valor1, valor2
  @resultado = valor1.to_f * valor2.to_f
  @resultado
  end
  
  def division valor1, valor2
  @resultado = valor1.to_f / valor2.to_f
  @resultado
  end
  
  def resultados valor1, valor2
    suma valor1,valor2
    puts "El resultado de la suma es #{@resultado}"
     resta valor1,valor2
    puts "El resultado de la resta es #{@resultado}"
    multi valor1,valor2
    puts "El resultado de la multiplicación es #{@resultado}"
    division valor1,valor2
    puts "El resultado de la división es #{@resultado}"
  end
    
  end
