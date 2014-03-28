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
		puts "0. To Exit"
	end
  
  def wrong_input
  	puts "Wrong input, enter again"
  end

  def add_contact
  	puts "Enter Customer's Name"
  	name = gets.chomp
  	@rolodex.create_contact(name)
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
			else
				wrong_input
			end
		end
	end
end

running = Runner.new
running.run