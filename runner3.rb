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

  # Runs the program
	def run
		@done = false
		while !@done
			main_menu
			user_selected = gets.chomp.to_i
			user_option(user_selected)
		end
	end

  # determine which option user wants
	def user_option(user_selected)
		@done = true if user_selected == 0
		add_new_contact if user_selected == 1
		modify_contact if user_selected == 2
		delete_contact if user_selected == 3
		display_all_contacts if user_selected == 4
		display_attribute if user_selected == 5
	end
  
  # display all contacts
  def display_all_contacts
  	@rolodex.display_all_contacts
  end

  # display id and name
  def display_id_name
  	@rolodex.display_id_name
  end

  # add a contact
	def add_new_contact
		puts "\e[H\e[2J"
		puts "ADDING NEW CONTACT"
		puts "--------------------"
		print "Enter first name: "
		first_name = gets.chomp
		print "Enter last name: "
		last_name = gets.chomp
		print "Enter email address: "
		email = gets.chomp
		print "Enter a note: "
		note = gets.chomp
		puts "\e[H\e[2J"
		@rolodex.create_contact(first_name, last_name, email, note)
	end

  # modify an existing contact
  def modify_contact
  	puts "\e[H\e[2J"
  	puts "Enter ID of person you want to modify"
  	display_id_name
  	id = gets.chomp.to_i
  	puts "\e[H\e[2J"
  	puts "Which attribute do you want to edit"
		puts "(1) First Name"
		puts "(2) Last Name"
		puts "(3) Email"
		puts "(4) Note"
		puts "(0) Exit"		
		input = gets.chomp.to_i
		puts "Enter the new information"
		new_info = gets.chomp
		puts "\e[H\e[2J"
  	@rolodex.modify_contact(id, input, new_info)
  	puts "New contact info"
  	puts "-----------------"
  	@rolodex.display_target(id)
  	puts "-----------------"
  end

  # delete an contact
  def delete_contact
  	puts "\e[H\e[2J"
  	display_id_name
  	puts "------------------------"
  	puts "Enter a user's ID to delete"
  	id = gets.chomp.to_i
  	@rolodex.delete_contact(id)
  	puts "User #{id} is deleted"
  	puts "\n"
  	puts "\n"
  	puts "------------------------"
  end

  # display a saved attribute of a contact
  def display_attribute
    puts "\e[H\e[2J"
    puts "Which attribute do you want to display"
  	puts "(1) ID"
		puts "(2) First Name"
		puts "(3) Last Name"
		puts "(4) Email"
		puts "(5) Note"
		puts "(0) Exit"
		input = gets.chomp.to_i
		puts "\e[H\e[2J"
    @rolodex.display_attribute(input)
    puts "------------------"
  end
end

puts "What is your name?"
user_name = gets.chomp
puts "\e[H\e[2J"
jon = Runner.new(user_name)
jon.run