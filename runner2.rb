class Runner
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
end

jon = Runner.new
jon.main_menu