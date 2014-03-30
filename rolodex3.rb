class Rolodex
	  
	def initialize
		@contacts = []
	end
	def create_contact(first_name, last_name, email, note)
		contact = Contact.new
		contact.first_name = first_name
		contact.last_name = last_name
		contact.email = email
		contact.note = note
		@contacts << contact
	end

  def display_all_contacts
  	@contacts.each do |contact| 
  		puts contact.to_s
  		puts "-------------"
  	end
  end

  def display_id_name
  	@contacts.each {|contact| puts "ID: #{contact.id} First Name: #{contact.first_name} Last Name: #{contact.last_name}"}
  end

  def delete_contact(user_input)
    @contacts.delete_if {|contact| contact.id == user_input}
  end

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
  		end
  	end
  end

end