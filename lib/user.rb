class User
  attr_accessor :name, :email
  
  def self.create(name,email)
    @name = name
    @email = email
  end

end