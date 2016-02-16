class Direccion
  
  attr_accessor :mac_adress
  def initialize (mac_adress)
    @mac_adress = mac_adress
  end
  
  def to_s 
    "#{@mac_adress}"
  end
end