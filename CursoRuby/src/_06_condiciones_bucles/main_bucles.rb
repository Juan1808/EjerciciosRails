
#Va incrementando los valores de la variable hasta que sea menor que 10 como hemos indicado en el while
valor = 5
while valor < 10 do
  puts "valor es : #{valor}"
  valor +=1
end

#Recorremos la variable con un bucle for
for i in 5..10
  puts "Valor del for : #{i}"
end
puts "En este punto el valor de i es #{i}"

#Con begin va ejecutando desde el momento que le decimos hasta que para de ejecutar con otra condición, en este caso while>5
begin
  puts "El valor de i es mayor de 5, es #{i}"
  i -=1
end while i > 5
puts "En este punto el valor de i es #{i}"

#Bucle until, hasta que, decrementa y sale del bucle cuando la condición sea true, en este caso, igual a cero
until i == 0
  puts "La i no es cero! es #{i}"
  i -=1
end
puts "En este punto el valor de i es #{i}"

#Los bucles for son anidables
for i in 0..2 do
  for j in 0..2 do
    puts "Fila #{i} Columna #{j}"
 end
end