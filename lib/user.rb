class User
  attr_accessor :name, :email
  
  def initialize(name,email)
    @name = name
    @email = email
    self
  end

end