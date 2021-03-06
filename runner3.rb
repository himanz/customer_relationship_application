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
		puts "(6) Find"
		puts "(7) Restore deleted contact"
		puts "(8) Sort Contacts"
		puts "(0) Exit"
		puts "Enter a number please"
	end

  # Runs the program
	def run
		@done = false
		while !@done
			main_menu
			user_selected = gets.chomp
			puts "\e[H\e[2J"
			user_option(user_selected)
		end
	end

  # determine which option user wants
	def user_option(user_selected)
		case user_selected
		when "0"
			@done = true
		when "1"
			add_new_contact
		when "2"
			modify_contact
		when "3"
			delete_contact
		when "4"
			display_all_contacts
		when "5"
			display_attribute
		when "6"
			find
		when "7"
			restore_deleted
		when "8"
			sort_contacts
		else
			puts "Please enter a correct input"
		end
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
		puts "(9) Go back to Main Menu"
		input = gets.chomp.to_i
		if input != 9
			puts "Enter the new information"
			new_info = gets.chomp
			puts "\e[H\e[2J"
	  	@rolodex.modify_contact(id, input, new_info)
	  	puts "New contact info"
	  	puts "-----------------"
	  	@rolodex.display_target(id)
    end 
  end

  # delete an contact
  def delete_contact
  	puts "\e[H\e[2J"
  	display_id_name
  	puts "Enter a user's ID to delete"
  	id = gets.chomp.to_i
  	@rolodex.delete_contact(id)
  	puts "User #{id} is deleted"
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
		puts "(9) Go back to Main Menu"
		input = gets.chomp.to_i
		puts "\e[H\e[2J"
    @rolodex.display_attribute(input)
    puts "------------------"
  end

  # Find by word
  def find
  	puts "\e[H\e[2J"
  	puts "(1) ID"
		puts "(2) First Name"
		puts "(3) Last Name"
		puts "(4) Email"
		puts "(5) Note"
		puts "(9) Go back to main menu"
		input = gets.chomp.to_i
		puts puts "\e[H\e[2J"
    if input == 1
    	puts "Enter an ID to find"
    	search = gets.chomp.to_i
    elsif input == 2
    	puts "Enter a First Name to find"
    	search = gets.chomp
    elsif input == 3
    	puts "Enter a Last Name to find"
    	search = gets.chomp
    elsif input == 4
    	puts "Enter an Email to find"
    	search = gets.chomp
    elsif input == 5
    	puts "Enter a single word in note to find"
    	search = gets.chomp
    elsif input == 9
    	return
    end
		@rolodex.find(input, search)
  end

  # Restore deleted contact
  def restore_deleted
    puts "\e[H\e[2J"
  	@rolodex.display_deleted
  	puts "------------------------"
  	puts "Enter a user's ID to restore"
  	id = gets.chomp.to_i
  	puts "\e[H\e[2J"
  	@rolodex.restore_deleted(id)
  	puts "------------------------"
  end

  # Sort contacts by attribute in descending order
  def sort_contacts
  	puts "\e[H\e[2J"
  	puts "Which attribute do you want to sort your contacts by"
  	puts "(1) ID"
		puts "(2) First Name"
		puts "(3) Last Name"
		puts "(4) Email"
		puts "(5) Note"
		puts "(9) Go back to Main Menu"
		input = gets.chomp.to_i
    puts "\e[H\e[2J"
    @rolodex.sort_contacts(input)
  end
end

puts "What is your name?"
user_name = gets.chomp
puts "\e[H\e[2J"
jon = Runner.new(user_name)
jon.run