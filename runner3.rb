require './rolodex3'
require './contact3'

class Runner
	def print_main_menu
		puts "(1) Add new contact"
		puts "(2) Modify an existing contact"
		puts "(3) Delete a contact"
		puts "(4) Display all the contacts"
		puts "(5) Display an attribute"
		puts "(0) Exit"
		puts "Enter a number please"
	end

	def run
		print_main_menu
		user_selected = gets.chomp
		call_option(user_selected)
	end

	def user_option
		add_new_contact if user_selected == 1
	end

	def call_option(user_selected)
	end

	def add_new_contact
		print "Enter first name: "
		first_name = gets.chomp
		print "Enter last name: "
		last_name = gets.chomp
		print "Enter email address: "
		email = gets.chomp
		print "Enter a note: "
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
	end
end

jon = Runner.new
jon.run