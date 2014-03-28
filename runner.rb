require './rolodex'
require './contact'

class Runner
	def initialize
		@rolodex = Rolodex.new
	end
	def main_menu
		puts "World of CRM"
		puts "1. Add a contact"
	end
  
  def wrong_input
  	puts "Wrong input, enter again"
  end

  def add_contact
  	puts "Enter Customer's Name"
  	name = gets.chomp
  	@rolodex.create_contact(name)
  end

	def run
		main_menu
		input = gets.chomp.to_i
		if input == 1
			add_contact
		else
			wrong_input
		end
	end
end

running = Runner.new
running.run