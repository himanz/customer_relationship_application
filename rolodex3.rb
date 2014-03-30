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
  	@contacts.each {|contact| puts contact.to_s}
  end

  def display_id_name
  	@contacts.each {|contact| puts "ID: #{contact.id}\nFirst Name: #{contact.first_name}\nLast Name: #{contact.last_name}"}
  end

  def delete_contact(user_input)
    @contacts.delete_if {|contact| contact.id == user_input}
  end

end