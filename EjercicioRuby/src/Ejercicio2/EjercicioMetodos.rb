variable1 = "a)"
variable2 = "b)"
variable3 = "c)"

  CONSTANTE_OPCION = "Opción de"

def menu (variable1,variable2,variable3,constante)
  puts "\tMENU"
  puts "-" * 20
  puts "#{variable1} #{constante} mostrar"
  puts "#{variable2} #{constante} borrar"
  puts "#{variable3} #{constante} actualizar"
end

menu variable1,variable2,variable3, CONSTANTE_OPCION
