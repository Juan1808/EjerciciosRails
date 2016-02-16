class Persona
  
  attr_accessor :usuario, :password
  
  def initialize usuario, password
    @usuario = usuario
    @password = password
  end
  
  def to_s
    "#{@usuario}, #{@password}"
  end
end
