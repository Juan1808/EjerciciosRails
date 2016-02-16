
variable1 = 1

if variable1 == 1
 puts "Pues va a ser que sí"
end

if variable1 != 1
 puts "Pues va a ser que no es dos!"
end

if variable1 == 2
 puts "Pues va a ser que sí porque lo digo yo!"

else
 puts "Llegó el else!"
end

if variable1 == 1 || variable == 2
 puts "Pues va a ser que es uno de los dos!"
end
if variable1 >= 0
 puts "Pues va a ser positivo, que nunca negativo!"
end
if variable1 > 0 then
 puts "Mayor que cero"
elsif variable1 <0
 puts "Menor que cero"
else 
puts"por narices es cero!"
end
puts "Es cero" if variable1 ==0
puts variable1==0?"Es cero":"No es cero"

#la exclamación antes de la variable en la condición se utiliza para negar "Si no !varible entonces"
#comprueba si es true o false, y así realiza la función. Delimitas cuál es la función y actua
estaVacia = nil

if !estaVacia then
  puts "La variable es nula!"
end

variable = 3

#Unlees es lo contrario al if (si no)
unless variable
  puts "La variable es nula"
end

#El símbolo "=" no compara, asigna, el símbolo "==" es el que compara
variable = 3

if variable == 1 then
  puts "Es uno"
elsif variable == 2 then
  puts "Es dos"
elsif variable == 3 then
  puts "Es tres"
else
  puts "No es ni 1 ni 2 ni 3"
end

#Compara la variable en varios casos y ejecuta la función del puts
case
when variable == 1 then
  puts "Es uno con el case"
when variable == 2 then
  puts "Es dos con el case"
else
  puts "No es ni 1 ni 2 con el case"
end

#Evalua la variable y ejecuta el puts, la misma función que el "==" del case anterior
case variable
when 1 then
  puts "Es uno"
when 2 then
  puts "Es dos"
when 3 then
  puts "Es tres"
end

#Rangos que evaluan las variables desde un punto a otro con el símbolo ".."
case variable
when 1..10
  puts "Está entre el 1 y el 10"
when 11..20
  puts "Está entre el 11 y el 20"
end