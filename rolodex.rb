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

	def edit_contact(id, new_name)
		@contacts.each do |contact|
			if contact.id == id
				contact.name = new_name
			end
		end
	end

	def delete_contact(id)
    @contacts.delete_if {|x| x.id == id}
	end

	def create_note(id, note)
		@contacts.each do |contact|
			if contact.id == id
				contact.note = note
			end
		end
	end
end