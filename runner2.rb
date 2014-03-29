require './rolodex2'
require './contact2'

class Runner
	def initialize
		@rolodex = Rolodex.new
	end

	def main_menu
		puts "Please enter an input"
		puts "1. Add a customer"
		puts "2. Edit a customer"
		puts "3. Display all"
		puts "4. Display contact"
		puts "5. Display attribute"
		puts "6. Delete a customer"
		puts "0. Exit"
	end
  
  def add_user
  	puts "Please enter a first name"
  	first_name = gets.chomp
  	puts "Please enter a last name"
  	last_name = gets.chomp
  	puts "Please enter an email"
  	email = gets.chomp
  	puts "Please enter a note"
  	note = gets.chomp
    @rolodex.create_contact(first_name, last_name, email, note)
  end

  def edit_user
  	
  end

  def run
  	done = false
  	while !done
  		main_menu
  		input = gets.chomp.to_i
  		if input == 0
  			done = true
  		elsif input == 1
  			add_user
  		elsif input == 2
  			edit_user
  		end
  	end
  end
end

jon = Runner.new
jon.run