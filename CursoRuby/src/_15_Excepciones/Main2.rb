
def funcionInversa numero
  #En la siguiente línea comentamos un error que nos saldrá siempre que cuando (unless) la variable numero 
  #no sea un número (numero.is_a? Numeric)
  raise ArgumentError,"Sólo admitimos números" unless numero.is_a? Numeric
  raise Exception,"No admito ceros" if numero == 0
  1.0/numero
end

begin
puts funcionInversa 4
puts funcionInversa "Juan"

#Podemos incrustar varios 'rescue' como queramos, pero si entra en el primero de ellos, ya no entra en los que vengan debajo
rescue ArgumentError => ae
  puts "Ha ocurrido un error de argumentos"
  puts ae.message

#Exception es la clase padre de todas las excepciones
rescue Exception => e #Quiero calcular las excepciones, en este caso referenciado con la variable 'e'
  puts "Ha ocurrido un error al introducir el dato"
  puts e.message
  
#El ensure es la expeción que indica que pase lo que pase, esta línea siempre se va a ejecutar, asegurar = ensure
ensure 
  puts "Este código de aquí se ejecutará siempre" + 
  " tanto si ha habido error como si no"
end

#Con las excepciones no se rompe el ritmo del programa, llegando a ejecutar la última línea
puts "Fin del Programa"
