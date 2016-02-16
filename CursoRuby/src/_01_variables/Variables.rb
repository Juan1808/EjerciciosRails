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

puts __LINE__

#Acumulaciones
valor1 = 3
valor1 = valor1 + 5
puts valor1
#Es una manera de acortar valor1 = valor1+ 5
valor1 += 5
puts valor1
valor1 -= 3
puts valor1
valor1 *= 2
puts valor1
valor1 /= 2 
puts valor1

#Cosas equivalentes con Strings
valor1 = "Pepe"
valor1 += " te saludo!"
puts valor1

valor1 = nil
#En caso de que no este asignado un valor a la variable se establece el valor 8
#en caso contrario, es decir que ya este asignado no se cambiará el valor
valor1 ||= 8
puts valor1

valor ||= 12
puts valor1

#En Ruby podemos hacer asignaciones múltiples
valor2 = valor3 = valor4 = 98
puts valor2
puts valor3
puts valor4

#Todas estas variables que hemos visto hasta ahora son de tipo local
#Ruby tambien soporta variables globales, es decir, son visibles desde
#cualquier parte de nuestro programa. Se declaran con el símbolo del dolar delante '$'

$variableGlobal = 50 
puts "El valor de variable global es: #{$variableGlobal}"

#Tipos básicos en Ruby

tipoFixnum = 3
#también tenemos bignum es mucho más grande que fixnum (más rango)
#no tenemos por qué preocuparnos por las conversiones ya que ruby lo hace automatico
tipoString = "Literal"
tipoFloat = 3.0 #poniendo un '.'
#Declaramos los booleanos tanto con true como false por separado
tipoTrue = true
tipoFalse = false
puts tipoFixnum.class
tipoNil = nil
puts tipoNil.class #hasta el nil(nulo) es un objeto

#Conversiones
puts "El número " + 3.to_s
puts "3".to_i + 5
#Si no puede convertir un string a integer, devuelve un 0 en la operación
#siempre que el objeto empiece por una letra
puts "pepe3".to_i + 10
puts 3.to_f

#Preferencia de operadores igual que en las matemáticas, 
#primero las multiplicaciones y divisiones después sumas y restas
puts 2 + 3 * 5 
puts "#{(2 + 3) * 5}"
puts 2.0/0 #La división de 0 siempre devuelve infinito





