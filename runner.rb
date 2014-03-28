class Runner
	def main_menu
		puts "World of CRM"
		puts "1. Add a contact"
	end
  
  def wrong_input
  	puts "Wrong input, enter again"
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