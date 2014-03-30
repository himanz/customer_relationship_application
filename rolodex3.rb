class Rolodex
	  
	def initialize
		# store contacts
		@contacts = []
	end

  # create a contact
	def create_contact(first_name, last_name, email, note)
		contact = Contact.new
		contact.first_name = first_name
		contact.last_name = last_name
		contact.email = email
		contact.note = note
		@contacts << contact
		puts "New Contact Added"
		puts "First Name: #{contact.first_name}\nLast Name: #{contact.last_name}\nEmail: #{contact.email}\nNotes: #{contact.note}"
		puts "---------------"
	end

  # display all contacts
  def display_all_contacts
  	@contacts.each do |contact| 
  		puts contact.to_s
  		puts "-------------"
  	end
  end

  # display a target contact
  def display_target(id)
  	@contacts.each do |contact|
  		if contact.id == id
  			puts "ID: #{contact.id}\nFirst Name: #{contact.first_name}\nLast Name: #{contact.last_name}\nEmail: #{contact.email}\nNotes: #{contact.note}"
  			puts "-----------------------"
  		end
  	end
  end

  # display id and name of a contact
  def display_id_name
  	@contacts.each {|contact| puts "ID: #{contact.id} First Name: #{contact.first_name} Last Name: #{contact.last_name}"}
  end

  # delete a contact
  def delete_contact(user_input)
    @contacts.delete_if {|contact| contact.id == user_input}
  end

  # display a specific information about a contact
  def display_attribute(input)
  	@contacts.each do |contact|
  		if input == 1
  			puts contact.id
  		elsif input == 2
  			puts contact.first_name
  		elsif input == 3
  			puts contact.last_name
  		elsif input == 4
  			puts contact.email
  		elsif input == 5
  			puts contact.note
  		elsif input == 9
  			break
  		end
  	end
  end

  # edit an attribute of a contact
  def modify_contact(id, input, new_info)
  	@contacts.each do |contact|
  		if contact.id == id
  			if input == 1
  				contact.first_name = new_info
  			elsif input == 2
  				contact.last_name = new_info
  			elsif input == 3
  				contact.email = new_info
  			elsif input == 4
  				contact.note = new_info
  			elsif input == 9
  				break
  			end
  		end
  	end
  end

  # Find by word
  def find(input, search)
  	@contacts.each do |contact|
  		if input == 1
  			if contact.id == search
  				d = contact.id
  				display_target(id)
  			end
  		elsif input == 2
  			if contact.first_name == search
  				id = contact.id
  				display_target(id)
  			end
  		elsif input == 3
  			if contact.last_name == search
  				id = contact.id
  				display_target(id)
  			end
  		elsif input == 4
  			if contact.email == search
  				id = contact.id
  				display_target(id)
  			end
  		elsif input == 5
  			split = contact.note.split(" ")
  			split.each do |word|
  				if word == search
  				  id = contact.id
  				  display_target(id)
  				end
  			end
  		end
  	end
  end
end