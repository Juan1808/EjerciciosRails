class RegistroController < ApplicationController
  
  def new
    #Registros.all nos devuelve todos los registros de la base de datos y los almacena en una
    #variable. Al  heredar de ActiveRecord, estarán automáticamente implementados sus attr_accessor
    #Los registros van todos almacenados en un Array
    @registros = Registro.all
    if @registros.size > 0
      puts @registros[0].titulo
      #Te devuelve el primer registro de esa tabla, el .last el último, además del campo que tú le indiques
      #en este caso el id, arriba el titulo
      puts @registros.first.id 
    end
  end
  
  def create
    titulo = params[:titulo]
    comentarios = params[:comentarios]
    parametrosHash ={}
    #La clave corresponde con el nombre de la columna de la base de datos
    parametrosHash[:titulo] = titulo
    parametrosHash[:comentarios] = comentarios
    #Le pasamos el hash creado antes
    @registro = Registro.create(parametrosHash)
    #Registro.create puede devolverme errores en caso de que haya habido algún error
    #al insertar
    if @registro.errors.any? then
      puts "BDERROR: Error"
    end
    @registros = Registro.all
    render "new"
  end
  
  def delete
    titulo = params[:titulo]
    #Llamas de nuevo a la tabla de la base de datos y aplicas un método propio
    #que borra sólo por id, el delete BORRA POR ID, también le podemos pasar un 
    #Array de Ids y también lo borra.
    #Registro.delete id
    #Podemos también borrar por otros campos, pero debemos hacer una búsqueda primero así:
    registrosEncontrados = Registro.where(:titulo => params[:titulo])
    #Esto nos devuelve una lista de coincidencias
    registro = registrosEncontrados[0]
    #Lo borramos con la siguiente sentencia
    registro.destroy
    @registros = Registro.all
    render "new"
  end
  
  def update_vista
    @registro = nil
    id = params[:id].to_i
    @registro = Registro.find id
  end
  
  def update
    id = params[:id].to_i
    titulo = params[:titulo]
    comentarios = params[:comentarios]
    
    hash = {}
    hash[:id] = id
    hash[:titulo] = titulo
    hash[:comentarios] = comentarios
    
    @registro = Registro.find id
    update = @registro.update_attributes(hash)
    #Update contiene un boolean de si ha ido bien o no
    #registro contiene el ActiveReccord con los posibles errores
    if update
      puts "Registro actualizado"
      @registros = Registro.all
      render "new"
    else
      puts "El registro no ha sido actualizado"
      render :update_vista
    end
    #@registro = Registro.all
   end
   
   def buscar_por_comentario
     comentarios = params[:comentarios]
     @registrosEncontrados = Registro.where(:comentarios => comentarios)
     render "busquedas"
     
   end
end
