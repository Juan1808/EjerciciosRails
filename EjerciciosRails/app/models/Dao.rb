

class PersonaDao
  
    @@usuarios= []
 
  def self.insert persona
    @@usuario << persona
   end
   
   def self.list
     @@usuarios
   end
  
end
