class Rolodex
	def initialize
		@contacts = []
	end

	def create_contact(name)
		contact = Contact.new
		contact.name = name
		@contacts << contact
	end
end