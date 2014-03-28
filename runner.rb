require './rolodex'
require './contact'

class Runner
	def initialize
		@rolodex = Rolodex.new
	end
	def main_menu
		puts "World of CRM"
		puts "1. Add a contact"
		puts "2. See all contacts"
		puts "3. Edit a contact"
		puts "4. Delete a contact"
		puts "5. Create a note"
		puts "0. To Exit"
	end
  
  def wrong_input
  	puts "Wrong input, enter again"
  end

  def add_contact
  	puts "Enter Customer's Name"
  	name = gets.chomp
  	puts "Enter Customer's Address"
  	address = gets.chomp
  	puts "Enter Customer's Phone Number"
  	phone = gets.chomp
  	puts "Enter Customer's Email Address"
  	email = gets.chomp
  	@rolodex.create_contact(name, address, phone, emailx)
  end

  def show_contacts
  	puts "Showing all contacts"
  	@rolodex.show_contacts
  	puts "---------------------"
  end

  def edit_contact
  	puts "Enter contact's ID to edit"
  	id = gets.chomp.to_i
  	puts "Enter new contact name"
  	new_name = gets.chomp
  	@rolodex.edit_contact(id, new_name)
  end

  def delete_contact
  	puts "Enter contact's ID to delete"
  	id = gets.chomp.to_i
  	@rolodex.delete_contact(id)
  end

  def create_note
  	puts "Enter contact's ID to create note for"
  	id = gets.chomp.to_i
  	puts "Enter note for customer"
  	note = gets.chomp
  	@rolodex.create_note(id, note)
  end

	def run
		done = false
		while !done
			main_menu
			input = gets.chomp.to_i
			if input == 0
				done = true
			elsif input == 1
				add_contact
			elsif input == 2
	      show_contacts
	    elsif input == 3
	    	edit_contact
	    elsif input == 4
	    	delete_contact
	    elsif input == 5
	    	create_note
			else
				wrong_input
			end
		end
	end
end

running = Runner.new
running.run