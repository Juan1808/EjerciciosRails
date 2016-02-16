#cargamos todos los archivos que definen cada una de las clases,
load 'Ordenador.rb'
load 'Pieza.rb'
load 'Modelo_persona/Contacto.rb'
load 'Direccion.rb'
load 'Procesador.rb'
load 'Memoria.rb'
load 'Almacenamiento.rb'
load 'Tarjetagrafica.rb'

#definimos cada una de los componentes (pieza)
mac_adress1 = Ordenador::Direccion.new("FF: 23:11:76:86:79")
tarjetagrafica1 = Ordenador::Tarjetagrafica.new("2 GB", "NVIDIA GTX", "Dell", "55€")
almacenamiento1 = Ordenador::Almacenamiento.new("HDD", "7200 rpm", "1 TB", "HP", "70€")
memoria1 = Ordenador::Memoria.new("UNB-DIMM", "16GB", "Toshiba", "30€")
procesador1 = Ordenador::Procesador.new("8MB", "4", "3.40 Ghz", "INTEL CORE i7-6700", "Acer", "120€")
ordenador1 = Ordenador.new("Acer", "Windows", procesador1, memoria1, almacenamiento1, tarjetagrafica1, mac_adress1)

#Creamos y definimos una nueva persona y una nueva dirección
direccion1 = ModuloAgenda::Direccion.new("Falsa", 123, 28050, "Albacete", "España")
contacto1 = ModuloAgenda::Contacto.new("45638902T","Antonio","+34605389613","achilipu@gmail.com", direccion1)

puts "\tProducto"
puts ordenador1

puts "\tCliente"
puts contacto1

