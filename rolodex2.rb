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
end
