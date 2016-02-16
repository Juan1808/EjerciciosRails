load 'modelo/Persona.rb'
load 'modelo/Actor.rb'
load 'modelo/Director.rb'
load 'modelo/Pelicula.rb'
load 'dao/PeliculaDao.rb'
load 'negocio/GestionPeliculas.rb'

def comprobarPelicula(insertada)
  if insertada
    puts "La película ha sido insertada"
  else
    puts "La película no ha podido ser insertada"
  end
end

gestorPeliculas = GestionPeliculas.new 
gestorPeliculas.tamañoMaximo=3
gestorPeliculas.peliculasDao=PeliculaDao.new

titulo = "Matrix"
director = Director.new "Hermanos guasosqui",45

actores = []
neo = Actor.new "Keanu Reeves","Masuclino"
triniti = Actor.new "Mari Trini","Femenino"
actores << neo
actores << triniti

matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#Repetimos el proceso N veces
matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#Otra vez
matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#La última vez
matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar


#Probamos a borrar una
gestorPeliculas.borrar 0

#Insertamos de nuevo una película
matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#modificamos una película

titulo = "Harry Potter"
director = Director.new "El director de Harry Potter", 55
harry = Actor.new "El niño mago repelente","Masculino"
ron = Actor.new "El amigo del niño repelente","Masculino"
hermione = Actor.new "La niña maga repelente","Femenino"
actores = [harry,ron,hermione]

pelicula = Pelicula.new titulo,director,actores
pelicula.id = 3
gestorPeliculas.modificar(pelicula)
puts gestorPeliculas.listar




