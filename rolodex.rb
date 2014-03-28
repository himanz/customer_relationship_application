class Rolodex
	def initialize
		@contacts = []
	end

	def create_contact(name)
		contact = Contact.new
		contact.name = name
		@contacts << contact
	end

	def show_contacts
		@contacts.each {|contact| puts contact}
	end
end