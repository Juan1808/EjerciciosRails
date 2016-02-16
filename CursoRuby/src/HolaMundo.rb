puts "Hola Mundo!!"

# Esto es un comentario en Ruby
=begin
Esto serua un comentario
de varias líneas
podemos poner todas las que queramos, los comentarios son muy importantes para el código
=end

#variable es una buena prática declarar siempre las variables en Ruby
#no empiezan con ninguna palabra reservada
#son totalmente arbitrarias, aunque deben empezar por '_' o por una letra
variable1 = 1
puts variable1
variable1= 2
puts variable1

sVariable = "Variable de texto"

iVariable = 3

puts sVariable
puts iVariable

puts "El valor de la variable sVariable es: " + sVariable
#Debemos convertir el tipo Fixnum a String
puts "El valor de la variable iVariable es: " + iVariable.to_s

puts "El valor de la variable sVariable es : #{sVariable}"
#podemos declarar strings con comillas simples

puts "El valor de la variable iVariable es : #{iVariable}"

#Con commillas simples, las variables no se expanden mostrando su contenido
puts 'El valor de la variable sVariable es: #{sVariable}'

variable = nil
#cuando queremos inicializar una variable y no le queremos dar valor, apuntamos a nulo, nil en ruby
puts "El valor de la variable iVariable es : #{variable}"

#Por convenciones el nombre de las variable se suele poner en camel case (la primera letra va en minuscula y las siguientes en mayuscula
#o en snake case (todas las letras de una declaración van en minusculas con guiones bajos entre palabras)

#camel case
estoEsUnaVariable = "variable"
#snake case
esto_es_una_variable = "variable"


#Constantes
#Se declaran poniendo la primera letra en mayúscula
#Ruby es un lenguaje case sensitive
EstoEsUnaConstante = "Juan"
Constante = "Ramon"
Otraconstante = "Pepe"
#Normalmente por convencion de código, las constantes van en mayuscula y en snake case
CONSTANTE = "Isabel"
OTRA_CONSTANTE = "Marta"

puts CONSTANTE
puts "La constante #{OTRA_CONSTANTE}"

#Las constantes en Ruby se pueden cambiar la referencia aunque nos daria un warning. En otros lenguajes no se puede cambiar

#Tenemos también algunas pseudo variables que son varibales predefinidas
#Nos dice la ruta del fichero donde está 
puts __FILE__




