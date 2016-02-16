class Calculadora
 def initialize
   @resultado = 0
   @arrayresultadosuma = Array.new
   @arrayresultadoresta = Array.new
   @arrayresultadomulti = Array.new
   @arrayresultadodivision = Array.new
   
 end
def suma valor1, valor2
 @resultado = valor1.to_f + valor2.to_f
 @arrayresultadosuma << @resultado
 end
   
 def resta valor1, valor2
 @resultado = valor1.to_f - valor2.to_f
 @arrayresultadoresta << @resultado
 end
   
 def multi valor1, valor2
 @resultado = valor1.to_f * valor2.to_f
  @arrayresultadomulti << @resultado
 end
 
 def division valor1, valor2
 @resultado = valor1.to_f / valor2.to_f
 @arrayresultadodivision << @resultado
 end
 
 
 def resultadosuma valor1, valor2
  suma valor1,valor2
   puts "El resultado de la suma es #{@resultado}"
 end   
 def resultadoresta valor1, valor2
  resta valor1,valor2
   puts "El resultado de la resta es #{@resultado}"
 end
 def resultadomulti valor1, valor2
  multi valor1,valor2
   puts "El resultado de la multiplicación es #{@resultado}"
 end   
 
 def resultadodivision valor1, valor2
  division valor1,valor2
   puts "El resultado de la división es #{@resultado}"
 end   
 
 def resultadoarray
   puts " El resultado de la suma es #{@arrayresultadosuma}\n El resultado de la resta es #{@arrayresultadoresta}\n El resultado de la multi es #{@arrayresultadomulti}\n El resultado de la división es #{@arrayresultadodivision}"
end
end 