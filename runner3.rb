require './rolodex3'
require './contact3'

class Runner
	def initialize(name)
		puts "Welcome to CRM Bazaar #{name}!"
		@rolodex = Rolodex.new
		
	end

	def main_menu
		puts "(1) Add new contact"
		puts "(2) Modify an existing contact"
		puts "(3) Delete a contact"
		puts "(4) Display all the contacts"
		puts "(5) Display an attribute"
		puts "(0) Exit"
		puts "Enter a number please"
	end

	def run
		@done = false
		while !@done
			main_menu
			user_selected = gets.chomp.to_i
			user_option(user_selected)
		end
	end

	def user_option(user_selected)
		@done = true if user_selected == 0
		add_new_contact if user_selected == 1
		delete_contact if user_selected == 3
		display_all_contacts if user_selected == 4
	end

	def call_option(user_selected)
		#user_option(user_selected)
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
		@rolodex.create_contact(first_name, last_name, email, note)
	end

	def display_all_contacts
  	@rolodex.display_all_contacts
  end

  def delete_contact
  	puts "Enter a user's ID to delete"
  	id = gets.chomp.to_i
  	@rolodex.delete_contact(id)
  end
end

puts "What is your name?"
user_name = gets.chomp
jon = Runner.new(user_name)
jon.run