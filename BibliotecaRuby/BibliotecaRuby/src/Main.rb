load 'modelo/Libro.rb'
load 'dao/LibrosDao.rb'
load 'negocio/GestionLibreria.rb'

puts "\tINICIALIZANDO..."
sleep 0.5

#Cargamos todos los modules creados en cada fichero para invocarlos dentro del lanzador, en este caso Module Biblioteca, NegocioBiblioteca y MetodosDao
negocio = Biblioteca::NegocioBiblioteca::GestionLibreria.new(Biblioteca::MetodosDao::LibrosDao.new)

#Creamos los objetos asignando valores a cada atributo de la clase , en este caso, titulo, autor y descripción
libro1 = Biblioteca::ClaseLibro::Libro.new("Harry Potter","J.K Rowling","Un niño mago y sus amigos")
libro2 = Biblioteca::ClaseLibro::Libro.new("Los Juegos del Hambre","Suzanne Collins","Saga sobre unos juegos mortales")
libro3 = Biblioteca::ClaseLibro::Libro.new("Los amores perdidos","Miguel de Leon","Novela Romántica ambientada en el S.XIX")
libro4 = Biblioteca::ClaseLibro::Libro.new("Historia de un canalla","Julia Navarro","Biografia de Tilly, modista de alta costura")

#Ahora aplicamos la lógica de negocio para llamar al método guardar y que inserte los libros en el Array biblioteca
negocio.gestionAlta(libro1)
puts "LIBRO #{libro1} INSERTADO!;)"
negocio.gestionAlta(libro2)
puts "LIBRO #{libro2} INSERTADO!;)"
negocio.gestionAlta(libro3)
puts "LIBRO #{libro3} INSERTADO!;)"
negocio.gestionAlta(libro4)
puts "LIBRO #{libro4} INSERTADO!;)"

sleep 1.0
puts "------------------------------------------"
puts "LA LISTA DE LIBROS ACTUAL ES LA SIGUIENTE:"
#Volvemos a aplicar la lógica de negocio para llamar al método listar y que nos muestre el Array con todos los libros guardados
puts negocio.listar

#Método de Gestión de Baja para borrar el libro que le pedimos, estando en la posición con id:1
sleep 1.0
puts "------------------------------------------"
negocio.gestionBajaLibro(1)
puts "LIBRO #{libro1} BORRADO CON ÉXITO!!"

sleep 1.0
puts "------------------------------------------"
puts "LA LISTA DE LIBROS ACTUAL ES LA SIGUIENTE:"
puts negocio.listar

#Actualizamos un libro a través del id que nosotros le indicamos, en este caso el id=0, además de crear un nuevo objeto libro por el que será actualizado el anterior
sleep 1.0
puts "------------------------------------------"
puts "ACTUALICEMOS LIBRO #{libro2}!!"
nuevolibro = Biblioteca::ClaseLibro::Libro.new("La chica del tren","Paula Hawkins","Novela de intriga desarrollada en un tren")
nuevolibro.id= 2
negocio.modificacionLibro(nuevolibro)
puts "LIBRO #{nuevolibro} ACTUALIZADO CON ÉXITO!!"

#Finalmente, volvemos a listar toda la biblioteca para mostrar el resultado de todas las gestiones lanzadas por el main
sleep 1.0
puts "------------------------------------------"
puts "LA LISTA DE LIBROS ACTUAL ES LA SIGUIENTE:"
puts negocio.listar
