load 'modelo/Libro.rb'
load 'dao/LogDAO.rb'
load 'dao/LibrosDAO.rb'
load 'negocio/GestionLibreriaLN.rb'

puts "Inicializando..."
sleep 0.5

gestion = GestionLibreriaLN.new(LibrosDAO.new, LogDAO.new)

libro1 = Libro.new("Harry Potter", "J.K Rowling", "Es un niño mago repelente")
libro2 = Libro.new("La Chica del Tren", "Paula Hawkins", "Suceso en un tren")
libro3 = Libro.new("Revival", "Stephen King", "Novela suspense")
libro4 = Libro.new("After", "Anna Todd", "Novela Romántica")

gestion.guardarLibro(libro1)
gestion.guardarLibro(libro2)
gestion.guardarLibro(libro3)
gestion.guardarLibro(libro4)

gestion.borrarLibro(libro1)


