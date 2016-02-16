load 'modelo/Pelicula.rb'
load 'dao/LogDAO.rb'
load 'dao/PeliculasDAO.rb'
load 'negocio/GestionPeliculasLN.rb'

puts "Inicializando..."
sleep 0.5
opcion = 0
gestion = GestionPeliculasLN.new(PeliculasDAO.new, LogDAO.new)

while opcion != 5 do
puts "Gestión de Películas\n Elija una opción \n 1.Guardar Película\n 2.Borrar película\n 3.Listar Películas\n 4.Actualizar Películas\n 5.Salir"
opcion = gets.strip.to_i

  case opcion
      when  1 then
        pelicula1 = Pelicula.new
        puts "Guarde una película!!"
        sleep 0.5
        puts "Introduzca título"
        pelicula1.titulo=gets.strip
        puts "Introduzca Director"
        pelicula1.director=gets.strip
        puts "Introduzca Actores"
        pelicula1.actores=gets.strip
        #La función split genera un array separado por el símbolo que tu le indiques, en este caso, una coma.
        pelicula1.actores=pelicula1.actores.split(/,/)
        gestion.guardarPelicula(pelicula1)
    
     when 2 then 
        puts "Borre una película!!"
        puts "Introduzca posición en el videoclub"
        id=gets.strip.to_i
        gestion.borrarPelicula(id)
        
     when 3 then 
        puts "Vea el videoclub entero!!"
        sleep 0.5
        puts gestion.listarPeliculas
        
        
     when 4 then
        puts "Actualicemos película!!"
        puts "Introduzca id de la película a actualizar"
        id=gets.strip.to_i
        pelicula1 = Pelicula.new
        pelicula1.id=id
        puts "Introduzca título"
        pelicula1.titulo=gets.strip
        puts "Introduzca Director"
        pelicula1.director=gets.strip
        puts "Introduzca Actores"
        pelicula1.actores=gets.strip
        gestion.actualizarPeliculas(pelicula1)
        
        
     when 5 then
       puts "Hasta pronto!"
  end
  
end