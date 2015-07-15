require './lib/result_formatter.rb'
class User
	attr_accessor :email, :name
	def initialize
		
	end

	def user_info
		puts "Enter your Name:"
    @name = gets.strip
    puts "Enter your Email:"
    @email = gets.strip
	end
end