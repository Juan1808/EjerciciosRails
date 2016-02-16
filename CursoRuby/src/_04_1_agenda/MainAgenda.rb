load 'Contacto.rb'
load 'Direccion.rb'

direccion1 = Direccion.new("Falsa", 123, 28050, "Albacete", "España")
direccion2 = Direccion.new("Maldita", 65, 27632, "Pontevedra", "España")
direccion3 = Direccion.new("Del Grillo", 89, 24061, "Jaen", "España")

contacto1 = Contacto.new("45638902T","Antonio","+34605389613","achilipu@gmail.com", direccion1)
contacto2 = Contacto.new("65847632C", "Susana", "+34694521378","apuapu@gmail.com", direccion2)
contacto3 = Contacto.new("98672345H", "Mario", "+34630120580", "achilichilichili@gmail.com", direccion3)


puts "\tAGENDA DE CONTACTOS"

puts contacto1

puts contacto2

puts contacto3